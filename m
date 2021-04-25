Delivery-date: Sun, 25 Apr 2021 08:37:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1laYOB-00013g-Mg
	for lore@lore.pengutronix.de; Sun, 25 Apr 2021 08:37:07 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1laYOA-0008Mk-QZ
	for lore@pengutronix.de; Sun, 25 Apr 2021 08:37:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sh4T2CCmHoHtE2sIKyQ84mDe1LZ/+xsSOQAa/coyPCQ=; b=YqEiHgcPErEEXV
	KIKtn/QLMNHqPjH+JgMMsxpiDKUDsiERncsrM7qh4jLEPsV4Cu3vQOiSb8zgkqh6ABJi9Iy3B8Njv
	mVVc/egG3Sp+2mQDw6p71AwJumteLNqpTnt5wbRlegskyhN7sebYjossuaOksDoBXkdrMGVlXlANn
	iFcZjWH85hegFYdRCNkHo02Txo7DvN0yRT3B4Bj13CkLr0hU+r5mLdFX+YGw/Ai5cnNsqEB4E6FmN
	9hEZu4tBvFVnFdSZlGN1KXXm2IF5s5Hxm/4bQX+i9GJNQoETmlLGJnc1Ba64MZOsNDOVX8bKFGv42
	cJISDi/syUavYPmNHLBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laYMh-0058bz-37; Sun, 25 Apr 2021 06:35:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laYMZ-0058bb-LF
 for barebox@desiato.infradead.org; Sun, 25 Apr 2021 06:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=H4OJfYNZSpHeBIcZqsue5vBqINDw7YZ+2AOF1xex8h0=; b=hyxUlRDyX3EIlZZyhr/DnNTUaM
 w25tuRH1VF9MJ20TtfXXvYdnf0lqJkeGwHykYcRITOnqs+jBY+Ry9QIlZrxiRZdPYQD/cCzO9/9sy
 73K/tyTobNsf2XuESm/oLfEFtKAJdMzvQWoDC//sAv3mX5sA7+gr12UQGSPNUXy98jUuRLHillN8o
 blqJGK/3aVuujFRcm29DEBdWyC5ZssyNqlRs/bvClJYorWoIb22Q9dOQ4ScmjP27NbF3DCknaWD7s
 v5EHdORcYfwRjbg/MS5CA9592p/layNERVswCdAx1GfBI+WhJK6tisryy2fJPgyvMeKmAYhnTEzNo
 ekHIrz/g==;
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laYMW-00FJF2-Vn
 for barebox@lists.infradead.org; Sun, 25 Apr 2021 06:35:26 +0000
Received: by mail-lf1-x136.google.com with SMTP id 12so83246486lfq.13
 for <barebox@lists.infradead.org>; Sat, 24 Apr 2021 23:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H4OJfYNZSpHeBIcZqsue5vBqINDw7YZ+2AOF1xex8h0=;
 b=T4ZqUvCeyXDpchVGNH8M6Zih0xAatj9HbVHwc/ffZKU0qw+2JEFxiuGxl4NSqKBXtZ
 4rB8/sUpX4E1v31/Q5Vh6DJGbyv9u/uYIIpIePrxwxp3nydDwU562ilhJhm6wbh9VU8c
 1Bh2tdS1dAii8e5Q8GbGh2Z11GWjoLLBpoh9BZQpo92dGzi/yGYvbE8mgqMk3YgP85z/
 DkKIN1WIMkcuE/Gw2rNkdAK9rhcdIb8GQ1f/bb42kCB6gdvku1EOi6PmSnb1VVBowsdG
 27/3Fc4nv4c5SOATgdGT5zOSXXpYrwpUkX7yXT/7sdf41eHwQLSGKTOiLQLu+GkbYxbi
 R5Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H4OJfYNZSpHeBIcZqsue5vBqINDw7YZ+2AOF1xex8h0=;
 b=qHw75LXshBixyhsWnJAdVM7204PQ2mBY9YUADVL/vGDqLHrQu0SicFTcg4UTpCP9pR
 TKSBnrP+dGnAOeUqRKtOTkn4motP5liJIIv4Z3F2rQ8COENSlhT/ha4wYIgU78EPbTlO
 OytQK48UWp3M3olqENLILgKA2ULpvCA8eyQFjpo+9ntDZY/adP5iKSyCbOjSA0OiiodR
 XuogrWLT9tXptrO2d9RF3Hmfmiz+PKfQ782hJ2aAmQ9LnIaX0/iUFMnyysUgLiKS9aW4
 1WOA31biy3MdGb7Ya+o5MTMZL7/aBFMU0G64zkv32yENBTcxml8sdWeQmJhm5FnxEN8K
 jZ4A==
