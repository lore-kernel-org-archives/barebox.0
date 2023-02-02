Delivery-date: Thu, 02 Feb 2023 14:27:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZcv-00BQXA-RP
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 14:27:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZcs-0002vr-Ou
	for lore@pengutronix.de; Thu, 02 Feb 2023 14:27:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AouQ7nxjgze8mZpOKm6EC0VvrI8xL/a73PyrhkyRWiA=; b=3WQlVyZ2J2HruDYzbCHE48IOnL
	NisFj6YSC7bQe56016vkO8Lr6GBkisvihHkOs80jmIDCpm9dhjFPyauKUBKoLgJb/KtwGYGseBzix
	D+qXH57oPhoanobSgvTbSde2CBW0qyfh+GEKZL1uDUdBUolzXdNn7pqFWHgH7mktNwzvpqouxzMgs
	rBNpHbMP5DczKqQ/SOGT+my7J/2c+7JIrD5TU6R7LvGAnsKixszKL6UECNVhUcpF3qV0971TNDgKe
	otq3dDCk26zrD/bPQDX4Dzkfwfpv3RerU9hjuIZQGiU5jxlbujXCI8aX57YRA2u574qMQkuk7Cg59
	HfczvixA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZbe-00G0Oy-Et; Thu, 02 Feb 2023 13:26:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZbW-00G0Mi-4e
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 13:26:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNZbS-0002h6-Jq
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:26:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNZbQ-002BTJ-OU
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:26:13 +0100
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNZbR-002uQ4-6p
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:26:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  2 Feb 2023 14:26:11 +0100
Message-Id: <20230202132612.691206-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230202132612.691206-1-m.felsch@pengutronix.de>
References: <20230202132612.691206-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_052618_201347_E8C3D888 
X-CRM114-Status: GOOD (  11.30  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] RISC-V: Makefile: align the isa string setting with the kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Factor out the isa string setting. This is in preparation of adding
support for binutils-2.38 [1] furthermore it aligns the makefile with the
kernel. The commit is based on kernel commit:

  | commit e8be5302330281bd9f77834600f63e8cc4560d3d
  | Author: Alan Kao <alankao@andestech.com>
  | Date:   Tue Oct 9 10:18:32 2018 +0800
  |
  |     Cleanup ISA string setting
  |
  |     This patch cleanup the MARCH string passing to both compiler and
  |     assembler.  Note that the CFLAGS should not contain "fd" before we
  |     have mechnisms like kernel_fpu_begin/end in other architectures.
  |
  |     Signed-off-by: Alan Kao <alankao@andestech.com>
  |     Cc: Greentime Hu <greentime@andestech.com>
  |     Cc: Vincent Chen <vincentc@andestech.com>
  |     Cc: Zong Li <zong@andestech.com>
  |     Cc: Nick Hu <nickhu@andestech.com>
  |     Signed-off-by: Palmer Dabbelt <palmer@sifive.com>

[1] https://lore.kernel.org/linux-riscv/20221015111856.3869148-1-conor@kernel.org/

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/riscv/Makefile | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index b4cf5983a2..d1b689b493 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -5,15 +5,19 @@ KBUILD_DEFCONFIG := rv64i_defconfig
 KBUILD_CPPFLAGS += -fno-strict-aliasing
 
 ifeq ($(CONFIG_ARCH_RV32I),y)
-	KBUILD_CPPFLAGS += -march=rv32im -mabi=ilp32
+	KBUILD_CPPFLAGS += -mabi=ilp32
 	riscv-ldflags-y += -melf32lriscv
 else
-	KBUILD_CPPFLAGS += -march=rv64im -mabi=lp64
+	KBUILD_CPPFLAGS += -mabi=lp64
 	riscv-ldflags-y += -melf64lriscv
 endif
 
+# ISA string setting
+riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32im
+riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64im
 
 
+KBUILD_CPPFLAGS += -march=$(riscv-march-y)
 KBUILD_CPPFLAGS += -Wstrict-prototypes -mcmodel=medany -fpic
 riscv-ldflags-y += -pie -static
 
-- 
2.39.1



