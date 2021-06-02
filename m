Delivery-date: Wed, 02 Jun 2021 12:03:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNiy-0000kB-4a
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:03:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNis-0002Bx-Gu
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:03:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjNLK42T734dV/ezXdhaS6JRo+IJs82IPsaE7ovnc8c=; b=xdtqzc8oqx2h1u
	Nr2Z/Zc2STSPg0GS/+zGxVtQz0HtgAZDiw9zBqfYXrkjsXMrPHDsOvqgWb9b3dWL1rDVHcK7mNFg3
	/m1MDTHp1D/l4woTvGsB0CW6ZMGPD+ou0dEVM3vmsv8Rx9QgRKuF0A8MWONa/nTnk3EzcFAaTZ4sH
	2uNUUTC75TntGnEgNZjMh4A06yEk3AsLKEOwDHfBUdNBr9XI5fNdneatZGhlidgPCx/bi/MEt6e6T
	o4lF8xwcuzMLKBgwQODPIlfmwyB01qY1uKO4HDMjc972kO/l1XMyR1z5MsxN5p4wnAD9ORiFWN7cC
	eTeWM91i4S7ktndL774Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNh1-0038Tk-1e; Wed, 02 Jun 2021 10:01:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNap-0036Fc-2E
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:22 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MA-HV; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00039U-R1; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:50 +0200
Message-Id: <20210602095507.24609-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025519_157896_E400E730 
X-CRM114-Status: GOOD (  12.56  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/24] clk: divider: Add ro ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux version of the clk divider exports a clk_divider_ro_ops. Do
the same for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-divider.c | 4 ++++
 include/linux/clk.h       | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 446b35e1ed..447c43dc93 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -302,6 +302,10 @@ const struct clk_ops clk_divider_ops = {
 	.round_rate = clk_divider_round_rate,
 };
 
+const struct clk_ops clk_divider_ro_ops = {
+	.recalc_rate = clk_divider_recalc_rate,
+};
+
 struct clk *clk_divider_alloc(const char *name, const char *parent,
 			      unsigned clk_flags, void __iomem *reg, u8 shift,
 			      u8 width, unsigned div_flags)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index b8674973fa..e1db903d74 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -451,6 +451,7 @@ struct clk_divider {
 #define CLK_MUX_READ_ONLY		(1 << 3) /* mux can't be changed */
 
 extern const struct clk_ops clk_divider_ops;
+extern const struct clk_ops clk_divider_ro_ops;
 
 unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
 		unsigned int val,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

