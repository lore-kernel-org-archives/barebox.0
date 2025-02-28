Delivery-date: Fri, 28 Feb 2025 08:33:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnush-007y4k-0O
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 08:33:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnusf-000640-FA
	for lore@pengutronix.de; Fri, 28 Feb 2025 08:33:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NftgjHDnaVheqkTMAgK7cuJWUPvXPwX2RLSrD/jTAu8=; b=aSD4ORtDMkDArBIwkBupJv7Krw
	JiVSsmNuazMpBh7WXBqR+RHgyoNuYGCaQGhERYpbUcfW5bq1ceQFnCtxR8QUePgiVVAqgBcUBQZPU
	a263irTxUXcwFLydi9dMnr7FcJimdmksP08CcoKrGH8r5WoqfkAz25EQ9RuHh+onK+qI719hQx5FW
	cuBt/SLmSVp9U/pWFyLOESqLboGZcnMGe2iP7tAjMI2/akR+4rd4Cdp3YUFeW8CFo80OWALGfTuHu
	J25+ZVxhlds5715m6fcM1JK5ZXk/PvvSrpxLK95oEbKeSVI7DQKBWtPtPEhhWhe8omi/Qnnop093B
	Dxwh6flA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnusF-0000000A0WR-12Ys;
	Fri, 28 Feb 2025 07:33:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnuqw-0000000A0H3-2Ncg
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 07:32:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuqv-0005iT-EW; Fri, 28 Feb 2025 08:32:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuqv-003FvS-0q;
	Fri, 28 Feb 2025 08:32:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-005CL4-0R;
	Fri, 28 Feb 2025 08:16:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2025 08:16:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-am625-secure-v1-11-4002488ff5ed@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
In-Reply-To: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740727010; l=3076;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vkv9GSA85taMvzmqdPrOoILZbGj0B73+nA/EyJjt84Q=;
 b=AJqu3iwWhSBlcYz/S2XsuLsM+rQ4Pzv6SzheW0FC27L2z5m6NfDl/QG0WkDQXpLc5bDOYrXeA
 sNVMnuzmr5ODW8q6526dscbCMuj5eu5lVniVzjKZg+jwiy+F5tBXb6B
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_233210_627889_0D0814EC 
X-CRM114-Status: GOOD (  17.67  )
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
Subject: [PATCH 11/13] ARM: k3: r5: Allow to authenticate next image by ROM
 API
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
index c8a91e2597..d0093a3be7 100644
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



