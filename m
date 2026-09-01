Delivery-date: Tue, 01 Sep 2026 17:14:38 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1QC5-009gTQ-2p
	for lore@lore.pengutronix.de;
	Tue, 01 Sep 2026 17:14:38 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 09C7F201922
	for <lore@pengutronix.de>; Tue, 01 Sep 2026 17:14:34 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Q+FyEfbw;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MXbdY9S2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SzvS0Bod2I/miBW+n3O5Z6tp/kZBRQKwqhcREOZPXVg=; b=Q+FyEfbwpUri1RatOJp7IyuYu0
	Fy6QO8gYaFkg84Cd/sUVaLJUkmWlK/CneMsukJMfjY7eIOMhmUMUbl+nmhhw8AWY8I6atRlq6Yecm
	h7hgixeGkMPqnK769DRJdwHoXDD0Q/qX7F7Y0cvm/6G22FisITZVfpO6Q1vqrZ2IhnFWmTzbpfHCI
	GyRi7827p7eS064mXHGUl7rQGhAJlLuJd1ACNcIzwSM/cC6520579na9pSRRrZixRRVcI8cxjmAYw
	cHdD/TzgQGyfvoVgvqNtdUISFk5FzCSq1nf/pFTzAhDaMijhwMMZu9K5GcEBMAo4I+LNLaWkdX6Na
	1lYUQLRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBP-0000000CRaF-1b4J;
	Tue, 01 Sep 2026 15:13:55 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBM-0000000CRXQ-0bd0
	for barebox@lists.infradead.org;
	Tue, 01 Sep 2026 15:13:53 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4995b0343c1so48829495e9.3
        for <barebox@lists.infradead.org>; Tue, 01 Sep 2026 08:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788275630; x=1788880430; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SzvS0Bod2I/miBW+n3O5Z6tp/kZBRQKwqhcREOZPXVg=;
        b=MXbdY9S2ub/BTTKOjAy9Ceyn8SKZnyyO5njadeI0fEPY6FtvIt4eF7rtKiwM+bJdEk
         k2DExC9+nJDETE2YFgb2aqE6czcbT8i+wM2qmZcp2vcqBH057moq9gxstxjluINHsEqX
         ejSS7AX1b+9wIIIjv7mjdA9NAchZ+1LaR5m5IRMtl4b6gF84tMelfuR02vH3DXFCM08l
         J/W+dqa4s6elBtT+vGFpXRjebuvQ5YO+XZHgSLWhQ3nPzZZCYoy2sfRkq7+AZ1PBCJ7l
         qUi4eu6R500o0TSMl0soyVMjida1wr0jl7UEeVt5G8Ez7bB29a0cQVT2pDWy52bDg5IK
         CYmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788275630; x=1788880430;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SzvS0Bod2I/miBW+n3O5Z6tp/kZBRQKwqhcREOZPXVg=;
        b=U/hRCW++/68Fk5KyJ2+KQp0hw/bxPoW3lveB2GRUE8s+XTMbmDjTOBSnrpPJhSqJoK
         nsZbePnQVpJ9wAYYTBB7A8MlYzSXg5ozVxZ329r62LrppHa+SAG4xxn3+dau2e8VN+7f
         DFs6D5EPuyYVgUYezYA4yDeFnb4D78oxzIeEUKLDeOP8jb1erHGPed+ehSCDuAX/124a
         OosOXWDDaP822YGZgH/0urO5QhcGofqyg2o/KC18vHm5GPDmViI2ZpbPd6SV8Xv8V9Qr
         6fVkQNaARK96xQAtU8zZ6/0eFfOYYG1nBAjnSusdNVhLBa1vyiWimPWHFj90j9MToQWA
         0Mkg==
X-Gm-Message-State: AFuF++kShLUrLwkWZOtFGsSBGwV2qblEzXf2TZEfxfqbGXFDKFBU40LJ
	zQXc98paee6q60aXorZJnha6pTJRUbWeJcw9YYGPsKRpArmUAU7GdgvzCuxDLQ==
