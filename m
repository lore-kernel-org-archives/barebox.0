Delivery-date: Fri, 03 Mar 2023 10:30:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1kK-007O1a-Le
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:30:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1kK-0004NC-41
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:30:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bhMbUpxVfuKk3rRE+2ua/Y94nQZLsb+FK+V7D2DC+UY=; b=Tt5MwlPofJRK/+C0B2mmknBXZ5
	NHVTUb2cbyJ53pENKgCZK0TXeRtUO3J0mtmwwxmlpeK96IodyXBNMuuG8EToHC90qHNNPu6akm3ur
	agGlstQd8h8C0FO7kvag+qypUz5MqAkLMnYQoCDIxtzqa3aeQ9z3w8KqXmsFxBDGyOh6mt8jwGqqi
	rlcXUq82kGqtuNmx8snAU7+wWaTOSlyuQBxrOXEYYXmlPHVRy+/bBUtEZsLTucJH/hGvrXGXT/bPb
	b0wHnsbQA5vedG3B2s9WaU+dOcJkNr+tUGogP3IEqLnY0rY+rpNZ1ctwqQfljFqKiz3vgzvJt+YxH
	JjG0DXTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1j5-005jsY-PC; Fri, 03 Mar 2023 09:29:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1c4-005eck-CM
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:22:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=bhMbUpxVfuKk3rRE+2ua/Y94nQZLsb+FK+V7D2DC+UY=; b=f/AAa+YAW5HLoENAyUSFW3G0RP
	E6iPmjHpgKgW8Fff9WN7WCa26Ird0NhDYxrSk+vN3NoyZ4bf9q0M4VXUFrc2sbkZxC/2lOspMjHGS
	B+b/71p9x2iNnGhtNfKKru68joXbaEBKlahjJshB2k2JRiPiJ38wq/PfMAufgHqd5Zj+Vpn/89pJe
	1H6hBigZVaZ+h9i88LG96rA/LVOBIdX2cOP0ut2Yz2fNzpoBQTaAAoRXqLuh5hJvRZv7HiTpbWaV7
	ktgXj2Qc2/C4TW08ie0G/Qrj8Mr9yWWYLTGEneCIZElfoS5Q4SU1+EvOfDZ1iCbMySzH5KDIbKazd
	JsQXWwdQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bq-00FdKy-2Q
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:22:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bg-0000DX-Jz; Fri, 03 Mar 2023 10:21:40 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bf-001WiV-Pd; Fri, 03 Mar 2023 10:21:39 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2kf-37; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:22 +0100
Message-Id: <20230303092131.3063587-42-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092153_209222_606BA670 
X-CRM114-Status: GOOD (  12.21  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 41/50] ARM: stm32mp: Only provide PUTC_LL() when activated
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With multi-arch support we must make sure we provide exactly one
PUTC_LL() function as indicated by the "Kernel low-level debugging port"
Kconfig choice. Make sure that the stm32mp specific debug_ll.h only
provides PUTC_LL() when specified.
The stm32mp specific debug_ll.h also provides other functions needed
by board code regardless if the stm32mp debug_ll port is enabled or
not, so include it explicitly where needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/debug_ll.h | 6 ++++--
 common/Kconfig                  | 7 +++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 8005980f28..ba67c7e22d 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -19,6 +19,10 @@
 #include <mach/zynqmp/debug_ll.h>
 #endif
 
+#ifdef CONFIG_DEBUG_STM32MP_UART
+#include <mach/stm32mp/debug_ll.h>
+#endif
+
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
@@ -28,8 +32,6 @@
 #include <mach/davinci/debug_ll.h>
 #elif defined CONFIG_ARCH_BCM283X
 #include <mach/bcm283x/debug_ll.h>
-#elif defined CONFIG_ARCH_STM32MP
-#include <mach/stm32mp/debug_ll.h>
 #elif defined CONFIG_ARCH_ZYNQ
 #include <mach/zynq/debug_ll.h>
 #elif defined CONFIG_ARCH_VEXPRESS
diff --git a/common/Kconfig b/common/Kconfig
index c396c3a238..a21559bf2c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1435,6 +1435,13 @@ config DEBUG_SOCFPGA_UART1
 	  Say Y here if you want kernel low-level debugging support
 	  on SOCFPGA(Arria 10) based platforms.
 
+config DEBUG_STM32MP_UART
+	bool "Use STM32MP UART4 for low-level debug"
+	depends on ARCH_STM32
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on STM32MP.
+
 config DEBUG_RPI1_UART
 	bool "RaspberryPi 1 PL011 UART"
 	depends on ARCH_BCM283X
-- 
2.30.2



