Delivery-date: Thu, 04 Jan 2024 15:19:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYy-003cSU-0l
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYx-0005G5-4N
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oGtjX83J+7BIb+1nIAwczIei8Dz8XM9B73uzJkeXAe0=; b=d3r+GKrz6lBFv0LnRD32HfZUbY
	Q2e2cay0Xaav+upzHQvSgTlLwNfcpMbrnGIpO4kqQrjfAqBxCmEf4EV7hleW4srXUZ2Tj8GF/Of/1
	ezUBPfQG+GCHlpuFSqc3yMTZw9c5OzdmyYwf+0xk5gy3OPxzMBQ6CoElRKfsaija/pbLC7/NyUeSX
	+ydAjJWlxdGhWEGboJv/sqsoIheLIe46nWcJ33C+lJ2rNl8WhmDWHhYc5qdudIgX6bG0SulBDPhhO
	ZfZ9BbDmZe8NE7KkHwcB7VInUNAL6CfKoffiEyga9UcXF3mD2AbuxwBITOFXeBaO4XzcFkRiPhl+b
	umAdfuCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXn-00EJ5X-0i;
	Thu, 04 Jan 2024 14:17:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIzA-2O
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004Hb-Ef; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000MyR-Pr; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017z2-2L;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:39 +0100
Message-Id: <20240104141746.165014-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061751_827162_7C3BC5C6 
X-CRM114-Status: GOOD (  11.28  )
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
Subject: [PATCH 12/19] ARM: layerscape: implement ls1028a debug_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/layerscape/debug_ll.h | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/include/mach/layerscape/debug_ll.h b/include/mach/layerscape/debug_ll.h
index bdb54ca4b9..22c3224340 100644
--- a/include/mach/layerscape/debug_ll.h
+++ b/include/mach/layerscape/debug_ll.h
@@ -5,10 +5,14 @@
 
 #include <io.h>
 #include <soc/fsl/immap_lsch2.h>
+#include <soc/fsl/immap_lsch3.h>
 
 #define __LS_UART_BASE(num)	LSCH2_NS16550_COM##num
 #define LS_UART_BASE(num) __LS_UART_BASE(num)
 
+#define __LSCH3_UART_BASE(num)	LSCH3_NS16550_COM##num
+#define LSCH3_UART_BASE(num) __LSCH3_UART_BASE(num)
+
 static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
 	return readb(base + reg);
@@ -31,11 +35,26 @@ static inline void ls1046a_uart_setup(void *base)
 
 static inline void ls1046a_debug_ll_init(void)
 {
-	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
+	void __iomem *base = IOMEM(LSCH3_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
 
 	ls1046a_uart_setup(base);
 }
 
+static inline void ls1028a_uart_setup(void *base)
+{
+	uint16_t divisor;
+
+	divisor = debug_ll_ns16550_calc_divisor(200000000);
+	debug_ll_ns16550_init(base, divisor);
+}
+
+static inline void ls1028a_debug_ll_init(void)
+{
+	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
+
+	ls1028a_uart_setup(base);
+}
+
 static inline void ls102xa_uart_setup(void *base)
 {
 	uint16_t divisor;
-- 
2.39.2



