FROM deskor/xrdp

RUN apt-get update \
	&& apt-get install -yq chromium

# don't want to run priveleged / with more rights.
CMD ["chromium", "--no-sandbox", "--start-maximized", "--user-data-dir", "."]
