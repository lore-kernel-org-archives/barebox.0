Delivery-date: Fri, 28 Feb 2025 08:18:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnudq-007xol-0t
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 08:18:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnudo-0004DN-4u
	for lore@pengutronix.de; Fri, 28 Feb 2025 08:18:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KPj+D5Y+Dh6TwPdMaFeTwy2RZvBUMzeR9ouykYiJl+Q=; b=jvepuMiWc5UB7UZlycOQnQoKUE
	wWaoizEjTkwn5c2nkzQM8DdtKj6pQwS6aQL+etJ2jqSkNKXHeLzpOVBeWCfFcPGFGap1UcdWlkFUm
	2wwlbDgqWqy90pfyc4IrvGMppAL/06OOY+g9m7OMFVQbhska3mgq7+02emXGfLPnEldd+9xT4hgcD
	+r5TTsyP4iK3ZuiI6HmgryZTyIJjAzAgHq0zJkQgB7z/Q/JONbDn58K37iQUdoWEPXbsHQjPcH5jG
	yrXPmU+9I3bilM98N4SF1JGzRdrkfKNt86jt4+mAqOukM+cQghORhuqBkRbSlMDa/qQmZrx1nuNrf
	rED3s5TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnudI-00000009xli-2AoO;
	Fri, 28 Feb 2025 07:18:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnucF-00000009xcX-39uy
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 07:17:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-0003kJ-Iz; Fri, 28 Feb 2025 08:16:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-003FtQ-0i;
	Fri, 28 Feb 2025 08:16:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-005CL4-0O;
	Fri, 28 Feb 2025 08:16:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2025 08:16:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-am625-secure-v1-8-4002488ff5ed@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
In-Reply-To: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740727010; l=1612;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Agh2j7PP1q3tNaV2FQ623A1UkzEonW25bN/gdWdT0lU=;
 b=wjchSU6gWPGaeoRBFIasqfsxNxVxc1oWbK2S8T4DJK3I1LVGA8U6B3MdQtY3eTK2Z0xYyKsKH
 L0gSuWVa0OsDlESj7jsMhbzvUhjbTAYYUFvvMydyXBq7BRFN3PXRMW+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_231659_805265_B8D39C49 
X-CRM114-Status: GOOD (  11.76  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/13] ARM: am625: support hash verification of full
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
index e12c888afa..cb52ff364d 100644
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
+		ret = firmware_next_image_verify(shasum, SHA256_DIGEST_SIZE, true);
+		if (ret)
+			return ret;
+	}
+
 	fip_for_each_desc(fip, desc) {
 		struct fip_toc_entry *toc_entry = &desc->image->toc_e;
 

-- 
2.39.5



