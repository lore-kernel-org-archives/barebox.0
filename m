Delivery-date: Mon, 09 Dec 2024 15:28:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKeko-00601a-1j
	for lore@lore.pengutronix.de;
	Mon, 09 Dec 2024 15:28:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKeko-0004bS-Fo
	for lore@pengutronix.de; Mon, 09 Dec 2024 15:28:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9W0bAc4nXEGQMyaHM2SJ8c1CTVUO53kbcIIeSfAnV9M=; b=2aWXYKJITTh7Ld6v7eTx83ICpO
	pvQ7o9GXPhuJcpN54+yG79zKyQQ32F0+XuUfGDi9Z97YN8bwOE2cno9ArmYq4H4UFx9MLBaGiFO79
	wHmmG5a6gZ+n2+kXgS1W6inxd8B4Ed/QZomKmOMFaUEcriIALczLlldxNLH+dP5GGKlv5j/bUDosY
	U2/oIrywjt0HW8aX42QregVencRb9QCGfnpVUGSkbRhDKSuBQ1IvsNbax8yfwga57CspAnflYq9Q+
	kIs3wQfUpITIJIokfYr+P5vHcI5na9+d7c27xM6b8NESA7sZC2PrwzSDrimxajiP8rPDeRpFwcmlF
	euf1/Odw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKekC-00000008CZy-33Ux;
	Mon, 09 Dec 2024 14:28:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKekA-00000008CXQ-12BU
	for barebox@lists.infradead.org;
	Mon, 09 Dec 2024 14:28:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek8-0004MT-1b; Mon, 09 Dec 2024 15:28:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek7-002Wto-01;
	Mon, 09 Dec 2024 15:28:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek7-005Elf-2I;
	Mon, 09 Dec 2024 15:28:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 09 Dec 2024 15:28:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-ext-dt-handoff-v1-1-e61052d5d437@pengutronix.de>
References: <20241209-ext-dt-handoff-v1-0-e61052d5d437@pengutronix.de>
In-Reply-To: <20241209-ext-dt-handoff-v1-0-e61052d5d437@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733754491; l=1583;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=wr/I1z0kuOpRJEoutZ+7IsSJFAHfWIm+z0GaAapIbY4=;
 b=c3O9lqUtI6aIBbB/jDaxlqH4kQXWIyRoApQkyLYnekYBeRj9TcFU1WVr7ETwVCrI1rtyan2mZ
 w8WqP8guFyYDUx42FmbfVxrN6tsc2hM6IpWAZAhcp6iq+ySD3Z5wCOB
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_062814_286216_F956826C 
X-CRM114-Status: GOOD (  14.25  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] fdt: Add function to check if a pointer contains a fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When barebox is started 2nd stage from another barebox or U-Boot it
usually gets a device tree passed in a register. We can't rely on this
though, so before assuming a pointer has a device tree we need to
perform some basic checks for being in a certain range, is sufficiently
aligned and actually contains a device tree.
This adds a function performing these checks.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/compressed-dtb.h | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/include/compressed-dtb.h b/include/compressed-dtb.h
index 3359d1ee11..cc5fbb2769 100644
--- a/include/compressed-dtb.h
+++ b/include/compressed-dtb.h
@@ -3,6 +3,7 @@
 #define COMPRESSED_DTB_H_
 
 #include <linux/types.h>
+#include <linux/sizes.h>
 #include <asm/unaligned.h>
 
 struct barebox_boarddata_compressed_dtb {
@@ -31,4 +32,27 @@ static inline bool blob_is_fdt(const void *blob)
 	return get_unaligned_be32(blob) == FDT_MAGIC;
 }
 
+static inline bool blob_is_valid_fdt_ptr(const void *blob, unsigned long mem_start,
+					 unsigned long mem_size, unsigned int *fdt_size)
+{
+	unsigned long dtb = (unsigned long)blob;
+	unsigned int size;
+
+	if (!IS_ALIGNED(dtb, 4))
+		return false;
+	if (dtb < mem_start || dtb >= mem_start + mem_size)
+		return false;
+	if (!blob_is_fdt(blob))
+		return false;
+
+	size = be32_to_cpup(blob + 4);
+	if (size > SZ_2M || dtb + size > mem_start + mem_size)
+		return false;
+
+	if (fdt_size)
+		*fdt_size = size;
+
+	return true;
+}
+
 #endif

-- 
2.39.5