X-Gm-Message-State: AOAM531NE34ZlbNFo2OOBMl9qmYtPaEDZ9A7zwhOpDTWI0JQgf6Rjm13
 tnO6rFnrJ9P9Tlj/gOlE9Ci69Ky/JboIRw==
X-Google-Smtp-Source: ABdhPJzat9DcmfXkUCdSbgz4cGGn4iV20FHU2wSRZVsDhnB870ZIjGz0MnNb5yI5tMt47c2Ph/mZUA==
X-Received: by 2002:a05:6512:11c5:: with SMTP id
 h5mr36922lfr.401.1619332522248; 
 Sat, 24 Apr 2021 23:35:22 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id y23sm1019181lfh.3.2021.04.24.23.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Apr 2021 23:35:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Sun, 25 Apr 2021 09:35:17 +0300
Message-Id: <20210425063517.120260-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210424_233525_060473_2E8C88C5 
X-CRM114-Status: GOOD (  10.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] MIPS: qemu-malta: use generic syscon reset driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta_defconfig |  2 ++
 arch/mips/dts/qemu-malta.dts           | 13 +++++++++++
 arch/mips/mach-malta/Makefile          |  1 -
 arch/mips/mach-malta/reset.c           | 31 --------------------------
 4 files changed, 15 insertions(+), 32 deletions(-)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index b9994f392c..ab3abb7a2a 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -75,6 +75,8 @@ CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
 CONFIG_GPIO_MALTA_FPGA_I2C=y
 CONFIG_PCI=y
 CONFIG_PCI_DEBUG=y
+CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_POWER_RESET_SYSCON=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 32e473cac0..2d6f4a0ca3 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -27,6 +27,19 @@
 		clock-frequency = <1843200>;
 	};
 
+	fpga_regs: system-controller@1f000000 {
+		compatible = "mti,malta-fpga", "syscon", "simple-mfd";
+		reg = <0x1f000000 0x600>;
+		native-endian;
+
+		reboot {
+			compatible = "syscon-reboot";
+			regmap = <&fpga_regs>;
+			offset = <0x500>;
+			mask = <0x42>;
+		};
+	};
+
 	gpio: gpio@1f000b00 {
 		compatible = "mti,malta-fpga-i2c-gpio";
 		gpio-controller;
diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
index 0c5a7018d4..7d56f215b0 100644
--- a/arch/mips/mach-malta/Makefile
+++ b/arch/mips/mach-malta/Makefile
@@ -1,2 +1 @@
-obj-y += reset.o
 obj-$(CONFIG_PCI) += pci.o
diff --git a/arch/mips/mach-malta/reset.c b/arch/mips/mach-malta/reset.c
deleted file mode 100644
index ad0de2741b..0000000000
--- a/arch/mips/mach-malta/reset.c
+++ /dev/null
@@ -1,31 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- */
-
-/**
- * @file
- * @brief Resetting an malta board
- */
-
-#include <common.h>
-#include <io.h>
-#include <init.h>
-#include <restart.h>
-#include <mach/hardware.h>
-
-static void __noreturn malta_restart_soc(struct restart_handler *rst)
-{
-	__raw_writel(GORESET, (char *)SOFTRES_REG);
-
-	hang();
-	/*NOTREACHED*/
-}
-
-static int restart_register_feature(void)
-{
-	restart_handler_register_fn("soc", malta_restart_soc);
-
-	return 0;
-}
-coredevice_initcall(restart_register_feature);
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

