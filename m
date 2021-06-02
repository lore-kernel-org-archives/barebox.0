Delivery-date: Wed, 02 Jun 2021 12:03:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNiT-0000jQ-7z
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:03:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNiN-000254-Ru
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:03:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngVHkbjk+lryfPMCynWOc0F6Lm+C9PFdXCkjlha1F4o=; b=a42QK/ZLiJOlBW
	RJawq5UJoXVILMSwqnrN5+GF+B2EI+L7i/fts9cIOaaJbGr0O/Mt1nZMXboDK2/F5hU1MRP3lDHwU
	iy9XIGAOG52dxRSqrSsDoH7aavREYx/R31OI9K2l4GEch0sFaOGePag9Dvj/i4sfEvySAvBNSlma8
	0ezqwA3VnOH9wrPNw3tR/hLUmN0iKviaD/OtBQc+5WG45Xso67msj4eM/SZcdOSiW96krEMEEwqNs
	JAX+L39r4jU3AOzUyGyxBADuuu2Hp5GGbs6forZcFn7tZ4pU19qhoSTNwqn6pVKp/QSgPBgAM9ofl
	dpH1Lsr6ooMSPQAUmzvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNgi-0038K1-3k; Wed, 02 Jun 2021 10:01:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNap-0036FZ-2k
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:22 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MB-J9; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00039X-RP; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:51 +0200
Message-Id: <20210602095507.24609-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025519_179377_ADE06363 
X-CRM114-Status: GOOD (  13.14  )
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
Subject: [PATCH 08/24] clk: divider: Make clk_mux_ops const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

clk_mux_ops shouldn't be changed, so make it const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-mux.c | 2 +-
 include/linux/clk.h   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 981f3aa853..bd5b50ad18 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -41,7 +41,7 @@ static int clk_mux_set_parent(struct clk_hw *hw, u8 idx)
 	return 0;
 }
 
-struct clk_ops clk_mux_ops = {
+const struct clk_ops clk_mux_ops = {
 	.set_rate = clk_parent_set_rate,
 	.round_rate = clk_parent_round_rate,
 	.get_parent = clk_mux_get_parent,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index e1db903d74..ede2b676fe 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -503,7 +503,7 @@ struct clk_mux {
 
 #define to_clk_mux(_hw) container_of(_hw, struct clk_mux, hw)
 
-extern struct clk_ops clk_mux_ops;
+extern const struct clk_ops clk_mux_ops;
 
 struct clk *clk_mux_alloc(const char *name, unsigned clk_flags,
 			  void __iomem *reg, u8 shift, u8 width,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

