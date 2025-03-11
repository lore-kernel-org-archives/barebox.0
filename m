Delivery-date: Tue, 11 Mar 2025 13:48:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trz2T-00CgCJ-2z
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:48:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trz2R-0007dW-52
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:48:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bt6pDONQIIVi1KWrn2sI+2g75ucssCuFJgJYedLp530=; b=qnYh1ESPkLPcFEHtVKndTUhw22
	uytilPmFZ+s4fUjGIybPc0DGPjAN0sXoIUBkXA1yYN/EFs2E7RK+piqOCeNdM7f85/A3GcG5tvSIW
	jQwQ7Sah4KwXvrAegl/Wt/JiK4+dJQR1PQb2jzcLIBg/ITN5xiIFIghPe2N8bODtC7WYm+izLy7IX
	+BtXJbMILlSUqH+8UA1hAdsM+SE1vxBxVr32/B0EuK7WuaN4gzoFIUoPFj2IjLHwsUeHDtw7xz0cQ
	8TjVo87HQHF+l1XhEHkMZl44ph/CgJjRBeC9gcxx/14jPtwNm1IIhJthGLOSqmWtowUtB1CbxC8my
	oHkzAQQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trz23-00000005jQ4-2UVy;
	Tue, 11 Mar 2025 12:48:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trynT-00000005f5f-1O8A
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:33:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trynS-0004i0-6f; Tue, 11 Mar 2025 13:33:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trynR-005B8O-3D;
	Tue, 11 Mar 2025 13:33:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-1H;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-am625-secure-v2-11-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=3076;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+AEAgAhoGtPNt4wmR62LW21tsJ9OY89dyLFkhclRweE=;
 b=5WSpAAAIp/OOoj94rLzm0g+XPQ8zUzktEd30YMy/fJiRVl6Gv62tb2n0Xe1K/t1tzlohEjwGC
 jarTBIimOenDQovqUrJDQZLbTgwR1jlX45B2ZDRh/gT9NWX+NqW8Yhf
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_053323_391039_EBD89712 
X-CRM114-Status: GOOD (  17.84  )
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
Subject: [PATCH v2 11/14] ARM: k3: r5: Allow to authenticate next image by
 ROM API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the Kconfig option CONFIG_ARCH_K3_AUTHENTICATE_IMAGE. When
enabled, the full barebox image will only be started when it can be
authenticated using the ROM API.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Kconfig |  7 ++++++
 arch/arm/mach-k3/r5.c    | 64 +++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 70 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index 37d5155577..e93e3154c8 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -37,6 +37,13 @@ config MACH_BEAGLEPLAY
 	help
 	  Say Y here if you are using a TI AM62x based BeaglePlay board
 
+config ARCH_K3_AUTHENTICATE_IMAGE
+	bool "Force authentication of FIP image against ROM API"
+	help
+	  By enabling this option the FIP image loaded by the first stage
+	  will be authenticated against the K3 ROM API. Images which fail
+	  to authenticate will not be started.
+
 config ARCH_K3_COMMAND_AUTHENTICATE
 	bool "k3_authenticate_image command"
 	depends on COMMAND_SUPPORT
diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index e7133ff4ab..83089b8444 100644
--- a/arch/arm/mach-k3/r5.c
+++ b/arch/arm/mach-k3/r5.c
@@ -244,6 +244,64 @@ static uuid_t uuid_ti_dm_fw = UUID_TI_DM_FW;
 static uuid_t uuid_bl33 = UUID_NON_TRUSTED_FIRMWARE_BL33;
 static uuid_t uuid_bl32 = UUID_SECURE_PAYLOAD_BL32;
 
+static struct fip_state *fip_image_load_auth(const char *filename, size_t offset)
+{
+	struct fip_state *fip = NULL;
+	int fd;
+	unsigned int maxsize = SZ_4M;
+	size_t size;
+	void *buf = NULL;
+	int ret;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		return ERR_PTR(-errno);
+
+	if (offset) {
+		loff_t pos;
+		pos = lseek(fd, offset, SEEK_SET);
+		if (pos < 0) {
+			ret = -errno;
+			goto err;
+		}
+	}
+
+	buf = xzalloc(maxsize);
+
+	/*
+	 * There is no easy way to determine the size of the certificates the ROM
+	 * takes as images, so the best we can do here is to assume a maximum size
+	 * and load this.
+	 */
+	ret = read_full(fd, buf, maxsize);
+	if (ret < 0)
+		goto err;
+
+	size = maxsize;
+
+	ret = k3_authenticate_image(&buf, &size);
+	if (ret) {
+		pr_err("Failed to authenticate %s\n", filename);
+		goto err;
+	}
+
+	fip = fip_new();
+	ret = fip_parse_buf(fip, buf, size, NULL);
+	if (ret)
+		goto err;
+
+	close(fd);
+
+	return fip;
+err:
+	if (fip)
+		fip_free(fip);
+	close(fd);
+	free(buf);
+
+	return ERR_PTR(ret);
+}
+
 static int load_fip(const char *filename, off_t offset)
 {
 	struct fip_state *fip;
@@ -251,7 +309,11 @@ static int load_fip(const char *filename, off_t offset)
 	unsigned char shasum[SHA256_DIGEST_SIZE];
 	int ret;
 
-	fip = fip_image_open(filename, offset);
+	if (IS_ENABLED(CONFIG_ARCH_K3_AUTHENTICATE_IMAGE))
+		fip = fip_image_load_auth(filename, offset);
+	else
+		fip = fip_image_open(filename, offset);
+
 	if (IS_ERR(fip)) {
 		pr_err("Cannot open FIP image: %pe\n", fip);
 		return PTR_ERR(fip);

-- 
2.39.5



