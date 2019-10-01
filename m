Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out-1.mail.amis.net ([212.18.32.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDMG-0002JJ-2F
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 08:18:11 +0000
Received: from in-1.mail.amis.net (in-1.mail.amis.net [212.18.32.15])
 by out-1.mail.amis.net (Postfix) with ESMTP id 3F36B81F90
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:04 +0200 (CEST)
Received: from in-1.mail.amis.net (localhost [127.0.0.1])
 by in-1.mail.amis.net (Postfix) with ESMTP id 3E455C948F
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:04 +0200 (CEST)
Received: from in-1.mail.amis.net ([127.0.0.1])
 by in-1.mail.amis.net (in-1.mail.amis.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 8VhbL__tWCM6 for <barebox@lists.infradead.org>;
 Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from smtp2.amis.net (smtp2.amis.net [IPv6:2001:15c0:ffff:f::44])
 by in-1.mail.amis.net (Postfix) with ESMTP id 51AF0C9482
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from localhost.localdomain (89-212-21-243.static.t-2.net
 [89.212.21.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp2.amis.net (Postfix) with ESMTPSA id 4242D80BCE
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
From: Primoz Fiser <primoz.fiser@norik.com>
Date: Tue,  1 Oct 2019 10:18:00 +0200
Message-Id: <20191001081800.19128-4-primoz.fiser@norik.com>
In-Reply-To: <20191001081800.19128-1-primoz.fiser@norik.com>
References: <20191001081800.19128-1-primoz.fiser@norik.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] usb: Change power-on / scanning timeout handling
To: barebox@lists.infradead.org

Change USB port scanning procedure and timeout handling in the
following ways:

1)
The power-on delay in usb_hub_power_on() is now reduced to a value of
max(100ms, "hub->desc.bPwrOn2PwrGood * 2"). The code does not wait
using mdelay, instead usb_hub_power_on() will wait before querying
the device in the scanning loop later. The total connection timeout for
this hub, which is (1 second + hub->desc.bPwrOn2PwrGood * 2) is
calculated and will be used in the following per-port scanning loop as
the timeout to detect active USB devices on this hub.

2)
Don't delay the minimum delay (for power to stabilize) in
usb_hub_power_on(). Instead skip querying these devices in the scanning
loop usb_scan_port() until the delay time is reached.

3)
The ports are now scanned in a quasi parallel way. The current code did
wait for each (unconnected) port to reach its timeout and only then
continue with the next port. This patch now changes this to scan all
ports of all USB hubs quasi simultaneously. For this, all ports are added
to a scanning list in usb_hub_configure_ports(). The list is later scanned
in usb_device_list_scan() until all ports are ready by either a) reaching
the connection timeout (calculated earlier), or by b) detecting a USB
device. This results in a faster USB scan time as the recursive scanning
of USB hubs connected to the hub that's currently being scanned will
start earlier.

4)
Ports with overcurrent detection will get scanned multiple times if OC
condition is detected (PORT_OVERCURRENT_MAX_SCAN_COUNT).

Without patch:

    $ time usb
    usb: USB: scanning bus for devices...
    usb: 17 USB Device(s) found
    time: 10344ms

With patch:

    $ time usb
    usb: USB: scanning bus for devices...
    usb: 17 USB Device(s) found
    time: 4529ms

Delta: ~6 seconds

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
---
 drivers/usb/core/hub.c | 171 ++++++++++++++++++++++++++++++++++++-----
 include/usb/usb.h      |   3 +
 2 files changed, 155 insertions(+), 19 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 7de6aedc4..8874775f1 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -33,6 +33,17 @@
 #define HUB_SHORT_RESET_TIME	20
 #define HUB_LONG_RESET_TIME	200
 
+#define PORT_OVERCURRENT_MAX_SCAN_COUNT         3
+
+struct usb_device_scan {
+	struct usb_device *dev;		/* USB hub device to scan */
+	struct usb_hub_device *hub;	/* USB hub struct */
+	int port;			/* USB port to scan */
+	struct list_head list;
+};
+
+static LIST_HEAD(usb_scan_list);
+
 static int usb_get_hub_descriptor(struct usb_device *dev, void *data, int size)
 {
 	return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
@@ -87,9 +98,6 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 		dev_dbg(&dev->dev, "port %d returns %lX\n", i + 1, dev->status);
 	}
 