X-Gm-Gg: AR+sD12ysE3FUr/xseI6uoo24S/oov/wW/aMMOzuUAi8gcQywVPbicFV7XC5FBwReyR
	GLMCjlpXe20sO1ALf9mxgQZ58/vUpbFo0i2Ph8HwC/+AT+Xu9MQstGa6LGN0pxQUFDZTfH6yO6e
	9FypuR3e+xhQ2Sq98h5ZqAOrbfoDl7lytRj0SqqGEvXm0b5zT94+/TZQFwZNtvDuC+2x1wUP4SE
	YWUfUI+Av5+iDMSWfAfuoUk/PPZ+YQxrEXWaIeM2QRDt7IzFrYQfBNy6jPQaNdHtDBkSdqlT6kz
	s+D1sn7AIe40/pY2UCDq9ntL49+FVsxvgQ0Ob7iKqDy5oY2/SFFSr2eAWMswfYaYwGSnv7oQeWI
	KGCC/D944VzO8q7ZuggU8UhSLVtm+OBgnoi5e+ULii0D/SfXdh5LPIZGH91gCila+mp9XovkU5L
	fD2JCdbvltqFjRYbAnPgtN281mCBtCRbC8er4SC3819ymdpD59aNCSC2yVLj97BFUxhPLjrl8SU
	eFIToWRwsgqnUXxPPUGTcII4MYw7VM4Gcoh/3rhr+D9c0POZ8QvABELJBdyD1lKe8imdZGDVxMA
	oWrnIw==
X-Received: by 2002:a05:600c:4514:b0:499:900c:9c68 with SMTP id 5b1f17b1804b1-49b91c1f2a2mr558164905e9.6.1788275629962;
        Tue, 01 Sep 2026 08:13:49 -0700 (PDT)
