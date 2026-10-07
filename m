Delivery-date: Wed, 07 Oct 2026 13:15:30 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPcQ-00Aujd-1b
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 13:15:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 021E9201DCD
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 13:15:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DjlcxFjF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=bp8IpQBU;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791371730; a=rsa-sha256;
	cv=pass;
	b=E75e5OqMuypobtB10HhrJDDei3cv3tW2SRW33cMQuSCRUfR+P70yXZeuhXN3V/2mcviMD3
	9E7D9NBA7VU+J9gPekDZkoVrTTW2Hp0BBgfvd9dlzTboM/9JU36hUANEQzbXQlOv9/Zn0F
	dLzmk7Me+AcnHbuf7EKBbrw5Q3Mc3xHbMkHQn1X6SZrMKOtxOMIAb5tUf7jX2TMNrpnfct
	CkTIov3jZO9e8+lSlERy8TE5TVOqCr8/l3rW94OAV5wuNBSmY5z3moYAbyet1Wi3IdUFmN
	+LS/9G6dWC5zvIBnjDv81wuD8aS10TaScIrZfaHhuNEWW1qEslLM3H3YtmjbQg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DjlcxFjF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=bp8IpQBU;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791371730;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=fn9g0jp4tn/eZg27mt6cX9LaGxoGu3fBHNvWJNv03q0=;
	b=eszPNs78E0DmmdQGQrSTe15nOrZo9qO1/FSGoLkPU7YD7ozoE1AQsRIL/231nht0KbcVRV
	j/CAwFbMGXN1BzUYDu3oPodW4oZD0N3Repn6ZKo0HOpUI/oJgL/2e2A6d5HwXf9hZWOFhI
	t84NhNxEeMHCEsn/mOls7puQarGb/BTEs9bsJbZk0wQsyrg38QDYbzajaFhku9OCBqjlvs
	pcoZkVDKBwN4X5vUYiM3tw3DKil4kkavXYPGL3TDN7VvQNnhqvi/pxEN0w07hJxuzDALA0
	Zd489rbBIDFUkSAgXbjinfxbEcW2n4+LnEvt0at0LiYkhQqvs7XiMAuJLAIx6A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fn9g0jp4tn/eZg27mt6cX9LaGxoGu3fBHNvWJNv03q0=; b=DjlcxFjF+zJp2QgQsf1qRyMkos
	BFUo06IA2PHdWeKDanGPTNHZqMjLFFye5812TDLLnamMbenPwOF8DVOyoPAwxErIPobhnhg3/n1qs
	+c2BLETURZ3i9D9MeMokw13pC1YxviOdO9gPcXyr3hkzK3zqQrczxlU4tD1BTBn76J50sqNBEniaD
	DQOKDZDFsZCzay/Q3JW+ZtJpYSO1+hY3vVAa5QCwKIzixZGl3msPArJg+37mjX/Kp52x52bfOh75+
	cnLZsV6Zmm/da2K1O2yaLN8fTrlsRLLUfw5JsFaINyuRHux0qSlmKr3pj04syuuWO2LDdpDNPf5Jx
	6356T5tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPc0-00000002Hro-3kSZ;
	Wed, 07 Oct 2026 11:15:04 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPbx-00000002HqQ-1DLG
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 11:15:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 96274202013;
	Wed, 07 Oct 2026 13:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791371699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fn9g0jp4tn/eZg27mt6cX9LaGxoGu3fBHNvWJNv03q0=;
	b=bp8IpQBUjZf8tBRl5KfoINcVAgF0pYLUBKCqI0j01OknJ4NvbVI1e3eJpF4mcHJyTjb02M
	KWlMiAZ72YOZJWM4cbVbBcIsIStOJLjj8bdZH0LQ1+XpDUV9zDptWZrJ8PLjvgkoGrOi03
	I4PNM5/DSN+8iUZyXKXJqGNDUHshP+ej0UMBIEJJin+HyTWElFhrILu7jX1fIhL1Wxh35f
	OPxbs8Ez194oEBmB6fLGBhaqorGIgAVZHG0qpf2+EWJfjU87Elps0D+6cYHU0h5OtRyj2X
	CH27kaL89AhPuHqhVshnNAjKgRm6RCauE+WX3LLsj8elKgsG/yG1CQ/1gmsnwg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791371699; a=rsa-sha256;
	cv=none;
	b=TqZ6iB3GGKXf4KagJJpIN7J1Wy8Ru6Dzt4iIKKozHcI7/PGr4kkbWsCybh1yUaHJROT/Sh
	/N2XhWlHRpsX29U4dfMxlhHpGP91NnmqYB6bTYJSgf2yBQpxVVupGwqisgiXq0omUA7R8k
	4opLHkBb8nUvWylSUxG+glDvCBgpGpJuVtp2OjWUr0VcwWRPsbvNsiPs5gcQjudNS5H8fI
	TqfhZv52+6hUWIkIE/6paBhyCQiYFd75i8jqeBSgFpg1s4bsS3UJmxH/DNF7TbdXgttogR
	w7St0eMH2r/L5JBfksFd38qTjM7JjDbs/zLAk2cR7P07VUg1Zd+KC1xJvfwiww==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791371699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fn9g0jp4tn/eZg27mt6cX9LaGxoGu3fBHNvWJNv03q0=;
	b=Jig+8pUzie1yRsRypsHkbP55WnlI0k6SdYj8bX+D0iDhKqCPoHQXufE0TM1PmYULj0YY2B
	BUDSrrcuEnxQk63FXYvyEoshU5YvXEnZAtmUBR2Y7/Zz+TGPlXE49TXPLaz+tFcJngFZj5
	/Vrw1+KTRZ7G+ZvXTJgZgnT5MZYqgauM95YyRP8l3phNI4wpitYuTDyFzgr43cZ72DffH4
	6wZQGhW+f5dn4xC+8yYPabUZOdyGMojDCnmtocfr6eMAO+2D/lA8BfugC07DxmzEKca4by
	wyrzfysHIbTDVHyX7e6wN8pIkyty36KRhEmn8F0qpbPbSkhPyztRxpg2GaIIow==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJM-004haR-0t;
	Wed, 07 Oct 2026 12:55:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:56 +0200
