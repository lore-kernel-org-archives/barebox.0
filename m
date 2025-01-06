Delivery-date: Mon, 06 Jan 2025 15:05:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjl-00HVw8-0B
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:05:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjj-0000jN-A3
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:05:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CFeREKGJTPGyL93MDFTwfkWenWWVIviMmMsAVC3w+os=; b=1fa3DNhzh4uEaF5++/iiNMibZ5
	BeJASzRbnszVz8dULjscGZbRu3qr4Aj9JoyvexGOtb/CiliCBOtz5ypPiaxdV1V1uXp/Q7bGjMNdn
	oP2sCDjeeN/BExno/OAAkaWYA23094Of003TSQW8UjTqbPYyyZol66fu6XK/n8jl2RquSpHYEPfSk
	xinsXrOlMMsIIZ/Jv4J1yYZKOPAbt94aLCEAJHz+2U46XNmrJxeefENQHfX76cNAuIApvLiBoWetu
	gGlSPzy6p/MzUAHNmjOCD9q/9EJvg4yXL52b9UMunMl2xWPHI1LX5jgviTwwQQ2obmBV+H9qPAt9P
	LYYaKdrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnjA-00000001V3m-3vBQ;
	Mon, 06 Jan 2025 14:05:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUngV-00000001UYJ-4Bd3
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 14:02:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngU-0008A5-Sc; Mon, 06 Jan 2025 15:02:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngT-007B6Y-30;
	Mon, 06 Jan 2025 15:02:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1r;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:47:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-11-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171221; l=778;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=OjNtGH4VQtZyddfDOpbk7ueaT84I4SW//moDz2vzksA=;
 b=jDORr6aNC3PotwSNBJoJVktbd0z2xPQ3sWLntLdYD5GWReEJLVb+AtP2q89LyjgCaH92/DGSL
 TL3CheIva4iAKwpGSvXchEqoeT0IpmlDFHHuAiUI5G6IfMfBUG9C+6H
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_060224_043899_1A554AE0 
X-CRM114-Status: GOOD (  10.25  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/22] ARM: k3: add k3_debug_ll_init()
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



