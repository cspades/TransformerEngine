FROM gitlab-master.nvidia.com:5005/dl/dgx/pytorch:main-py3-devel

RUN git clone --recursive https://github.com/NVIDIA/TransformerEngine.git && \
    pushd TransformerEngine && \
    git submodule update --init --recursive && \
    pip install --break-system-packages cmake pybind11 nvidia-mathdx && \
    pip install --no-build-isolation --break-system-packages . && \
    popd