Subject: [PATCH 11/11] arm: socfpga: axe5-eagle: build FSBL without piggy
 data
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-11-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_041501_646321_9590B52F 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add xload support to the Arrow AXE5 Eagle board and remove
    the piggy data from the FSBL. The load address and size are set via the barebox
    configuration, because they depend on the partition layout in flash, which
    is configured when configuring the flash image in Quartus. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 021E9201DCD
X-Stat-Signature: m9xgjgh48rykp3x9o18bybs1tnzpoef1

Add xload support to the Arrow AXE5 Eagle board and remove the piggy
data from the FSBL.

The load address and size are set via the barebox configuration, because
they depend on the partition layout in flash, which is configured when
configuring the flash image in Quartus.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 24 ++++++++++++++++++++++
 arch/arm/mach-socfpga/Kconfig               | 32 ++++++++++++++++++++++++++++-
 images/Makefile.socfpga                     |  5 +++++
 3 files changed, 60 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
index bf98515f28d8..7b7f699655a1 100644
--- a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
+++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
@@ -13,6 +13,11 @@
 
 extern char __dtb_z_socfpga_agilex5_axe5_eagle_start[];
 
+static struct socfpga_barebox_part axe5_eagle_barebox_part = {
+	.nor_offset = CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD_ADDR,
+	.nor_size = CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD_SIZE,
+};
+
 static void axe5_eagle_lowlevel_init(void)
 {
 	void __iomem *uart = IOMEM(SOCFPGA_UART_BASE(0));
@@ -30,6 +35,14 @@ static noinline void axe5_eagle_continue(void)
 	agilex5_barebox_entry(__dtb_z_socfpga_agilex5_axe5_eagle_start);
 }
 
+static noinline void axe5_eagle_continue_xload(void)
+{
+	axe5_eagle_lowlevel_init();
+
+	agilex5_set_barebox_part(&axe5_eagle_barebox_part);
+	agilex5_barebox_entry_xload();
+}
+
 ENTRY_FUNCTION_AGILEX5(start_socfpga_agilex5_axe5_eagle)
 {
 	if (current_el() == 3)
@@ -40,3 +53,14 @@ ENTRY_FUNCTION_AGILEX5(start_socfpga_agilex5_axe5_eagle)
 
 	axe5_eagle_continue();
 }
+
+ENTRY_FUNCTION_AGILEX5(start_socfpga_agilex5_axe5_eagle_xload)
+{
+	if (current_el() == 3)
+		socfpga_agilex5_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	axe5_eagle_continue_xload();
+}
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 55d7b12200c9..915bae352b0e 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -79,10 +79,40 @@ if 64BIT
 
 comment "Agilex 5 boards"
 
-config MACH_SOCFPGA_ARROW_AXE5_EAGLE
+menuconfig MACH_SOCFPGA_ARROW_AXE5_EAGLE
 	bool "Arrow AXE5 Eagle"
 	select ARCH_SOCFPGA_AGILEX5
 
+config MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD
+	bool "Build Arrow AXE5 Eagle FSBL without piggy data"
+	depends on MACH_SOCFPGA_ARROW_AXE5_EAGLE
+	select SOCFPGA_AGILEX5_XLOAD
+	select SPI_CADENCE_QUADSPI_PBL
+	help
+	  This option reduces the binary size of the FSBL and makes it
+	  independent of the enabled features of the SSBL, but requires SSBL
+	  xload support.
+
+config MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD_ADDR
+	depends on MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD
+	prompt "Start address of the Arrow AXE5 SSBL on flash"
+	hex
+	default 0x01000000
+	help
+	  barebox tries to load an SSBL from this address in the QSPI flash.
+
+	  Keep this address in sync with your QSPI image configuration.
+
+config MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD_SIZE
+	depends on MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD
+	prompt "Maximum size of the Arrow AXE5 SSBL on flash"
+	hex
+	default 0x00400000
+	help
+	  The maximum size of the SSBL in the QSPI flash.
+
+	  Keep this size in sync with your QSPI image configuration.
+
 endif
 
 comment "board features"
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index ec1bce5079c9..38bb27ac0e58 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -96,8 +96,13 @@ FILE_barebox-socfpga-socrates.img = start_socfpga_socrates.pblb
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += barebox-socfpga-socrates.img
 
 # ----------------------- Agilex5 based boards ---------------------------
+#ifdef MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD
+pblb-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE) += start_socfpga_agilex5_axe5_eagle_xload
+FILE_barebox-socfpga-agilex5-axe5-eagle.img = start_socfpga_agilex5_axe5_eagle_xload.pblb.hex
+#else
 pblb-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE) += start_socfpga_agilex5_axe5_eagle
 FILE_barebox-socfpga-agilex5-axe5-eagle.img = start_socfpga_agilex5_axe5_eagle.pblb.hex
+#endif
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE) += barebox-socfpga-agilex5-axe5-eagle.img
 
 pblb-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE) += start_socfpga_agilex5_axe5_eagle

-- 
2.47.3



