Delivery-date: Tue, 04 May 2021 16:11:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldvm7-0005Jm-Qn
	for lore@lore.pengutronix.de; Tue, 04 May 2021 16:11:47 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldvm7-0006lA-60
	for lore@pengutronix.de; Tue, 04 May 2021 16:11:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V5ujQGw56TQ4WpZVa4n4jFDdNwhx6BSQ2IKWk0Ciwm0=; b=LtVhVHFA7dm1NBmzn93FvxFvN
	y35wB5VicCLjn7U7hjGF8fgC77s62jh/p1VB8yTS1WwyGHzJYjDkRhFnLv1GYY1YhKp77L0OJ//yC
	WY5+FpirwQt1OlFLmBvC5jWTaimjP5710/GQMfeZe/G/O405jj/R6L+xzgtfYolvyrMnZGL+JtiEp
	DjAOEpy0Y/v/Y8/0N0xXfpi3vNolhTDPLntSSm08XuLjKNrdqK4De0ceFGPt1IqljC7Xn0SWqYpMY
	CMZTOGCq3MApcRxSMr/VcIvlYgf+ec+RW4ixRsfUS7X+pdHdXU89Y5aTwdlCbCiFjTa/3xH4Bk+U6
	BujW2xc7Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldvl7-00GL39-I7; Tue, 04 May 2021 14:10:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldvl1-00GL2N-Mo
 for barebox@desiato.infradead.org; Tue, 04 May 2021 14:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=eZyEhYdMh4QS3xCqDCoyDr1Hk/B+R1nrtSmuaCQLrKM=; b=cSYi+NCehMe8FAbhIN506Gd50+
 soiqaKJzFU+7LwHd06BY5vg09rt1B+fJaqWI5WmP6bv/IR6Q9yHtAGoyYOu/7ZeFwp97SGdVJ3Sy7
 Z0bqAFyoVAzQugQx0f00gOyuTaNij+X7EpCpm14aAfpqKg4ASqtRK8JYVLBrFk2qAlQ7pKV3WzKdk
 vlfSko3gQCGLExcSCwT4YnyBy/amputaqNS9JAywrqeoLW2iPSuz5Dv7nchfNxuC89KOdumYhNoNL
 siZdfacMkUrT2BP8PgcGdu8D4BI73gHfbD6QPlNwafNC4aTWQ0ZAfrGdoFCi0+WGoo+5LJtJohXfP
 J0pSaAzg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldvkz-0041iw-1O
 for barebox@lists.infradead.org; Tue, 04 May 2021 14:10:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldvkv-0006RK-FU; Tue, 04 May 2021 16:10:33 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldvkv-0000ve-31; Tue, 04 May 2021 16:10:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  4 May 2021 16:10:30 +0200
Message-Id: <20210504141031.3457-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210504141031.3457-1-s.hauer@pengutronix.de>
References: <20210504141031.3457-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_071037_095831_A94E1DFA 
X-CRM114-Status: GOOD (  12.20  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] clk: imx28: propagate rate change to parents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The gate clocks need to be able to set their parent's clock rates so
that drivers actually can change their clock rates. The same is done
in Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/mxs/clk.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/mxs/clk.h b/drivers/clk/mxs/clk.h
index 60f2408cba..a93361a9ea 100644
--- a/drivers/clk/mxs/clk.h
+++ b/drivers/clk/mxs/clk.h
@@ -35,7 +35,7 @@ static inline struct clk *mxs_clk_fixed(const char *name, int rate)
 static inline struct clk *mxs_clk_gate(const char *name,
 			const char *parent_name, void __iomem *reg, u8 shift)
 {
-	return clk_gate_inverted(name, parent_name, reg, shift, 0);
+	return clk_gate_inverted(name, parent_name, reg, shift, CLK_SET_RATE_PARENT);
 }
 
 static inline struct clk *mxs_clk_mux(const char *name, void __iomem *reg,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

