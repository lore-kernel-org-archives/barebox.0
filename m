Delivery-date: Mon, 14 Oct 2024 15:32:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LB4-004H6l-1X
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:32:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LB3-0003oI-U7
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:32:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vLKaJOioOVV/96kgBhBA4fE1VFRnURNBTALQOhzt7Gw=; b=TPZxe/TftZKu1hYen4tIJMfWST
	CzMwlFTczNGUPz7zkBhkNpJ+gc2YdbQlwEJYJgkILejiiB40znAuTTb/dGZtgOMDehc3pUXb4ITkU
	tTQ2IeLDQnujGzGze2jYvV3QpOUIiA2tTcnNlBaR+tc7HKmJ68uZx/+Y2jz8sD5neg51hWwHsX1vZ
	UnTzG1wyB0DEP/ypPDCwg/XppU3HA17hHWHWB6LGk5Z5fZ1gogO5CI7JjivYP8LsZj9wsGmooKZF2
	YGmx6KXwC9Lja4RzUy0N00U59H6IuhIRdUWUHcVacI7jYYWGzdRYbewlESkO+TVkLh2sE6wsWmJjS
	HMF6C7uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LAc-00000005IRb-0MGc;
	Mon, 14 Oct 2024 13:31:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jcr-00000004zdK-0Ofd
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:52:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=vLKaJOioOVV/96kgBhBA4fE1VFRnURNBTALQOhzt7Gw=; b=asrXT/6MZgqO8f+YueEFIAi5AR
	rpzL88Y9mtu+5nhvSGFOqqkvk9J459G7ZU5njr54WOWk2EqW5mpsutiyWPQ1oFoCOl/R3B9j0o3so
	UGCX8051oErnv15z6VewkAUiR2UuOuHsh9D3t0gyeg+EXc7JFNQzLwRwhTfFEhvSMFc8f5uCKiN7z
	Vf4JhLezNzjt4/MXjD/qFbPmUoTFfn7dBTaSJFOmJ+S7gJ/BCMYtV9p/hCnyuHS0WfTwtJIZF50Li
	IXnhumzvS7o0kx6mgZ9uJof6yB727uaCey3xrfW5SltD4SNU7GN8lHwS9M3f0Qc7+GwI73JrvtFTN
	CXixvHZg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jco-00000006Kp2-0UCT
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:52:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jcn-0001Ig-In; Mon, 14 Oct 2024 13:52:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jcn-001mVf-6H; Mon, 14 Oct 2024 13:52:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jcn-00BwRg-0L;
	Mon, 14 Oct 2024 13:52:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:52:31 +0200
Message-Id: <20241014115232.2846257-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125234_329869_57B262D0 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: r8169: use lower/upper_32_bits for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

No functional difference, but the code is much more readable without the
casts and shifts.

Additional benefit is removing the strange use of DMA_BIT_MASK here.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/r8169_main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/r8169_main.c b/drivers/net/r8169_main.c
index cd45677131ab..2d895cf88b43 100644
--- a/drivers/net/r8169_main.c
+++ b/drivers/net/r8169_main.c
@@ -1542,10 +1542,10 @@ static void rtl_set_rx_tx_desc_registers(struct rtl8169_private *tp)
 	 * register to be written before TxDescAddrLow to work.
 	 * Switching from MMIO to I/O access fixes the issue as well.
 	 */
-	RTL_W32(tp, TxDescStartAddrHigh, ((u64) tp->TxPhyAddr) >> 32);
-	RTL_W32(tp, TxDescStartAddrLow, ((u64) tp->TxPhyAddr) & DMA_BIT_MASK(32));
-	RTL_W32(tp, RxDescAddrHigh, ((u64) tp->RxPhyAddr) >> 32);
-	RTL_W32(tp, RxDescAddrLow, ((u64) tp->RxPhyAddr) & DMA_BIT_MASK(32));
+	RTL_W32(tp, TxDescStartAddrHigh, upper_32_bits(tp->TxPhyAddr));
+	RTL_W32(tp, TxDescStartAddrLow, lower_32_bits(tp->TxPhyAddr));
+	RTL_W32(tp, RxDescAddrHigh, upper_32_bits(tp->RxPhyAddr));
+	RTL_W32(tp, RxDescAddrLow, lower_32_bits(tp->RxPhyAddr));
 }
 
 static void rtl8169_set_magic_reg(struct rtl8169_private *tp)
-- 
2.39.5



