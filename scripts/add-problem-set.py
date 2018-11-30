import sys
import json

# This script will be used to add he problem to the global contest and problem dashbard
problem_set_json = "data/Problems.json"
problem_set_readme_template = "data/Problems.md"
probem_set_readme = "docs/contests/README.md"

# Constants for the HTML elements.
TABLE = "<table>{rows}</table>"
TR = "<tr>{cols}</tr>"
TD = "<td>{data}</td>"
TH = "<th>{data}</th>"
ANCHOR = "<a href=\"{href}\">{data}</a>"

PROBLEM_URL = "https://open-competitive-coding.github.io/problem-set/{contest_id}/{problem_id}/"
STANDINGS_URL = "https://open-competitive-coding.github.io/website/Contest-{contest_id}"

def add_to_json(problem_id) :
    contest_name, problem_name = problem_id.split("-")
    content = {}
    with open(problem_set_json, "r") as problem_set_json_file :
        content = json.load(problem_set_json_file)
        if contest_name in content :
            if problem_name in content[contest_name] :
                pass
            else :
                content[contest_name].append(problem_name)
        else :
            content[contest_name] = [problem_name]
    with open(problem_set_json, "w") as problem_set_json_file :
        json.dump(content, problem_set_json_file, indent=4)

    return content

def convert_to_readme(content) :
    with open(problem_set_readme_template, "r") as problem_set_readme_template_file :
        template = problem_set_readme_template_file.read()
        table = ""
        cols = ""
        cols += TH.format(data="Contest")
        cols += TH.format(data="Problems")
        cols += TH.format(data="Standings")

        table_header_row = TR.format(cols=cols)

        table_body = ""
        for contest in content :
            cols = ""
            cols += TD.format(data=contest)
            problems = ""
            for problem in content[contest] :
                problems += ANCHOR.format(href=PROBLEM_URL.format(contest_id=contest, problem_id=problem), data=problem) + " , "
            problems = problems[:-2]
            cols += TD.format(data=problems)
            statndings_url = ANCHOR.format(href=STANDINGS_URL.format(contest_id=contest), data="Scoreboard")
            cols += TD.format(data=statndings_url)
            table_body += TR.format(cols=cols)

        table = TABLE.format(rows=table_header_row+table_body)
        template = template.format(contests_table=table)
        with open(probem_set_readme, "w") as problem_set_readme_file :
            problem_set_readme_file.write(template)


if __name__ == "__main__" :
    content = add_to_json(sys.argv[1])
    convert_to_readme(content)
