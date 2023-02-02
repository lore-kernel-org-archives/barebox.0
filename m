Delivery-date: Thu, 02 Feb 2023 14:27:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZcs-00BQWh-3Z
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 14:27:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZco-0002vD-Uj
	for lore@pengutronix.de; Thu, 02 Feb 2023 14:27:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VpfkWjtmKh8hmizFsWmUflfcPGib0ZQgWH1idi++pKg=; b=cZWMLM9XkjtdZWi3e1MjKkFpyg
	j77ivVEXC1o2GqviEpB2y7KDlmo9qGO8sSozbogfCz3WZZ7rFCnADJSYKMcWqg2E9X3wKGfArimcq
	PWTPP2T/oMLcmUpa4Qz50HVu7JuYmQAr3FTUWDfEEXwnCOo+GMQ2ika815R/YDyGtE0wh0W/PHhOQ
	gH+oOb48aIW5OItzH08/YRHdAyleu9CTiXy3jK//CgzZmcZuHLYN6XbF1dAKYZUtxFu3d/xD2r1Bh
	RAhI/b/jQKAZgkptdKn+99UDpkiZtlAyfuXvHoTBiVR+PuNqewQbYkzJINP915IJZ52DjWbN/ylsh
	jD9jmpSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZbc-00G0OJ-6N; Thu, 02 Feb 2023 13:26:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZbW-00G0Mj-4d
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 13:26:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNZbS-0002h7-S2
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:26:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNZbR-002BTM-15
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:26:14 +0100
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNZbR-002uQA-7r
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:26:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  2 Feb 2023 14:26:12 +0100
Message-Id: <20230202132612.691206-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230202132612.691206-1-m.felsch@pengutronix.de>
References: <20230202132612.691206-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_052618_201347_483A14C0 
X-CRM114-Status: GOOD (  10.55  )
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
Subject: [PATCH 3/3] RISC-V: Makefile: fix build with binutils 2.38
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With binutils >= 2.38 the default risc-v ISA spec version has been
bumped to 20191213, so we now need to specify the extension for csr and
fence.i as well. Do it the kernel way and port commit

  | commit 6df2a016c0c8a3d0933ef33dd192ea6606b115e3
  | Author: Aurelien Jarno <aurelien@aurel32.net>
  | Date:   Wed Jan 26 18:14:42 2022 +0100
  |
  |     riscv: fix build with binutils 2.38
  |
  |     From version 2.38, binutils default to ISA spec version 20191213. This
  |     means that the csr read/write (csrr*/csrw*) instructions and fence.i
  |     instruction has separated from the `I` extension, become two standalone
  |     extensions: Zicsr and Zifencei. As the kernel uses those instruction,
  |     this causes the following build failure:
  |
  |       CC      arch/riscv/kernel/vdso/vgettimeofday.o
  |       <<BUILDDIR>>/arch/riscv/include/asm/vdso/gettimeofday.h: Assembler messages:
  |       <<BUILDDIR>>/arch/riscv/include/asm/vdso/gettimeofday.h:71: Error: unrecognized opcode `csrr a5,0xc01'
  |       <<BUILDDIR>>/arch/riscv/include/asm/vdso/gettimeofday.h:71: Error: unrecognized opcode `csrr a5,0xc01'
  |       <<BUILDDIR>>/arch/riscv/include/asm/vdso/gettimeofday.h:71: Error: unrecognized opcode `csrr a5,0xc01'
  |       <<BUILDDIR>>/arch/riscv/include/asm/vdso/gettimeofday.h:71: Error: unrecognized opcode `csrr a5,0xc01'
  |
  |     The fix is to specify those extensions explicitely in -march. However as
  |     older binutils version do not support this, we first need to detect
  |     that.
  |
  |     Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
  |     Tested-by: Alexandre Ghiti <alexandre.ghiti@canonical.com>
  |     Cc: stable@vger.kernel.org
  |     Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/riscv/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index d1b689b493..1371f17e7c 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -16,6 +16,10 @@ endif
 riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32im
 riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64im
 
+# Newer binutils versions default to ISA spec version 20191213 which moves some
+# instructions from the I extension to the Zicsr and Zifencei extensions.
+toolchain-need-zicsr-zifencei := $(call cc-option-yn, -march=$(riscv-march-y)_zicsr_zifencei)
+riscv-march-$(toolchain-need-zicsr-zifencei) := $(riscv-march-y)_zicsr_zifencei
 
 KBUILD_CPPFLAGS += -march=$(riscv-march-y)
 KBUILD_CPPFLAGS += -Wstrict-prototypes -mcmodel=medany -fpic
-- 
2.39.1



