## Background

Compared to otter-v1, app with otter-v2 should 

- have config files stored in it’s repo.
- Should have config loading logic if otter is not enabled. (because otter is not provided locally, be transparent)

So otter-v2 add a `common config class` to meet the requirement.

It's not only for otter-v2, but can be a standard way of loading config to other micro-services.

## How to use

- app use a `config.yaml` as template, such as
```yaml
FOO:
    - BAR: ${INT:1}
    - BAR: ${FLOAT:1.1}
    - BAR: ${BOOL:True}
```

- app start with env
`INT=2 BOOL=False python app.py`

- app load
```python
setup_yaml_parser()
with open("config.yaml", "rb") as yaml_str:
      config = yaml.safe_load(yaml_str)

# config => {FOO: [{BAR: 2}, {BAR: 1.1}, {BAR: False}]}
```


## All cases
Check [`test_yaml_parser.py::TestConfigEnvironmentVariables`](test/test_yaml_parser.py)


## TODO
Translate the code to golang.