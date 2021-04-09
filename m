Delivery-date: Fri, 09 Apr 2021 15:13:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUqwm-0007sH-3y
	for lore@lore.pengutronix.de; Fri, 09 Apr 2021 15:13:16 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUqwl-0000a1-8A
	for lore@pengutronix.de; Fri, 09 Apr 2021 15:13:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ilOe1hlByz8hxRDiq1wDPAqvjGCaX+KdS4H5CUNKSac=; b=Npl9ObVHUtuzxA22VRHIJ/tKp
	K3VtkBzm9tTtKnZ8Sbfo9XzlNpj1EUS7CJWx2nz1Aal7TdBSJmlQyqy5b+JYWCovQP/AlKm0GuNkF
	sVJnaUHQYoGQbJkl+4toWIuYrlijTGYhNsk+8V6EOHBrc1Tw9bsnFAgIHW4pVHMec6RkvgP9EfSPi
	eDvR4/hG0Ag7/vVvSTkh8zkX3dU223pnFRA0y1aj6EVwy9g6M29AbQtajyOx294JCOAeBdTqb808b
	QES4L5KkctkA2pYuhIOnO+cfUTikgNch8gbFyXF14BbWDzzBGrmZ2EnwXjBr6KTl595hVNbG4T0XC
	atdKVbpYA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUqvd-000nfX-Ql; Fri, 09 Apr 2021 13:12:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUqvV-000neN-QJ
 for barebox@desiato.infradead.org; Fri, 09 Apr 2021 13:11:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=RKppIeQjM74MSW9jAmGVhTUihs3zaC3NyHbaw7r3Sbs=; b=k8iif8MsPAjAR8VA79PzuFhN/v
 QZ9Ngiu40Bl0M+nCZk5V5kR4hyuADIZImeAJ/nqaDmAEZ04bukhU0vdL6CyACiwKCIrNVi2+UJcZL
 t47wqSy/RCCVespYe2FD+dY/3b7kRAfgyVtpidPpBHEOlnnYYufwfmHbzxxDE8tq3S9EZYz73LQbu
 RRPmu4iNyJPUefWQaE12N+h0fpmXBk7CWRwIysHlN4nyPwbrwlY8BQ9IMgMa4k7uCt6z/x7ilDfkx
 19UzU3eTNYFkZemrF3skVneca0p1NCwrWl5EEAbSV58ULA38i2iRqDO/k+sCPYYPMbxvoAHgS//hY
 J/oYehGg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUqvT-004XTz-6o
 for barebox@lists.infradead.org; Fri, 09 Apr 2021 13:11:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lUqvP-0008Cy-ST; Fri, 09 Apr 2021 15:11:51 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lUqvP-000194-G9; Fri, 09 Apr 2021 15:11:51 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  9 Apr 2021 15:11:48 +0200
Message-Id: <20210409131149.2184-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210409131149.2184-1-o.rempel@pengutronix.de>
References: <20210409131149.2184-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_061155_272096_FFE7A219 
X-CRM114-Status: GOOD (  15.21  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 5/6] ARM: at91: add sama5d3_lowlevel_init() helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This code can be potentially reused with other sama5d3 based boards

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-at91/Makefile                  |  1 +
 arch/arm/mach-at91/include/mach/sama5d3_ll.h | 24 ++++++++++++++
 arch/arm/mach-at91/sama5d3_ll.c              | 34 ++++++++++++++++++++
 3 files changed, 59 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3_ll.h
 create mode 100644 arch/arm/mach-at91/sama5d3_ll.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 9cfba28fa0..c895af7a2f 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -30,6 +30,7 @@ obj-$(CONFIG_SOC_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 endif
 lwl-$(CONFIG_SOC_SAMA5D2)	+= sama5d2_ll.o
 obj-$(CONFIG_SOC_SAMA5D2)	+= sama5d2.o
+lwl-$(CONFIG_SOC_SAMA5D3)	+= sama5d3_ll.o
 obj-$(CONFIG_SOC_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
 obj-$(CONFIG_SOC_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
diff --git a/arch/arm/mach-at91/include/mach/sama5d3_ll.h b/arch/arm/mach-at91/include/mach/sama5d3_ll.h
new file mode 100644
index 0000000000..b5b6b5d820
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sama5d3_ll.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __SAMA5D3_LL_H__
+#define __SAMA5D3_LL_H__
+
+#include <mach/at91_pmc_ll.h>
+#include <mach/debug_ll.h>
+#include <mach/early_udelay.h>
+
+void sama5d3_lowlevel_init(void);
+
+static inline void sama5d3_pmc_enable_periph_clock(int clk)
+{
+	at91_pmc_enable_periph_clock(IOMEM(SAMA5D3_BASE_PMC), clk);
+}
+
+/* requires relocation */
+static inline void sama5d3_udelay_init(unsigned int msc)
+{
+	early_udelay_init(IOMEM(SAMA5D3_BASE_PMC), IOMEM(SAMA5D3_BASE_PIT),
+			  SAMA5D3_ID_PIT, msc, AT91_PMC_LL_SAMA5D3);
+}
+
+#endif /* __SAMA5D3_LL_H__ */
diff --git a/arch/arm/mach-at91/sama5d3_ll.c b/arch/arm/mach-at91/sama5d3_ll.c
new file mode 100644
index 0000000000..4650593699
--- /dev/null
+++ b/arch/arm/mach-at91/sama5d3_ll.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-only AND BSD-1-Clause
+// SPDX-FileCopyrightText: 2017, Microchip Corporation
+
+#include <mach/at91_wdt.h>
+#include <mach/barebox-arm.h>
+#include <mach/sama5d3_ll.h>
+
+void sama5d3_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+
+	at91_wdt_disable(IOMEM(SAMA5D3_BASE_WDT));
+	at91_pmc_init(IOMEM(SAMA5D3_BASE_PMC), AT91_PMC_LL_SAMA5D3);
+
+	/* At this stage the main oscillator
+	 * is supposed to be enabled PCK = MCK = MOSC
+	 */
+
+	/* Configure PLLA = MOSC * (PLL_MULA + 1) / PLL_DIVA */
+	at91_pmc_cfg_plla(IOMEM(SAMA5D3_BASE_PMC), AT91_PMC3_MUL_(43)
+			  | AT91_PMC_OUT_0 | AT91_PMC_PLLCOUNT
+			  | AT91_PMC_DIV_BYPASS, AT91_PMC_LL_SAMA5D3);
+
+	/* Initialize PLLA charge pump */
+	at91_pmc_init_pll(IOMEM(SAMA5D3_BASE_PMC), AT91_PMC_IPLLA_3);
+
+	/* Switch PCK/MCK on Main clock output */
+	at91_pmc_cfg_mck(IOMEM(SAMA5D3_BASE_PMC), AT91SAM9_PMC_MDIV_4
+			 | AT91_PMC_CSS_MAIN, AT91_PMC_LL_SAMA5D3);
+
+	/* Switch PCK/MCK on PLLA output */
+	at91_pmc_cfg_mck(IOMEM(SAMA5D3_BASE_PMC), AT91SAM9_PMC_MDIV_4
+			 | AT91_PMC_CSS_PLLA, AT91_PMC_LL_SAMA5D3);
+}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