-	/* Wait at least 2 * bPwrOn2PwrGood for PP to change */
-	mdelay(pgood_delay);
-
 	/* Enable power to the ports */
 	dev_dbg(&dev->dev, "enabling power on all ports\n");
 
@@ -98,8 +106,24 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 		dev_dbg(&dev->dev, "port %d returns %lX\n", i + 1, dev->status);
 	}
 
-	/* power on is encoded in 2ms increments -> times 2 for the actual delay */
-	mdelay(pgood_delay + 1000);
+	/*
+	 * Do a minimum delay of the larger value of 100ms or pgood_delay
+	 * so that the power can stabilize before the devices are queried
+	 */
+	hub->query_delay = get_time_ns() +
+		max(100, (int) pgood_delay) * MSECOND;
+
+	/*
+	 * Record the power-on timeout here. The max delay (timeout)
+	 * will be done based on this value in the USB port loop in
+	 * usb_hub_configure_ports() later.
+	 */
+	hub->connect_timeout = hub->query_delay + 1000 * MSECOND;
+
+	dev_dbg(&dev->dev, "devnum=%d poweron: query_delay=%d \
+			connect_timeout=%d\n",
+			dev->devnum, max(100, (int) pgood_delay),
+			max(100, (int) pgood_delay) + 1000);
 }
 
 #define MAX_TRIES 5
@@ -243,15 +267,33 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	device_detect(&usb->dev);
 }
 
-static int usb_hub_configure_port(struct usb_device *dev, int port)
+static int usb_scan_port(struct usb_device_scan *usb_scan)
 {
 	struct usb_port_status portsts;
 	unsigned short portstatus, portchange;
-	int connect_change = 0;
+	struct usb_device *dev;
+	struct usb_hub_device *hub;
+	int port;
+
+	dev = usb_scan->dev;
+	hub = usb_scan->hub;
+	port = usb_scan->port;
+
+	/*
+	 * Don't talk to the device before the query delay is expired.
+	 * This is needed for voltages to stabilize.
+	 */
+	if (get_time_ns() < hub->query_delay)
+		return 0;
 
 	if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
 		dev_dbg(&dev->dev, "get_port_status failed\n");
-		return -EIO;
+		if(get_time_ns() >= hub->connect_timeout) {
+			dev_dbg(&dev->dev, "port=%d: timeout\n", port + 1);
+			/* Remove this device from scanning list */
+			goto remove;
+		}
+		return 0;
 	}
 
 	portstatus = le16_to_cpu(portsts.wPortStatus);
@@ -259,10 +301,24 @@ static int usb_hub_configure_port(struct usb_device *dev, int port)
 	dev_dbg(&dev->dev, "Port %d Status %X Change %X\n",
 			port + 1, portstatus, portchange);
 
-	if (portchange & USB_PORT_STAT_C_CONNECTION) {
-		dev_dbg(&dev->dev, "port %d connection change\n", port + 1);
-		connect_change = 1;
+	if (!(portchange & USB_PORT_STAT_C_CONNECTION)) {
+		if(get_time_ns() >= hub->connect_timeout) {
+			dev_dbg(&dev->dev, "port=%d: timeout\n", port + 1);
+			/* Remove this device from scanning list */
+			goto remove;
+		}
+		return 0;
 	}
+
+	/* Test if the connection came up, and if not exit */
+	if(!(portstatus & USB_PORT_STAT_CONNECTION))
+		return 0;
+
+	/* A new USB device is ready at this point */
+	dev_dbg(&dev->dev, "port=%d: USB dev found\n", port + 1);
+
+	usb_hub_port_connect_change(dev, port);
+
 	if (portchange & USB_PORT_STAT_C_ENABLE) {
 		dev_dbg(&dev->dev, "port %d enable change, status %x\n",
 				port + 1, portstatus);
@@ -278,13 +334,10 @@ static int usb_hub_configure_port(struct usb_device *dev, int port)
 			dev_dbg(&dev->dev, "already running port %i "  \
 					"disabled by hub (EMI?), " \
 					"re-enabling...\n", port + 1);
-				connect_change = 1;
+				usb_hub_port_connect_change(dev, port);
 		}
 	}
 
