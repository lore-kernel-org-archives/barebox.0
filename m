Delivery-date: Thu, 04 Apr 2024 13:10:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsKyn-009VDS-2u
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 13:10:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsKyn-0005po-8p
	for lore@pengutronix.de; Thu, 04 Apr 2024 13:10:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VXBoayqr9y9YIT9d3HKWxCFJ5thywckzeSkp0SQRCKY=; b=Nw0vwoCurSRycD
	HAnRmpASWv2Ois30f3UTkuHL4SJzVkhBkJX7mwXyVhsHu2CwRo4H30iD9L8cgT4GNRpdXezkInEF+
	NIbSSXJx2OSIwKpKN3KPQ49e3CBPH4UnOW0mKLTP0+h2D6rOiv1LRajCohSkYIXxzPyYRjSm7bAfh
	gsKNmEwFzz0uWYiww0+nMuXXCFCpNdIVChfjErzceFojXX2zRnDrI/Vv44qJ895zcsUFW0GQS6jow
	ialeYybFxSsBY50zXXe8CbD3nja/9oKxLEsSv7Lpqj7eIY/Jwwp4ASmqTNxPt9q+Vyim0bVZJrM2P
	IG4Wk2Y+NBD899FlFJhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsKyF-00000002K8p-05PG;
	Thu, 04 Apr 2024 11:09:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsKyB-00000002K7m-2Hlp
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 11:09:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsKy9-0005Cj-RA; Thu, 04 Apr 2024 13:09:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsKy9-00ALvH-CO; Thu, 04 Apr 2024 13:09:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsKy9-008Bt4-0n;
	Thu, 04 Apr 2024 13:09:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Apr 2024 13:09:18 +0200
Message-Id: <20240404110918.1951843-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_040924_317962_79A4F289 
X-CRM114-Status: GOOD (  13.01  )
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
Cc: David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: rk-usb-loader.c: Read input file after connecting USB device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

This helps in case rk-usb-loader is run in an endless loop waiting for
devices to get connected while the binary file is being modified (i.e.
barebox is being worked on). It avoids the case that an older version of
barebox is being uploaded than what is available a the time of USB
connection.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rk-usb-loader.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
index 9c2367ed28..62df7331fb 100644
--- a/scripts/rk-usb-loader.c
+++ b/scripts/rk-usb-loader.c
@@ -212,18 +212,6 @@ static int upload_image(const char *filename)
 	int i, n_files;
 	size_t size;
 
-	buf = read_file(filename, &size);
-	if (!buf)
-		exit(1);
-
-	hdr = buf;
-
-	if (hdr->magic != NEWIDB_MAGIC) {
-		log_error("%s has invalid magic 0x%08x ( != 0x%08x )\n", filename,
-			  hdr->magic, NEWIDB_MAGIC);
-		exit(1);
-	}
-
 	ret = libusb_init(&ctx);
 	if (ret < 0) {
 		log_error("failed to initialize libusb context: %s\n",
@@ -237,6 +225,18 @@ static int upload_image(const char *filename)
 		return 1;
 	}
 
+	buf = read_file(filename, &size);
+	if (!buf)
+		exit(1);
+
+	hdr = buf;
+
+	if (hdr->magic != NEWIDB_MAGIC) {
+		log_error("%s has invalid magic 0x%08x ( != 0x%08x )\n", filename,
+			  hdr->magic, NEWIDB_MAGIC);
+		exit(1);
+	}
+
 	n_files = hdr->n_files >> 16;
 
 	if (n_files > 2) {
-- 
2.39.2



