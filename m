Delivery-date: Wed, 13 Sep 2023 14:03:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOaS-00Djmw-M4
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:03:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOaQ-0000cx-KV
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:03:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1+8ssvwdLZMFcIhB70jpkhwbH0x/V1/WxAYNSm40yEU=; b=GKGF7lZ7YWHP318jH2o7tNoutn
	3YQcANmkvgxrB3TggUQMFwlL/uun3W/7Borww/m+5j1ejrsrLBzlQhmc7iyyvGcbOWh3AUI3qQCE7
	XSrInkDSzThbD+4/ucb91U2OIOyUDfWkU37RRfTNCUGKScz0vGjFMhMypLnlU3ZomqvsbxWQtpWXd
	xmoL6HbYpl6lHc42g8AU2fMkeNmqLkM0JOSRFK/ScYJn5cofZrTUfY7TvfJtRDPdLqDuMqrerxfVE
	fWzkXk68CJPoUfov5UojPalJh6ybnP1FVg0fRX35KGjSnjRiA+Bpr4DtkEw1gNgWkt56afIi8R4M7
	jddkbLrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOZJ-005nuG-0Y;
	Wed, 13 Sep 2023 12:02:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOZD-005ntq-1o
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:02:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOZC-00009C-CH; Wed, 13 Sep 2023 14:01:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOZB-0063Yk-PI; Wed, 13 Sep 2023 14:01:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOZB-007nft-2M;
	Wed, 13 Sep 2023 14:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 14:01:57 +0200
Message-Id: <20230913120157.1859226-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_050159_603298_9448C9F2 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Zynqmp: define cdns_serial_putc for use with pbl_set_putc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike other debug_ll headers, such as i.MX's or AT91, the ZynqMP header
only defined PUTC_LL, but no function suitable for use with
pbl_set_putc.

Remedy that, so PBL entry points can benefit from CONFIG_PBL_CONSOLE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/zynqmp/debug_ll.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/mach/zynqmp/debug_ll.h b/include/mach/zynqmp/debug_ll.h
index 7642e37a4ed5..cc94d3ce54b4 100644
--- a/include/mach/zynqmp/debug_ll.h
+++ b/include/mach/zynqmp/debug_ll.h
@@ -15,9 +15,9 @@
 #define ZYNQMP_UART_STS_TFUL	(1 << 4)
 #define ZYNQMP_UART_TXDIS		(1 << 5)
 
-static inline void PUTC_LL(int c)
+static inline void cdns_serial_putc(void *ctx, int c)
 {
-	void __iomem *base = (void __iomem *)ZYNQMP_DEBUG_LL_UART_BASE;
+	void __iomem *base = ctx;
 
 	if (readl(base) & ZYNQMP_UART_TXDIS)
 		return;
@@ -28,4 +28,9 @@ static inline void PUTC_LL(int c)
 	writel(c, base + 0x30);
 }
 
+static inline void PUTC_LL(int c)
+{
+	cdns_serial_putc(IOMEM(ZYNQMP_DEBUG_LL_UART_BASE), c);
+}
+
 #endif /* __MACH_ZYNQMP_DEBUG_LL_H__ */
-- 
2.39.2



