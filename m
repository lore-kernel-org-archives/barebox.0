Delivery-date: Tue, 20 May 2025 14:41:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHMI9-000pqJ-08
	for lore@lore.pengutronix.de;
	Tue, 20 May 2025 14:41:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHMI8-0003Po-Ge
	for lore@pengutronix.de; Tue, 20 May 2025 14:41:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sd1B+KGBjEbon7B8wR4uinJ64A4H25DXcguQ1W4Y3xw=; b=1EbMyTnPYgEZYCXcpI5JtXmIK6
	wyF5q38NOerk/+dQa2zXNgBKAtdnsqs4/xUY5B1z6yg7IHryokrRK7dbl1PQuLUxblylwee6V8UVE
	9oz5R1DNJ2/wOU89FIoJ2BiKgIqqRg3Z/o82x1qY6Hk0KBbkjpJcmYn5uB0hTs35Jd/HNvvfpBabk
	Mpeoyr1dTirBRU7pcmzGEuWQAEIiBsVReG9UsW+YTtUgles1L/HJcSkWDuFszW4ptc1BwApgE5KYL
	lmyyZQZ6BVamgVevZgwVpo31HNU1KAf6k1BxQXBddnnauJQhyo5WObXxAjhSt9wCiDHWj/EPQyyV0
	KKCDUIRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHMHe-0000000CtcR-0wjm;
	Tue, 20 May 2025 12:41:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHMHb-0000000Ctbg-0cRN
	for barebox@lists.infradead.org;
	Tue, 20 May 2025 12:41:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHMHZ-0003Hv-Lm; Tue, 20 May 2025 14:41:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHMHZ-000Pb7-1a;
	Tue, 20 May 2025 14:41:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHMHZ-000JCR-2o;
	Tue, 20 May 2025 14:41:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robert Schwebel <rsc@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 May 2025 14:41:18 +0200
Message-Id: <20250520124118.73783-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_054123_185339_12E1CFF0 
X-CRM114-Status: GOOD (  13.21  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] of: partition: overwrite arm,arm-firmware-suite unless donttouch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox doesn't support arm,arm-firmware-suite partitioning and if the
barebox device tree uses a fixed-partitions binding for a flash, it will
overwrite a kernel partitions node that uses arm,arm-firmware-suite with
the fixed partition binding.

This broke in the default case with the addition of
global.of_partition_binding=adaptive, because the check for a compatible
was successful, but the compatible was neither fixed-partitions or
barebox,fixed-partitions.

Fix this by explicitly checking the compatibles we expect.
This fixes a failed of_get_reproducible_name in of_state_fixup, which
broke barebox-state usage on Vexpress in DistroKit.

Fixes: f0d91d7ba6cb ("of: partition: add Linux CONFIG_OF_PARTITION-compatible adaptive fixup mode")
Reported-by: Robert Schwebel <rsc@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/partition.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index a0890bfcdef0..7f5a526ac88f 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -206,8 +206,8 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 		partnode = np;
 		break;
 	case MTD_OF_BINDING_ADAPTIVE:
-		/* If there's already a compatible property, leave it as-is */
-		if (of_property_present(partnode, "compatible"))
+		/* If there's already a fixed-partitions node, leave compatible as-is */
+		if (of_node_is_fixed_partitions(partnode))
 			break;
 		if (!cdev->mtd)
 			compat = "barebox,fixed-partitions";
-- 
2.39.5



