Delivery-date: Fri, 19 Dec 2025 11:15:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWa-00DAIe-2K
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:15:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWa-0002Zp-4Q
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:15:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vi9lh/qBOHfrL3DZ+uoqWFmSBSh8F0HoqpPY0mCD/EA=; b=D+rU3Vh4x3o2OWAWm/MqSagawe
	X5JFXH8o316QyEAa9CTsRaEHjGiLMGxggRInwTYk+nMTNjBhWSQ4oglWJ951jawvC2KbxMa2zEoJ4
	2pM2T1FWnTgHJgtXKJNpsLm8dLaTXg2fE55eW4rUJCbpCNaJWaDtAky60eJIYmHNjfhHkCyvrSK4K
	NwijB3bW8/yLMTOrUtqyMzu0bKwQgFKZSaGjEd6yJkGK80TXQvxmScXArGiWG152wxkHDvCAK5txU
	xuDsG8pEqLBW0zJ7YUYVOHEZtppqPCqq0xJVL8UiecL7j1SLNUwTg4VgzCbN2mArlXSx4MP+2UgP9
	VZdkgoaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVu-0000000A3B9-3Wwx;
	Fri, 19 Dec 2025 10:15:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVs-0000000A388-3i8P
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:15:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Vi9lh/qBOHfrL3DZ+uoqWFmSBSh8F0HoqpPY0mCD/EA=; b=ncbPeKYUiHgFQI2TsgALpFnXKT
	kv4VlrUruro3/CVg1tz51tx0Nd8ypFdIA91hhr8hlSmwSgc063zfwILcXsSUQiVfA+JtNK269pRQn
	GFh0AbF6TxbUjct+HnD44h1SzY/vmXybTf1h/ODT7Q64eMG6Z7DEE7YHuYXB+QthAfaLCvKkUeOO6
	q/oEY2iwk4hiQnCGPrG4enbhK9ey4IbESiKw1D3y5dKptcUq7T1bVqpIoaFLZv1cpSwy7Esy1KLRx
	E7SuxVetyWASPCJjyAjhyZ/zAn3ciL5+Y126pAlkbPwS7GEmKWHB0DkPmTE+5nfM7rru1QU4mjN1l
	m/Rg+cyg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWeN-0000000AZ1o-0uhf
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:19:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-00021e-Ti; Fri, 19 Dec 2025 11:14:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-006RN9-2E;
	Fri, 19 Dec 2025 11:14:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-0000000320L-2U4h;
	Fri, 19 Dec 2025 11:14:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:38 +0100
Message-ID: <20251219101453.2806980-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_091951_551933_6B4F8D51 
X-CRM114-Status: GOOD (  10.09  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 02/49] clk: rockchip: rk3588: Add PLL rate for 1500 MHz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alexander Shiyan <eagle.alexander923@gmail.com>

At least one RK3588 clock (CPLL) uses 1.5 GHz, so let's add
that frequency to the PLL table.
This change is taken from the mainline Linux kernel.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Link: https://lore.barebox.org/20250924060906.6791-1-eagle.alexander923@gmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit dc780c20b06749773dfc38e177957beae14960ab)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3588.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index f6d16ed0cf30..5aecfb3b1b71 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -88,6 +88,7 @@ static struct rockchip_pll_rate_table rk3588_pll_rates[] = {
 	RK3588_PLL_RATE(1560000000, 2, 260, 1, 0),
 	RK3588_PLL_RATE(1536000000, 2, 256, 1, 0),
 	RK3588_PLL_RATE(1512000000, 2, 252, 1, 0),
+	RK3588_PLL_RATE(1500000000, 2, 250, 1, 0),
 	RK3588_PLL_RATE(1488000000, 2, 248, 1, 0),
 	RK3588_PLL_RATE(1464000000, 2, 244, 1, 0),
 	RK3588_PLL_RATE(1440000000, 2, 240, 1, 0),
-- 
2.47.3



