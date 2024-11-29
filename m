Delivery-date: Fri, 29 Nov 2024 13:02:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzhu-001qOr-03
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 13:02:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzhq-0001kE-HY
	for lore@pengutronix.de; Fri, 29 Nov 2024 13:02:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CFeREKGJTPGyL93MDFTwfkWenWWVIviMmMsAVC3w+os=; b=hZLQnNthIHaagFoeKYFkC2J2OY
	uDADfTNy8oDucuI4quqLWP2aDlqJi+OG+GOG0IUDRdF8HbWBoQ86lfAbGtcxt4nb5KPoedkX+/hLp
	f+m7dbQQ9/XyA38av0DYw3C2A0oiGNwZsW+3l8UmAfY3lHoU3/R910Q1etIiFt/dRau6jF3tTlhbM
	E/149BEKYwOlx/Fl6DWEpGur+zNh01ThBauM16vbtxLKsO/JLcwN//aK3keY2Ht4yEpJxwLet4n2b
	d73LVKFto7qZo9YTtH5CWT30PPnFTL4YMnDkfQ9bGo71kxjJQa3fbElG3vJetkL/fIIy8j7IfY3kh
	/Q3yjDgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhM-000000001Qo-40yH;
	Fri, 29 Nov 2024 12:02:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhK-000000001Ot-0Pne
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 12:02:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhI-0001MB-Se; Fri, 29 Nov 2024 13:02:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhH-000mLg-2s;
	Fri, 29 Nov 2024 13:02:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000vyS-2I;
	Fri, 29 Nov 2024 12:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Nov 2024 12:44:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241129-k3-r5-v1-11-67c4bb42a5c7@pengutronix.de>
References: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
In-Reply-To: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732880665; l=778;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=OjNtGH4VQtZyddfDOpbk7ueaT84I4SW//moDz2vzksA=;
 b=oXt6vJU6wp0DKQi6xa96a6kxYh+IL3F5RD3NxWpBEtwdOqPY1SC5/pJMB/w98qPahELLdy11W
 BSdyefLY98LA2WDxYupZQbT8ueVHsWv4iWNG7kbswg3iWQKVhBWWUBO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_040210_159115_0B79B090 
X-CRM114-Status: UNSURE (   9.87  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/20] ARM: k3: add k3_debug_ll_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a function to initialize the ns16550 compatible UART for debug_ll.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/k3/debug_ll.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/mach/k3/debug_ll.h b/include/mach/k3/debug_ll.h
index 29bd4015ab..a37b50c726 100644
--- a/include/mach/k3/debug_ll.h
+++ b/include/mach/k3/debug_ll.h
@@ -33,6 +33,14 @@ static inline void debug_ll_init(void)
 	/* already configured */
 }
 
+static inline void k3_debug_ll_init(void __iomem *base)
+{
+	debug_ll_ns16550_init(base, 26);
+
+	debug_ll_write_reg(base, 8, 0x07);
+	debug_ll_write_reg(base, 8, 0x00);
+}
+
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,

-- 
2.39.5



