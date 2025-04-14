Delivery-date: Mon, 14 Apr 2025 08:32:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DND-000Wzc-2z
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:32:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DND-0001QB-8s
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:32:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8hJxUWWw3M8MkSBFIGGQKJd7Kw4iJMcPqya/tnEQvK0=; b=drxt6lswEH4JBrQeorSn4Ezybk
	d+u1E8V4jqy5ef7U8W98O8AHpLObBfH60i8K08qnratbOU6jVPVuSEdJyngaSmJi7kW4yr1y/HGPT
	UZ3AtcFZgqK7lHfvN3AyCdDv9HdxtA9bpbTzvmC2yoE4bV8WUF2fNmubL4g5rDzu76YvKKrGdcM5E
	Ohwe5gIMRfajxekf0z/wU0SAvKygGBy2dQ+ZzoJMu/0rsCBblP969H1Zl41I33eZkULELskmbKdTG
	uyzZMpBfFOSiicDVGsO8eGnZtWO1R6lHrNq5XuSomiUoYgDjqRWtdKwAVQn5y5LPd+PX3DmUXhJuO
	NHrrAjJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMl-00000000o0P-3W1t;
	Mon, 14 Apr 2025 06:32:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMR-00000000nsP-0IMX
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:32:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-0000l7-Pv; Mon, 14 Apr 2025 08:31:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-000Chf-1y;
	Mon, 14 Apr 2025 08:31:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-1e;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:39 +0200
Message-Id: <20250414063152.2736649-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233203_116108_F4214EC5 
X-CRM114-Status: GOOD (  12.68  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/18] blspec: support GPT XBOOTLDR partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we matched the XBOOTLDR partition only on MBR-partitioned media.
Let's do the same for GPT too.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index cf9f973acd21..adc3fb2e2ea2 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -16,6 +16,7 @@
 #include <linux/stat.h>
 #include <linux/list.h>
 #include <linux/err.h>
+#include <uapi/spec/dps.h>
 #include <boot.h>
 
 #include <bootscan.h>
@@ -508,22 +509,22 @@ static int blspec_scan_disk(struct bootscanner *scanner,
 		struct cdev *match = NULL;
 
 		/*
-		 * If the OS is installed on a disk with MBR disk label, and a
-		 * partition with the MBR type id of 0xEA already exists it
-		 * should be used as $BOOT
+		 * If the OS is installed on a disk with:
+		 *
+		 * - MBR disk label, and a partition with the MBR type id of 0xEA
+		 *   already exists
+		 *
+		 * - GPT disk label, and a partition with the GPT type GUID of
+		 *   bc13c2ff-59e6-4262-a352-b275fd6f7172 already exists
+		 *
+		 * it should be used as $BOOT
 		 */
 		if (cdev_is_mbr_partitioned(cdev)) {
 			if (partcdev->dos_partition_type == 0xea)
 				match = partcdev;
-		} else {
-			/*
-			 * If the OS is installed on a disk with GPT disk label, and a
-			 * partition with the GPT type GUID of
-			 * bc13c2ff-59e6-4262-a352-b275fd6f7172 already exists, it
-			 * should be used as $BOOT.
-			 *
-			 * Not yet implemented
-			 */
+		} else if (cdev_is_gpt_partitioned(cdev)) {
+			if (guid_equal(&partcdev->typeuuid, &SD_GPT_XBOOTLDR))
+				match = partcdev;
 		}
 
 		if (!match)
-- 
2.39.5



