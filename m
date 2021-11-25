Delivery-date: Thu, 25 Nov 2021 17:09:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHJ7-0001Y8-En
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:09:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHJ4-0000EQ-OV
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:09:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=664RvT5/K9mxjYipOjtQ1fp98GsbtIbPm0gd2kPFL1U=; b=1+m6+kjON8aEjM
	A36Ru2UdkEsCoEb/DZwbDDnXkhdgyDiWtjvjXPLdTyGw8CMikh2LVAZbV3IOz2DwDxyBX4gnN3DU+
	cflKn2V0150K5VPkbCU85zwjYMbWNtnWjmGj8YUgqZggZ2Fi/wu9gYIuUx3B5gyqNI2RxTrO827A5
	JWbfUlnHXlH64lxUqTZfb3qp3fDFy9O+GnnfWHTmVFZoC20ynLMFMml+c+DDt8nWOnqWMrPF3w0Zq
	lH23SVGEniPumoBQ57dqIAhTBqfwLetGDgiToaxmtlh6Aof7zb/JNhMl0auaKTqepSkzSn29Us4C8
	GyoWne31suBbmmdAwGBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHH8-008C8X-6Z; Thu, 25 Nov 2021 16:07:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHH1-008C78-RQ
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:07:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHH0-0008SQ-Et; Thu, 25 Nov 2021 17:06:58 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHGz-00G41P-Uv; Thu, 25 Nov 2021 17:06:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Nov 2021 17:06:57 +0100
Message-Id: <20211125160657.3828643-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_080659_907234_860EEF59 
X-CRM114-Status: GOOD (  10.89  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] RISC-V: virt: add DEBUG_LL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While we have PBL console support, console isn't available during early
barebox startup. Implement DEBUG_LL for Qemu RISC-V Virt to make such
early debugging easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs           |  1 +
 arch/riscv/include/asm/debug_ll.h | 10 ++++++++--
 common/Kconfig                    |  5 +++++
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index bd4a44a575ef..b12c795041b0 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -18,6 +18,7 @@ config SOC_VIRT
 	select RISCV_S_MODE
 	select BOARD_RISCV_GENERIC_DT
 	select HAS_CACHE
+	select HAS_ASM_DEBUG_LL
 	help
 	  Generates an image tht can be be booted by QEMU. The image is called
 	  barebox-dt-2nd.img
diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
index a3b9c1c4bcfb..d01b4f09b8e1 100644
--- a/arch/riscv/include/asm/debug_ll.h
+++ b/arch/riscv/include/asm/debug_ll.h
@@ -17,13 +17,19 @@
 #if defined CONFIG_DEBUG_ERIZO
 #define DEBUG_LL_UART_ADDR	0x90000000
 #define DEBUG_LL_UART_CLK       (24000000 / 16)
+#define DEBUG_LL_UART_SHIFT	2
+#define DEBUG_LL_UART_IOSIZE32
 #elif defined CONFIG_DEBUG_STARFIVE
 #define DEBUG_LL_UART_ADDR	0x12440000
 #define DEBUG_LL_UART_CLK       (100000000 / 16)
-#endif
-
 #define DEBUG_LL_UART_SHIFT	2
 #define DEBUG_LL_UART_IOSIZE32
+#elif defined CONFIG_DEBUG_RISCV_VIRT
+#define DEBUG_LL_UART_ADDR	0x10000000
+#define DEBUG_LL_UART_CLK       (58982400  / 16)
+#define DEBUG_LL_UART_SHIFT	0
+#define DEBUG_LL_UART_IOSIZE8
+#endif
 
 #define DEBUG_LL_UART_BPS       CONFIG_BAUDRATE
 #define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
diff --git a/common/Kconfig b/common/Kconfig
index f4120b2083ee..ab6258d90f40 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1402,6 +1402,11 @@ config DEBUG_STARFIVE
 	depends on SOC_STARFIVE
 	select DEBUG_LL_NS16550
 
+config DEBUG_RISCV_VIRT
+	bool "RISC-V Virt ns16550 port"
+	depends on SOC_VIRT
+	select DEBUG_LL_NS16550
+
 config DEBUG_SIFIVE
 	bool "SiFive serial0 port"
 	depends on SOC_SIFIVE
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

