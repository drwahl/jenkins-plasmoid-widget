#!/bin/bash

widget_name="jenkins-job-status"

plasmapkg2 --install plasmoid plasma5

hash plasmoidviewer 2> /dev/null
if [[ $? -eq 0 ]]; then
	plasmoidviewer "org.kde.${widget_name}"
else
	echo "WARN: 'plasmoidviewer' not installed."
	echo "Either install plasmoidviewer (apt-get install plasma-sdk) or manually set the widget ${widget_name} on your desktop"
fi

echo "Once you are done testing, remove this plasmoid with:"
echo "plasmapkg2 -r org.kde.${widget_name}"