-	if (connect_change)
-		usb_hub_port_connect_change(dev, port);
-
 	if (portstatus & USB_PORT_STAT_SUSPEND) {
 		dev_dbg(&dev->dev, "port %d suspend change\n", port + 1);
 		usb_clear_port_feature(dev, port + 1,
@@ -295,7 +348,21 @@ static int usb_hub_configure_port(struct usb_device *dev, int port)
 		dev_dbg(&dev->dev, "port %d over-current change\n", port + 1);
 		usb_clear_port_feature(dev, port + 1,
 					USB_PORT_FEAT_C_OVER_CURRENT);
-		usb_hub_power_on(dev->hub);
+		/* Only power-on this one port */
+		usb_set_port_feature(dev, port + 1, USB_PORT_FEAT_POWER);
+		hub->overcurrent_count[port]++;
+
+		/*
+		 * If the max-scan-count is not reached, return without removing
+		 * the device from scan-list. This will re-issue a new scan.
+		 */
+		if (hub->overcurrent_count[port] <=
+				PORT_OVERCURRENT_MAX_SCAN_COUNT)
+			return 0;
+
+		/* Otherwise the device will get removed */
+		dev_dbg(&dev->dev,"Port %d over-current occurred %d times\n",
+				port + 1, hub->overcurrent_count[port]);
 	}
 
 	if (portchange & USB_PORT_STAT_C_RESET) {
@@ -304,9 +371,54 @@ static int usb_hub_configure_port(struct usb_device *dev, int port)
 					USB_PORT_FEAT_C_RESET);
 	}
 
+remove:
+	/*
+	 * We're done with this device, so let's remove this device from
+	 * scanning list
+	 */
+	list_del(&usb_scan->list);
+	free(usb_scan);
+
 	return 0;
 }
 
+static int usb_device_list_scan(void)
+{
+	struct usb_device_scan *usb_scan;
+	struct usb_device_scan *tmp;
+	static int running;
+	int ret = 0;
+
+	/* Only run this loop once for each controller */
+	if (running)
+		return 0;
+
+	running = 1;
+
+	while (1) {
+		/* We're done, once the list is empty again */
+		if (list_empty(&usb_scan_list))
+			goto out;
+
+		list_for_each_entry_safe(usb_scan, tmp, &usb_scan_list, list) {
+			/* Scan this port */
+			ret = usb_scan_port(usb_scan);
+			if (ret)
+				goto out;
+		}
+	}
+
+out:
+	/*
+	 * This USB controller has finished scanning all its connected
+	 * USB devices. Set "running" back to 0, so that other USB controllers
+	 * will scan their devices too.
+	 */
+	running = 0;
+
+	return ret;
+}
+
 static int usb_hub_configure(struct usb_device *dev)
 {
 	unsigned char buffer[USB_BUFSIZ], *bitmap;
@@ -431,12 +543,33 @@ static int usb_hub_configure(struct usb_device *dev)
 
 static int usb_hub_configure_ports(struct usb_device *dev)
 {
+	struct usb_device_scan *usb_scan;
 	int i;
 
-	for (i = 0; i < dev->maxchild; i++)
-		usb_hub_configure_port(dev, i);
+	/*
+	 * Only add the connected USB devices, including potential hubs,
+	 * to a scanning list. This list will get scanned and devices that
+	 * are detected (either via port connected or via port timeout)
+	 * will get removed from this list. Scanning of the devices on this
+	 * list will continue until all devices are removed.
+	 */
+	for (i = 0; i < dev->maxchild; i++) {
+		usb_scan = calloc(1, sizeof(*usb_scan));
+		if (!usb_scan) {
+			dev_err(&dev->dev, "Can't allocate memory for \
+					USB device scanning!\n");
+			return -ENOMEM;
+		}
+		usb_scan->dev = dev;
+		usb_scan->hub = dev->hub;
+		usb_scan->port = i;
+		list_add_tail(&usb_scan->list, &usb_scan_list);
+	}
 
-	return 0;
+	/*
+	 * And now call the scanning code which loops over the generated list
+	 */
+	return usb_device_list_scan();
 }
 
 static int usb_hub_detect(struct device_d *dev)
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 4698308df..0045608d6 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -313,6 +313,9 @@ void usb_rescan(void);
 struct usb_hub_device {
 	struct usb_device *pusb_dev;
 	struct usb_hub_descriptor desc;
+	uint64_t connect_timeout; /* Device connection timeout in ns */
+	uint64_t query_delay; /* Device query delay in ns */
+	int overcurrent_count[USB_MAXCHILDREN]; /* Over-current counter */
 };
 
 /**
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
