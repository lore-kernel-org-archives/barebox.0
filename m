Delivery-date: Sun, 06 Jun 2021 14:26:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lprr1-0003AV-9A
	for lore@lore.pengutronix.de; Sun, 06 Jun 2021 14:26:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lprqw-0005jP-PJ
	for lore@pengutronix.de; Sun, 06 Jun 2021 14:26:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pv1Rfr0Ymq+WiSzMJG0oAn8rYGIOM0mMc8piUyG3V4o=; b=BVMAdqZ1YT8CnY
	9sH4AEQvN0eU1m3NEz9TuDklYJXYSrQxudbMDOa96i0rxJIPZD/yrQLQgLQk1bZpuKtBG/TdHUmbz
	6R5IxCPlQMj0NWhjGWniFgz6qDe8poM1asNMUeV48pwpr1KjwaRIL8ajeks6lxAdTB58z2AW5AT7V
	yEPMFz94rVsvsxqgna7SWWOdYN5DdEDxeWgeUavDv32QX+DM9n9exhqbyckb91D2TFLHsoUoRUasq
	7qDOMvVW/+N006YiSpfuFoXX/WrbI8lo8gvFWj977bVDEln7YsXMNUYg5wkcNtl95yvN9GodREvad
	X6bkkZj1TCEh9R0/8mVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lprpB-000GjF-Ck; Sun, 06 Jun 2021 12:24:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lprp2-000Gh5-Br
 for barebox@lists.infradead.org; Sun, 06 Jun 2021 12:24:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lproz-0005OD-8n; Sun, 06 Jun 2021 14:24:05 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lproy-0005r3-VJ; Sun, 06 Jun 2021 14:24:04 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sun,  6 Jun 2021 14:24:00 +0200
Message-Id: <20210606122400.22418-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210606122400.22418-1-o.rempel@pengutronix.de>
References: <20210606122400.22418-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210606_052408_436789_E478B28A 
X-CRM114-Status: GOOD (  12.63  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/2] devinfo: print only devices with errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make use of device state flags and print only devices with errors.
The result will look like this:
barebox@RIoTboard i.MX6S:/ devinfo -e
`-- 2188000.ethernet@2188000.of <-- (error!)
   `-- miibus0
      `-- mdio0-phy04
         `-- 0x00000000-0x0000003f (  64 Bytes): /dev/mdio0-phy04
   `-- eth0

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/devinfo.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 2e2e48e42c..af57cac522 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -5,6 +5,7 @@
 #include <common.h>
 #include <complete.h>
 #include <driver.h>
+#include <getopt.h>
 
 static int do_devinfo_subtree(struct device_d *dev, int depth)
 {
@@ -16,6 +17,9 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 		printf("   ");
 
 	printf("`-- %s", dev_name(dev));
+	if (dev_have_err(dev))
+		printf(" <-- (error!)");
+
 	if (!list_empty(&dev->cdevs)) {
 		printf("\n");
 		list_for_each_entry(cdev, &dev->cdevs, devices_list) {
@@ -43,6 +47,15 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 	return 0;
 }
 
+static int do_devinfo_err(void)
+{
+	struct device_d *dev;
+
+	for_each_device(dev)
+		if (dev_have_err(dev))
+			do_devinfo_subtree(dev, 0);
+	return 0;
+}
 
 static int do_devinfo(int argc, char *argv[])
 {
@@ -58,6 +71,23 @@ static int do_devinfo(int argc, char *argv[])
 				do_devinfo_subtree(dev, 0);
 		}
 	} else {
+		bool dev_err = false;
+		int opt;
+
+		while ((opt = getopt(argc, argv, "e")) > 0) {
+			switch (opt) {
+			case 'e':
+				dev_err = true;
+				break;
+			default:
+				return COMMAND_ERROR_USAGE;
+			}
+		}
+
+		if (dev_err) {
+			return do_devinfo_err();
+		}
+
 		dev = get_device_by_name(argv[1]);
 		if (!dev)
 			return -ENODEV;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

