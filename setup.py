#!/usr/bin/env python
from setuptools import find_packages, setup

setup(
    name="wish-yamlconf",
    version="0.0.1",
    description="wish-yamlconf is a enhanced yaml parser for configs loading",
    packages=find_packages("src"),
    package_dir={"": "src"},
    include_package_data=True,
    install_requires=[
        "PyYAML<=5.4 ; python_version<'3'",
        "PyYAML==6.0 ; python_version>'3'"
    ],
    extras_require={
        'dev': [
          "pytest",
          "mock==4.0.3"
        ]
    },
    zip_safe=True,
    classifiers=[
        "Programming Language :: Python :: 2.7",
        "Programming Language :: Python :: 3",
    ]
)
