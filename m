Delivery-date: Tue, 03 Dec 2024 21:26:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIZT7-003dLw-1B
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 21:26:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIZT7-0003OH-8t
	for lore@pengutronix.de; Tue, 03 Dec 2024 21:26:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jtmM4st+GpjfPuIxUPlEq49eP6A9VaAkK/3H1O3oK4I=; b=o31HdahHoip3t3YVIB3AXCJGFQ
	qKs252XSikQsd3X77SiW+rnhMyRmVmLveREZFVFy5H+xf8yZccFp7Yho310odNjT1paffZW+bxY56
	Q+n14Zci0cUCWspDuoCuHmNYiVKL3+G9W7cRXzArCEp24zkXNOsIC2shtr5zGW9RPYofBDaRHGuTk
	ion0u1fYPpT97M20PU88tkfbSF3970kBRU++Ap3VeQSfh5X97WkJ/VgHhdzVR6nZHuDwhD516MXFa
	8JPnLRvIjq3zfuYbrN2s4drleX0gyolu9fUNT0ih90P9gT9L0Yh5KmPXy4TQ9egPPWjej4ahlaBox
	6jNPh5ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIZSX-0000000AcoW-10Pu;
	Tue, 03 Dec 2024 20:25:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIZS0-0000000Acks-10wj
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 20:24:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIZRw-00037y-Jx; Tue, 03 Dec 2024 21:24:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIZRv-001XBW-23;
	Tue, 03 Dec 2024 21:24:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIZRw-002Ssl-11;
	Tue, 03 Dec 2024 21:24:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  3 Dec 2024 21:24:47 +0100
Message-Id: <20241203202447.587667-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_122452_280788_89120237 
X-CRM114-Status: GOOD (  12.18  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: omap: fix NS16550 UART setup in omap_debug_ll_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The NS16550 on the OMAP SoCs has a special mode register that contains a
disable bit. In order to use the peripheral, this bit needs to be
cleared.

We do that in ns16550_omap_init_port() and used to it for the DEBUG_LL
case in omap_uart_lowlevel_init().

Commit 89094b2a299b ("ARM: omap: Use ns16550 debug_ll helper") removed
this mode register write for the DEBUG_LL case, thereby rendering
DEBUG_LL on the BeagleBone Black non-functional.

Add back the missing register write to fix this.

This has not been tested on AM6xx, but the barebox proper driver also
writes a zero (after writing 0x80), so it's assumed that this write
would be a no-op there, because either the POR default or a previous
boot stage does already configure the peripheral this way.

Fixes: 89094b2a299b ("ARM: omap: Use ns16550 debug_ll helper")
Reported-by: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/debug_ll/ns16550.h   | 1 +
 include/mach/omap/debug_ll.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/include/debug_ll/ns16550.h b/include/debug_ll/ns16550.h
index 2bad7a43ca91..64cb9cd102df 100644
--- a/include/debug_ll/ns16550.h
+++ b/include/debug_ll/ns16550.h
@@ -19,6 +19,7 @@
 #define NS16550_LCR	0x3
 #define NS16550_MCR	0x4
 #define NS16550_LSR	0x5
+#define NS16550_MDR	0x8	/* TI OMAP Mode register */
 
 #define NS16550_LCR_VAL		0x3 /* 8 data, 1 stop, no parity */
 #define NS16550_MCR_VAL		0x3 /* RTS/DTR */
diff --git a/include/mach/omap/debug_ll.h b/include/mach/omap/debug_ll.h
index b0650abf2daa..a95c1bf140ac 100644
--- a/include/mach/omap/debug_ll.h
+++ b/include/mach/omap/debug_ll.h
@@ -57,6 +57,7 @@ static inline void omap_debug_ll_init(void)
 
 	divisor = debug_ll_ns16550_calc_divisor(48000000);
 	debug_ll_ns16550_init(base, divisor);
+	debug_ll_write_reg(base, NS16550_MDR, 0);
 }
 
 static inline void PUTC_LL(int c)
-- 
2.39.5



