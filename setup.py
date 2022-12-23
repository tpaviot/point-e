from setuptools import setup

setup(
    name="point-e",
    packages=[
        "point_e",
        "point_e.diffusion",
        "point_e.evals",
        "point_e.models",
        "point_e.util",
    ],
    install_requires=[
        "filelock",
        "Pillow",
        "torch",
        "fire",
        "humanize",
        "requests",
        "tqdm",
        "matplotlib",
        "scikit-image==0.19.3",
        "scipy",
        "numpy",
        "clip @ git+https://github.com/openai/CLIP.git",
    ],
    author="OpenAI",
)
