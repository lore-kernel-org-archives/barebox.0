Delivery-date: Tue, 11 Mar 2025 13:42:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw7-00Cg0G-1a
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:42:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw3-0006II-W5
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:42:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZZXn0rVTdgjOgiPd57AuKN+LE0yGsKrnfRwPvNYOlOg=; b=Jxd+XVrqistUsmLLpf70g0s+3R
	I1PK7SddwpoP1iRNVb8l0TiKxBJrwp1FwsQWVTjRAyys2LmoiQ1qJ0ZCKMYYrcbffS9KS1BVydf7R
	snB2VK50iEQ0WzNS/0vHV/QCnoQFwNvozKqHNjB/QviuBb5xS4WJeSxi2LwgSg/jUcROL3n0AXBUo
	r8tULLhYajbdm0gbnLiNqj0XbS1e7U9TCb0ZEsymMxZPJ0UssNhcl3vud7QjHj0I6LS+mgZgUkO8y
	6IyBCkV3Lf5kuHVj3kE8AKcqrOHwkTJhPNhFexKjVNCS1rCu1NFCSCsbfNHvGyCaYRdhcgOTY6TO2
	8laCufdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tryvY-00000005gxJ-3mCu;
	Tue, 11 Mar 2025 12:41:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tryfl-00000005d8d-0wm2
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:25:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-0003B8-UY; Tue, 11 Mar 2025 13:25:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-005B6S-1a;
	Tue, 11 Mar 2025 13:25:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-1E;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-am625-secure-v2-8-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=1598;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3JO4FLnih+ZNRf0wOS/nJzFsCV0EpJBoTxMiG40GLyk=;
 b=8R3Uq/F/pg7/yMRsiGZV5eNpFr2PR9rgkeWA5SsIuvbzMrPP78a/2NwOgN5kXw/LTPdnCW7wt
 IGXP7iq1N9pCtZ8hoQq0WVBfzScDCFSGwmYBm/ofaSQFxyMmEddEoIE
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_052525_289079_DE27D124 
X-CRM114-Status: GOOD (  11.86  )
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
Subject: [PATCH v2 08/14] ARM: am625: support hash verification of full
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This implements the necessary SoC code to check the full barebox against
a sha256 compiled into the first stage barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Kconfig |  1 +
 arch/arm/mach-k3/r5.c    | 14 ++++++++++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index 50919dc7e3..561ad1dac4 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -16,6 +16,7 @@ config MACH_K3_CORTEX_R5
 	select ELF
 	select K3_DDRSS
 	select FIP
+	select HAVE_FIRMWARE_VERIFY_NEXT_IMAGE
 	depends on 32BIT
 	select ARM_USE_COMPRESSED_DTB
 	default y
diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index 4eaf8658da..79bdb7aac7 100644
--- a/arch/arm/mach-k3/r5.c
+++ b/arch/arm/mach-k3/r5.c
@@ -248,6 +248,8 @@ static int load_fip(const char *filename, off_t offset)
 {
 	struct fip_state *fip;
 	struct fip_image_desc *desc;
+	unsigned char shasum[SHA256_DIGEST_SIZE];
+	int ret;
 
 	fip = fip_image_open(filename, offset);
 	if (IS_ERR(fip)) {
@@ -255,6 +257,18 @@ static int load_fip(const char *filename, off_t offset)
 		return PTR_ERR(fip);
 	}
 
+	if (IS_ENABLED(CONFIG_FIRMWARE_VERIFY_NEXT_IMAGE)) {
+		ret = fip_sha256(fip, shasum);
+		if (ret) {
+			pr_err("Cannot calc fip sha256: %pe\n", ERR_PTR(ret));
+			return ret;
+		}
+
+		ret = firmware_next_image_check_sha256(shasum, true);
+		if (ret)
+			return ret;
+	}
+
 	fip_for_each_desc(fip, desc) {
 		struct fip_toc_entry *toc_entry = &desc->image->toc_e;
 

-- 
2.39.5



