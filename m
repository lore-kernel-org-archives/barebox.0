Delivery-date: Thu, 05 May 2022 10:04:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWT4-002UVh-03
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:04:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWT0-00083t-Af
	for lore@pengutronix.de; Thu, 05 May 2022 10:04:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+m5RSXrCYR8bzt+6ozARm9Y7iO1a3adAa27/FAjt6+4=; b=tUAB3slEIeaIHm
	oKUrn/cbPPKd+EKdDl9dOmadBc7/lhRyst5Bn2DfGKSTg1cFlGXdmYdKnf7NzbIVb2Tcvi0yRohRA
	tfWZMhM0QriK124e26ZbzhUgYYdjE4+mKnlfLW3j2/O6wkXMwek/7/g4a0VFsFrHhC5+YBaSN+jlb
	f7KA5qjiyW5WVdpp2hEVdpKEm6WN1fitQte5U/C6Tb+zGQ8P6L8OmGokP4gJgG64pmypEhnOnbqCq
	i1t5oT9mtqc9hvYJG1qp2a24u/dpf0LvQo8gyKy9OhNLZJPRC5Ai58wP+ckhqi1w2i5x2qXpIMqXj
	lmNjw6zwKW0FqCXGyogQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWRg-00EX1D-Ah; Thu, 05 May 2022 08:02:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWR2-00EWbX-Th
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQy-0006sr-In; Thu, 05 May 2022 10:02:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQy-000TO8-Bu; Thu, 05 May 2022 10:01:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004hbE-Gj; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 May 2022 10:01:50 +0200
Message-Id: <20220505080152.1068424-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
References: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010205_141434_3DE44E4E 
X-CRM114-Status: GOOD (  12.74  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 13/15] ARM: rpi: add heuristic for skipping detection of SDIO
 card
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mci0 is normally the WiFi while mci1 is the SD-Card on the Raspberry Pi
4. The proper way would be to use aliases, but as we accept device trees
from outside, we can apply a simple heuristic to disfavor the SDIO
controller: The SDIO controller tends to have a child node.

If this is not the case, use mci0 as before. As probing the SDIO in
barebox leads to many annoying error messages, disable its detection, so
device_detect_all done by ifup -a (which doesn't find the Ethernet
controller yet), doesn't spam the console.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 0db03098e564..efa3157d61b9 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -230,13 +230,31 @@ static int rpi_mem_init(void)
 }
 mem_initcall(rpi_mem_init);
 
+static bool mci_hwdev_has_child(struct device_d *dev)
+{
+	return dev && dev->parent && dev->parent->device_node &&
+		of_get_next_available_child(dev->parent->device_node, NULL);
+}
+
 static int rpi_env_init(void)
 {
 	struct stat s;
 	const char *diskdev = "/dev/disk0.0";
-	int ret;
+	int ret = -ENODEV;
 
-	device_detect_by_name("mci0");
+	struct device_d *mci0dev = get_device_by_name("mci0");
+	if (mci0dev) {
+		struct device_d *mci1dev = get_device_by_name("mci1");
+
+		if (mci_hwdev_has_child(mci0dev) && mci1dev &&
+		    !mci_hwdev_has_child(mci1dev))
+			ret = device_detect(mci1dev);
+
+		if (ret)
+			device_detect(mci0dev);
+		else
+			mci0dev->detect = mci0dev->parent->detect = NULL;
+	}
 
 	ret = stat(diskdev, &s);
 	if (ret) {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

