Delivery-date: Thu, 04 Jan 2024 15:19:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ0-003cU3-2A
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYz-0005Ip-He
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gWj4J3TRCw1AZ6tEKwvRmCNbQRVEHOm/MgyvQ4Y0IEI=; b=u+JiH/ETqu9pRcKmHSKmLHSVyA
	eSz+STStbXss4OiyxaU+kwXzc+wmsT5h6apzFtddqUxsoTNFAlxmoW5suaE+z5sfJC+l7ybOFlfLt
	ILVdxy2+L5HqaqrqbKKqFA4ItEnAed6hRsOIxXvn1hEj/NXuK6MSXGooBo//JCTbXheFOKL2o1J3P
	j4fCqIGRpeavKxPIoW4K41FPlHGYfGHFJL4ib8qPUetFe23kP3i4yiPsGek8GQV/CI7vYhjM6yYWZ
	EpQ5jXLthGVaZRHAqDh5YafXOM2Dz58TOhZr9xxLIgLoir2ShqZdMbiGdIvwo0MNbFIZ240NaHAoi
	bo8IneIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXz-00EJGd-1u;
	Thu, 04 Jan 2024 14:18:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXl-00EJ4K-2x
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:18:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004HZ-J9; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000MyM-OW; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017yl-2E;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:37 +0100
Message-Id: <20240104141746.165014-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061757_975107_3F25302A 
X-CRM114-Status: GOOD (  10.51  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/19] ARM: Layerscape: add layerscape_uart_putc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/layerscape/debug_ll.h | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/include/mach/layerscape/debug_ll.h b/include/mach/layerscape/debug_ll.h
index 23af0118cc..bdb54ca4b9 100644
--- a/include/mach/layerscape/debug_ll.h
+++ b/include/mach/layerscape/debug_ll.h
@@ -21,24 +21,36 @@ static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
 
 #include <debug_ll/ns16550.h>
 
-static inline void ls1046a_debug_ll_init(void)
+static inline void ls1046a_uart_setup(void *base)
 {
-	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
 	uint16_t divisor;
 
 	divisor = debug_ll_ns16550_calc_divisor(300000000);
 	debug_ll_ns16550_init(base, divisor);
 }
 
-static inline void ls102xa_debug_ll_init(void)
+static inline void ls1046a_debug_ll_init(void)
 {
 	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
+
+	ls1046a_uart_setup(base);
+}
+
+static inline void ls102xa_uart_setup(void *base)
+{
 	uint16_t divisor;
 
 	divisor = debug_ll_ns16550_calc_divisor(150000000);
 	debug_ll_ns16550_init(base, divisor);
 }
 
+static inline void ls102xa_debug_ll_init(void)
+{
+	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
+
+	ls102xa_uart_setup(base);
+}
+
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
@@ -46,4 +58,9 @@ static inline void PUTC_LL(int c)
 	debug_ll_ns16550_putc(base, c);
 }
 
+static inline void layerscape_uart_putc(void *base, int c)
+{
+	debug_ll_ns16550_putc(base, c);
+}
+
 #endif /* __MACH_LAYERSCAPE_DEBUG_LL_H__ */
-- 
2.39.2



