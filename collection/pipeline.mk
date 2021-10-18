NATIONAL_PARK_DATASET=$(DATASET_DIR)national-park.csv
NATIONAL_PARK_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)national-park/a53c37ec4b8758235661aa5a5318454474f611f548fca208027e0d99dd22932b.csv\
    $(TRANSFORMED_DIR)national-park/bb28d40c7da81971538ed1889f4d1c53aad2cc5637903a69005b22c4ff41245d.csv

$(TRANSFORMED_DIR)national-park/a53c37ec4b8758235661aa5a5318454474f611f548fca208027e0d99dd22932b.csv: collection/resource/a53c37ec4b8758235661aa5a5318454474f611f548fca208027e0d99dd22932b
	$(run-pipeline)

$(TRANSFORMED_DIR)national-park/bb28d40c7da81971538ed1889f4d1c53aad2cc5637903a69005b22c4ff41245d.csv: collection/resource/bb28d40c7da81971538ed1889f4d1c53aad2cc5637903a69005b22c4ff41245d
	$(run-pipeline)

$(NATIONAL_PARK_DATASET): $(NATIONAL_PARK_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(NATIONAL_PARK_TRANSFORMED_FILES)

dataset:: $(NATIONAL_PARK_DATASET)