Received: from [192.168.0.233] (2a02-8388-e6ca-5780-e161-768d-5c97-84d0.cable.dynamic.v6.surfer.at. [2a02:8388:e6ca:5780:e161:768d:5c97:84d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b955e7906sm303549035e9.1.2026.09.01.08.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:13:49 -0700 (PDT)
From: Andrei Lalaev <andrey.lalaev@gmail.com>
Date: Tue, 01 Sep 2026 17:12:57 +0200
Subject: [PATCH RFC 2/6] ARM: rpi: add Raspberry Pi 5 support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260901-add-rpi5-support-v1-2-129784fe06fa@gmail.com>
References: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
In-Reply-To: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
To: barebox@lists.infradead.org
Cc: Andrei Lalaev <andrey.lalaev@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788275628; l=7151;
 i=andrey.lalaev@gmail.com; s=20260901; h=from:subject:message-id;
 bh=BPTzjg4iowKsJ4u2DC/0I9HVLNy9CeH4VTAaWCj1H30=;
 b=m5fjGnFc3ufW52XudMfhJdIF0sbitsgn7BCsFurM+CiemL90Q+9vNwj9VG0QQzjT0NnB5hRBf
 X04FRlhZS7GDZnG+EpfkhArPPO0vJ1x9yq16l0fRTQdY2piTjEL+Wf0
X-Developer-Key: i=andrey.lalaev@gmail.com; a=ed25519;
 pk=YHk+K3q98GV/1CigmrEAQ+Vc0o+GlFWt3j94jvrEh6o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_081352_223712_87425A8C 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Initial support of RPI 5 that should be enough to boot Linux.
    All peripherals behind RP1 chip are not supported yet. Tested peripherals:
    - PL011 debug UART - SD-Card Signed-off-by: Andrei Lalaev --- arch/arm/boards/raspberry-pi/lowlevel.c
    | 3 +++ arch/arm/boards/raspberry-pi/rpi-common.c | 11 +++++++++++ arch/arm/configs/rpi_v8a_defconfig
    | 1 + arch/arm/dts/Make [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:330 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [andrey.lalaev(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: tu14wcj33c5equgchqeo9r8cqbsmzkgm
X-Rspamd-Queue-Id: 09C7F201922
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NEQ_ENVFROM(0.00)[andreylalaev@gmail.com,barebox-bounces@lists.infradead.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::330:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+]
X-Rspamd-Action: no action

Initial support of RPI 5 that should be enough to boot Linux.
All peripherals behind RP1 chip are not supported yet.

Tested peripherals:
  - PL011 debug UART
  - SD-Card

Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
---
 arch/arm/boards/raspberry-pi/lowlevel.c   |  3 +++
 arch/arm/boards/raspberry-pi/rpi-common.c | 11 +++++++++++
 arch/arm/configs/rpi_v8a_defconfig        |  1 +
 arch/arm/dts/Makefile                     |  1 +
 arch/arm/dts/bcm2712-rpi-5.dts            |  4 ++++
 arch/arm/dts/bcm2712-rpi.dtsi             |  5 +++++
 arch/arm/include/asm/system_info.h        |  3 +++
 arch/arm/mach-bcm283x/Kconfig             |  6 ++++++
 arch/arm/mach-bcm283x/core.c              |  4 +++-
 include/mach/bcm283x/mbox.h               |  1 +
 10 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index b3727d930ff7..8d2150f9bbd8 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -74,6 +74,7 @@ extern char __dtb_z_bcm2711_rpi_4_start[];
 extern char __dtb_z_bcm2711_rpi_400_start[];
 extern char __dtb_z_bcm2711_rpi_cm4_io_start[];
 extern char __dtb_z_bcm2711_rpi_cm4s_io_start[];
+extern char __dtb_z_bcm2712_rpi_5_start[];
 
 RPI_ENTRY_FUNCTION(start_raspberry_pi1, SZ_128M, fdt)
 {
@@ -142,6 +143,8 @@ static void *rpi_get_board_fdt(int rev)
 		return DT_IF_ENABLED(__dtb_z_bcm2711_rpi_cm4_io_start, CONFIG_MACH_RPI4);
 	case BCM2711_BOARD_REV_CM4_S:
 		return DT_IF_ENABLED(__dtb_z_bcm2711_rpi_cm4s_io_start, CONFIG_MACH_RPI4);
+	case BCM2712_BOARD_REV_5:
+		return DT_IF_ENABLED(__dtb_z_bcm2712_rpi_5_start, CONFIG_MACH_RPI5);
 	}
 
 	return NULL;
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 754772da460f..fe0b11efad68 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -175,6 +175,7 @@ static int rpi_mem_init(void)
 	if (!of_machine_is_compatible("brcm,bcm2837") &&
 	    !of_machine_is_compatible("brcm,bcm2835") &&
 	    !of_machine_is_compatible("brcm,bcm2711") &&
+	    !of_machine_is_compatible("brcm,bcm2712") &&
 	    !of_machine_is_compatible("brcm,bcm2836"))
 		return 0;
 
@@ -732,6 +733,13 @@ static const struct rpi_machine_data rpi_4_ids[] = {
 	},
 };
 
+static const struct rpi_machine_data rpi_5_ids[] = {
+	{
+		.hw_id = BCM2712_BOARD_REV_5,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
 static const struct of_device_id rpi_of_match[] = {
 	/* BCM2835 based Boards */
 	{ .compatible = "raspberrypi,model-a", .data = rpi_1_ids },
@@ -762,6 +770,9 @@ static const struct of_device_id rpi_of_match[] = {
 	{ .compatible = "raspberrypi,4-compute-module-s", .data = rpi_4_ids },
 	{ .compatible = "raspberrypi,400", .data = rpi_4_ids },
 
+	/* BCM2712 based Boards */
+	{ .compatible = "raspberrypi,5-model-b", .data = rpi_5_ids },
+
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(rpi_of_match);
diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index 90899218b192..7c95b4b2f313 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_BCM283X=y
 CONFIG_MACH_RPI3=y
 CONFIG_MACH_RPI_CM3=y
 CONFIG_MACH_RPI4=y
+CONFIG_MACH_RPI5=y
 CONFIG_64BIT=y
 CONFIG_IMAGE_COMPRESSION_NONE=y
 CONFIG_NAME="rpi_v8a_defconfig"
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 64f46064b735..56e022286182 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -146,6 +146,7 @@ lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
 lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
 lwl-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
 lwl-$(CONFIG_MACH_RPI4) += bcm2711-rpi-4.dtb.o bcm2711-rpi-400.dtb.o bcm2711-rpi-cm4-io.dtb.o bcm2711-rpi-cm4s-io.dtb.o
+lwl-$(CONFIG_MACH_RPI5) += bcm2712-rpi-5.dtb.o
 lwl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o imx6q-sabrelite-qemu.dtb.o
 lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o imx6qp-sabresd.dtb.o imx6dl-sabresd.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
diff --git a/arch/arm/dts/bcm2712-rpi-5.dts b/arch/arm/dts/bcm2712-rpi-5.dts
new file mode 100644
index 000000000000..c9754555993a
--- /dev/null
+++ b/arch/arm/dts/bcm2712-rpi-5.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <arm64/broadcom/bcm2712-rpi-5-b.dts>
+#include "bcm2712-rpi.dtsi"
diff --git a/arch/arm/dts/bcm2712-rpi.dtsi b/arch/arm/dts/bcm2712-rpi.dtsi
new file mode 100644
index 000000000000..9ca671d8df7b
--- /dev/null
+++ b/arch/arm/dts/bcm2712-rpi.dtsi
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
index 5a84fde75b9f..aa13a8531a05 100644
--- a/arch/arm/include/asm/system_info.h
+++ b/arch/arm/include/asm/system_info.h
@@ -50,6 +50,9 @@
 #define CPU_IS_CORTEX_A72	0x410fd080
 #define CPU_IS_CORTEX_A72_MASK	0xff0ffff0
 
+#define CPU_IS_CORTEX_A76	0x410fd0b0
+#define CPU_IS_CORTEX_A76_MASK	0xff0ffff0
+
 #define CPU_IS_PXA250		0x69052100
 #define CPU_IS_PXA250_MASK	0xfffff7f0
 
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index ca9061572b06..78dfa9dd87ce 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -47,6 +47,12 @@ config MACH_RPI4
 	select MACH_RPI_AARCH_32_64
 	select MACH_RPI_COMMON
 
+config MACH_RPI5
+	bool "RaspberryPi 5 (BCM2712/CORTEX-A76)"
+	depends on 64BIT
+	select CPU_V8
+	select MACH_RPI_COMMON
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
index 1091ad0b5664..6c6aa5726a25 100644
--- a/arch/arm/mach-bcm283x/core.c
+++ b/arch/arm/mach-bcm283x/core.c
@@ -13,7 +13,7 @@ void __iomem *bcm2835_get_mmio_base_by_cpuid(void)
 		pr_debug("ARM CPUID: %08x\n", cpuid);
 	}
 
-	/* We know ARM1167, Cortex A-7, A-53 and A-72 CPUID mask is identical */
+	/* We know ARM1167, Cortex A-7, A-53, A-72, A-76 CPUID mask is identical */
 	switch(cpuid & CPU_IS_ARM1176_MASK) {
 	case CPU_IS_ARM1176:	/* bcm2835 */
 		return IOMEM(0x20000000);
@@ -22,6 +22,8 @@ void __iomem *bcm2835_get_mmio_base_by_cpuid(void)
 		return IOMEM(0x3f000000);
 	case CPU_IS_CORTEX_A72:	/* bcm2711 */
 		return IOMEM(0xfe000000);
+	case CPU_IS_CORTEX_A76:	/* bcm2712 */
+		return IOMEM(0x107c008000UL);
 	}
 
 	pr_err("Couldn't determine rpi by CPUID %08x\n", cpuid);
diff --git a/include/mach/bcm283x/mbox.h b/include/mach/bcm283x/mbox.h
index fc51b6597560..0f3cd9c8211f 100644
--- a/include/mach/bcm283x/mbox.h
+++ b/include/mach/bcm283x/mbox.h
@@ -178,6 +178,7 @@ struct bcm2835_mbox_tag_hdr {
 #define BCM2711_BOARD_REV_400		0x13
 #define BCM2711_BOARD_REV_CM4		0x14
 #define BCM2711_BOARD_REV_CM4_S		0x15
+#define BCM2712_BOARD_REV_5		0x17
 
 struct bcm2835_mbox_tag_get_board_rev {
 	struct bcm2835_mbox_tag_hdr tag_hdr;

-- 
2.55.0



