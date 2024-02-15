Delivery-date: Thu, 15 Feb 2024 13:02:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raaRP-007Noj-1l
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 13:02:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raaRN-0000MO-IC
	for lore@pengutronix.de; Thu, 15 Feb 2024 13:02:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a3zrfSnQ9MkxXrP7tcGXQhCcR003YIxU2M7U/3RjeOk=; b=jZxNRsxCnVp/ogMaMjeCIlLIST
	aadGCpgaGetnVC+GBZDHmgB35mN3cwyPscKTn/aAXBXStTk30w83vXOrBBpJzPthiIvTFg9aUmfji
	wB+kbEdvwVAoGuGyg8VA6I6IJk/2VoT+pHvC99y1I5cdNE4j5Lm4kxyIOXGMcF3ZiYDEJUyh3gjC/
	GCJhRCmB7kR3y4HK/9+tGWjPIgG4kO6uQxpQ6z6mtoUTyTeF4Tb23EmVJ45pRhMsy+ZsBjC4reEMA
	wD7esE3AgvNSJXWST3jCebOLGhLG7wtnTvhgisWnH+gF8IvYcCcTwZxyc8C6XsoenfMJKP8sqBhP3
	TCjkvLjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raaQZ-0000000G9kb-1hy1;
	Thu, 15 Feb 2024 12:01:19 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raaQV-0000000G9jS-3MR3
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 12:01:17 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-33d10936af1so142505f8f.1
        for <barebox@lists.infradead.org>; Thu, 15 Feb 2024 04:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rtone.fr; s=google; t=1707998472; x=1708603272; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a3zrfSnQ9MkxXrP7tcGXQhCcR003YIxU2M7U/3RjeOk=;
        b=Y4Gvuf+hVTLpuOWkyxk0uPgQ/aeN7l6Ceh1g2TcDjtYopTHzNK4ZwfBFEmTVnl3RK8
         6Vwc2Idpz7P/6TDey2aTdU9O/zDb1yd5RZ6FTELO9v+Aca8mwPvOT6HDPw7Kocy8LoRe
         /Ogsm1/U+hYlQpMgVn+xPcJLf/dq2Q/vRK1/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707998472; x=1708603272;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a3zrfSnQ9MkxXrP7tcGXQhCcR003YIxU2M7U/3RjeOk=;
        b=pTDQZeaIIOo9Y/x3re3q3/JAfCbxhLqo96b7uLUkrQgHJQiHhaeD2h4DHcZhRMSU7B
         LbQn0ZGRN/1bhXZTXnxzxkliXlH1gkf0uoYU3xzgJiXJ7C2VSJ31LOexCZ3yavIuce6j
         8zvEpFPvvcjkqpD1XXqsR6t9zHmzag97as+LShuSkkE3UbD1G/8HOUL7bRREze1BYpjX
         DyZ1l1ndLtsGCBCEs31Q16+s+aGRoS9E/gX5Bze0/QA4Iffy9bLV9KuiX9WYAMoZqsWm
         IpbU210Tz+sxv4ohuzIgSZ9AECKYqaeWGfHfQQpq0AzUoSDuN5kN2kTzNh97BLWFBPMQ
         Jb1g==
X-Gm-Message-State: AOJu0Ywna+IljUSzXY8gsUQAJsAxl+RfyI6TFojr5z5rSFaSBFXPmTsT
	AULEBYPgJO1x9B+4PvI5v0ZQ382Pk6J2Uuys7AcXDCF8JDOJly3ERDnd+3+/Hqi7bNywVkhQCXC
	oZknwrA==
X-Google-Smtp-Source: AGHT+IHlSIuPUGzKby3fT9VbfTlUg/SweV9agBHO41NwBueQ1n+4B9/a3CKdRA0C/Brw20ApVk+u4A==
X-Received: by 2002:a5d:61c1:0:b0:33c:e35b:aa3d with SMTP id q1-20020a5d61c1000000b0033ce35baa3dmr1212429wrv.37.1707998472124;
        Thu, 15 Feb 2024 04:01:12 -0800 (PST)
Received: from chipmunk-104.. ([89.207.171.157])
        by smtp.gmail.com with ESMTPSA id e30-20020a5d595e000000b0033b2276e71csm1548257wri.62.2024.02.15.04.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 04:01:11 -0800 (PST)
