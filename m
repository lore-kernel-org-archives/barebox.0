Delivery-date: Wed, 17 Sep 2025 16:19:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyt04-0046Rt-2O
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyt03-0003rr-0W
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N7blf8S7Odhl+OH4H+mXuOWMFG0BDFkwel7Rkorybxw=; b=v9WYITq5Zul1kVR2Q0aJWRzFZ6
	IdGpOmR570vp8YOC8e3KoIsu7vQHsHb+ciNrKAYCBbMcLplrbiSpGt+VpwmDWG3uqEAFDFDX4K6kb
	FovzhXP2vmwGhcvIgXkAv5UF3fhNUMm+vC3j6oCe9DP9CCf88z86nKNbC3HV4V2nu2+4c+46JOaK/
	qNBgGqehMXFyPnMkAJldn3HuMmEDESTS0gwe1ftp+AsDzPgzW5OR6wbKhhRup55gt+o8V5opdq9kx
	FoE0IGpGoB1sauOQ6XJi/q+udm0D6PmBb5wv+km2I1amdDSqxZzdv32e0ufXIuxgFaDykQuoh8JKe
	6g9NwrQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszS-0000000C8QA-0Qaf;
	Wed, 17 Sep 2025 14:18:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszL-0000000C8DH-3a8H
	for barebox@bombadil.infradead.org;
	Wed, 17 Sep 2025 14:18:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=N7blf8S7Odhl+OH4H+mXuOWMFG0BDFkwel7Rkorybxw=; b=FdIc69ApU2Q58yPGhVT1Q88IrY
	4dA+3EWkhoCyPjn89y12oncfKIl36QnQkkpt5KqwGSJzZRuIlejp67k/3uBzyc2g8XXW2189L9yNb
	AKduHViJewDhdfXfZkKp3onY0Abn7uWPtF8whgnHrLC+NmJRyARJvtqSFQkZjVhxshWRZoUUiYr63
	pdDnoPsXmGeYv1WpPOC+W3U6n7nd45cpVGXU+k8e+RfQBmL60OT7g8JIafWIx8sJEgFHGFSuLsZzd
	dBo/yK8rOjCx2ME8F2gHWFuD6/EmWlH8pg3tHA31WWovIHCa5WpKYTsWRiDRHKGLIvlQkqy/z0lo+
	mf+lBoZQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszI-00000007PGH-1yNN
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszG-00034X-Iv; Wed, 17 Sep 2025 16:18:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszG-001mHE-1H;
	Wed, 17 Sep 2025 16:18:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-38dA;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-24-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=2806;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=EA/KuFTMrdjuY/zBdr4MXY+aNlhZNbjzWahrA5zV+yw=;
 b=rs9oWhIKTOvSuLKwgJH3fbXZ7syX8wSK5Ff/R7Qvrg0xNQomEEi9hlPfnVAqb4frKoUjvUvZc
 bX0MfhNupoUCipZSZQxzB42W4btoCBNcTovF1Bj8XBsBCaiOCJLY9c9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_151824_750966_AE5C1E94 
X-CRM114-Status: GOOD (  15.87  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 24/24] security: console: add security policy for
 console input
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Disabling the input path of the console is the safest bet to make
barebox fully non interactive. Add a security policy for this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Sconfig          | 11 ++++++++++-
 common/console.c        |  6 ++++++
 common/console_simple.c |  6 ++++++
 3 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/common/Sconfig b/common/Sconfig
index ec68bc2737af02cff3ce38c7bc1b9d59af2336c5..b5c585b11b20a9f106f62813263f739d74f3667f 100644
--- a/common/Sconfig
+++ b/common/Sconfig
@@ -2,6 +2,15 @@
 
 menu "General Settings"
 
+config CONSOLE_INPUT
+	bool "Allow console input"
+	depends on $(kconfig-enabled,CONSOLE_SIMPLE) || $(kconfig-enabled,CONSOLE_FULL)
+	help
+	  Say y here if you want to allow input on consoles. Disabling this is the safest
+	  thing to make sure that a barebox build is fully non interactive. When you
+	  still need to react to input for example to trigger a recovery boot then consider
+	  disabling this option and disable SHELL_INTERACTIVE instead.
+
 config SHELL
 	bool "Allow executing shell scripts"
 	depends on $(kconfig-enabled,SHELL_HUSH) || $(kconfig-enabled,SHELL_SIMPLE)
@@ -13,7 +22,7 @@ config SHELL
 
 config SHELL_INTERACTIVE
 	bool "Allow executing interactive shell"
-	depends on SHELL
+	depends on SHELL && CONSOLE_INPUT
 	help
 	  An interactive shell cannot be safely executed in trusted environments. Disable
 	  this option in lockdown security configs.
diff --git a/common/console.c b/common/console.c
index 8eff3dba925f6de077dd194651a137f30870989d..95e5fb4df33cc41f41207153d96b02406bb6d3cc 100644
--- a/common/console.c
+++ b/common/console.c
@@ -513,6 +513,9 @@ static int tstc_raw(void)
 {
 	struct console_device *cdev;
 
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return 0;
+
 	for_each_console(cdev) {
 		if (!(cdev->f_active & CONSOLE_STDIN))
 			continue;
@@ -528,6 +531,9 @@ int getchar(void)
 	unsigned char ch;
 	uint64_t start;
 
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return -1;
+
 	/*
 	 * For 100us we read the characters from the serial driver
 	 * into a kfifo. This helps us not to lose characters
diff --git a/common/console_simple.c b/common/console_simple.c
index dc748d8b698140f589598190f75b0ba23892a9a4..c5f554bbee9bef92c54474a4bb48b7f162039618 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -45,6 +45,9 @@ EXPORT_SYMBOL(console_putc);
 
 int tstc(void)
 {
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return 0;
+
 	if (!console)
 		return 0;
 
@@ -54,6 +57,9 @@ EXPORT_SYMBOL(tstc);
 
 int getchar(void)
 {
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return -1;
+
 	if (!console)
 		return -EINVAL;
 	return console->getc(console);

-- 
2.47.3