From: Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
To: barebox@lists.infradead.org
Cc: sebastien.bourdelin@rtone.fr,
	a.fatoum@pengutronix.de,
	oss-contrib@rtone.fr,
	Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
Date: Thu, 15 Feb 2024 13:01:09 +0100
Message-ID: <20240215120109.23242-1-pierre-olivier.huard@rtone.fr>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_040116_141221_70527D65 
X-CRM114-Status: GOOD (  16.92  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/1] ARM: dts: rpi4: add DT for CM4S
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CM4S is close to the CM4, and thus is herited from it, with some
minor changes:

* The uart1 node (mini UART) does not need the clock to be forced to
  500MHz.
* The compatible field needs to be updated to match the CM4S

There is still an issue with the dwc2 driver in timeout.

Boot log:
Board: Raspberry Pi Compute Module 4S IO Board
deep-probe: supported due to raspberrypi,4-compute-module-s
bcm2835_mci fe300000.mmc@7e300000.of: registered as mci0
WARNING: dwc2 fe980000.usb@7e980000.of: dwc2_core_reset: Timeout! Waiting for Core Soft Reset
ERROR: dwc2 fe980000.usb@7e980000.of: probe failed: Connection timed out
bcm2835_mci fe340000.mmc@7e340000.of: registered as mci1
malloc space: 0x1f17ca80 -> 0x3e2f94ff (size 497.5 MiB)
no /dev/disk0.0 or /dev/mmc0.0. using default env
no '/hat' node found in vc fdt
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.

Hit any to stop autoboot:    3

Signed-off-by: Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
---
 arch/arm/boards/raspberry-pi/lowlevel.c |  3 +++
 arch/arm/dts/Makefile                   |  2 +-
 arch/arm/dts/bcm2711-rpi-cm4s-io.dts    | 20 ++++++++++++++++++++
 3 files changed, 24 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/bcm2711-rpi-cm4s-io.dts

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index a1e195d811..b3727d930f 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -73,6 +73,7 @@ extern char __dtb_z_bcm2837_rpi_cm3_start[];
 extern char __dtb_z_bcm2711_rpi_4_start[];
 extern char __dtb_z_bcm2711_rpi_400_start[];
 extern char __dtb_z_bcm2711_rpi_cm4_io_start[];
+extern char __dtb_z_bcm2711_rpi_cm4s_io_start[];
 
 RPI_ENTRY_FUNCTION(start_raspberry_pi1, SZ_128M, fdt)
 {
@@ -139,6 +140,8 @@ static void *rpi_get_board_fdt(int rev)
 		return DT_IF_ENABLED(__dtb_z_bcm2711_rpi_400_start, CONFIG_MACH_RPI4);
 	case BCM2711_BOARD_REV_CM4:
 		return DT_IF_ENABLED(__dtb_z_bcm2711_rpi_cm4_io_start, CONFIG_MACH_RPI4);
+	case BCM2711_BOARD_REV_CM4_S:
+		return DT_IF_ENABLED(__dtb_z_bcm2711_rpi_cm4s_io_start, CONFIG_MACH_RPI4);
 	}
 
 	return NULL;
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 04af3bd646..506716d806 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -123,7 +123,7 @@ lwl-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
 lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
 lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
 lwl-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
-lwl-$(CONFIG_MACH_RPI4) += bcm2711-rpi-4.dtb.o bcm2711-rpi-400.dtb.o bcm2711-rpi-cm4-io.dtb.o
+lwl-$(CONFIG_MACH_RPI4) += bcm2711-rpi-4.dtb.o bcm2711-rpi-400.dtb.o bcm2711-rpi-cm4-io.dtb.o bcm2711-rpi-cm4s-io.dtb.o
 lwl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o imx6qp-sabresd.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
diff --git a/arch/arm/dts/bcm2711-rpi-cm4s-io.dts b/arch/arm/dts/bcm2711-rpi-cm4s-io.dts
new file mode 100644
index 0000000000..8302523e47
--- /dev/null
+++ b/arch/arm/dts/bcm2711-rpi-cm4s-io.dts
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include "bcm2711-rpi-cm4-io.dts"
+
+&{/memory@0} {
+	reg = <0x0 0x0 0x0>;
+};
+
+/ {
+	compatible = "raspberrypi,4-compute-module-s", "brcm,bcm2711";
+	model = "Raspberry Pi Compute Module 4S IO Board";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&uart1 {
+	/delete-property/ clock-frequency;
+};
-- 
2.43.0



