Delivery-date: Mon, 07 Mar 2022 18:03:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRGm3-003fpC-Mm
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 18:03:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRGm2-0004dw-J1
	for lore@pengutronix.de; Mon, 07 Mar 2022 18:03:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWJY3gReUgKhSMk0hcomUBZsemFlKGNN+nVZ5APtpLE=; b=ZxD9BCIkX8y7uf
	/R3xPitANqCeQKsgRMuyGnH83gZwBEZ97/xyA01aC6peJVV5fbbhs45jy3A1PKGdw92CSb+juzSP4
	qMRXV+TDBo1pt6XeP8RjeUEVs8ShkkZPfrhMjeF8DZAYIRUpVuAvgRUUIK0XzD+u6hDfDce3OG4Qh
	KGHPV2BxAHlawpeXpcJ5yzcHn5Nzlei1N7dB0PSREByxrZS6Rr9aq/f3LrtmFalG0sXuZav9HIgmE
	rcM35Uejd432ejHeF5YhVyBzoXXHGtCjK51oZvgq4R+1Yg/D9zchmd3TBr3bZky1ZnDBFEpnGCx7A
	0/8sdUwMmuW9WnJa25Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRGkf-000xOF-Dp; Mon, 07 Mar 2022 17:02:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRGkO-000xJO-Cu
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 17:02:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nRGkN-0004Pw-64; Mon, 07 Mar 2022 18:02:11 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nRGkM-00GWP7-M9; Mon, 07 Mar 2022 18:02:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Mar 2022 18:02:10 +0100
Message-Id: <20220307170210.3937726-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220307170210.3937726-1-a.fatoum@pengutronix.de>
References: <20220307170210.3937726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_090212_458956_C9EE2F60 
X-CRM114-Status: GOOD (  10.57  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH next 2/2] fixup! clk: implement clk_hw_reparent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Revert "clk: implement clk_hw_reparent"

The implementation is faulty. In Linux, the function does accounting,
which seems not applicable to barebox and it does not do any hardware
access or set parentage, unlike the barebox port. As a previous commit
removed the sole use site of the helper to fix a bug, drop the helper
altogether.

This reverts commit 55a41677e2be90bbcaaa93cc541ead71a1e632d6.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Should result in an empty patch that can be skipped.
---
 include/linux/clk.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index ab96e36010c3..7fd835c35e51 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -241,14 +241,6 @@ int clk_hw_set_rate(struct clk_hw *hw, unsigned long rate);
 int clk_set_parent(struct clk *clk, struct clk *parent);
 int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *hwp);
 
-static inline void clk_hw_reparent(struct clk_hw *hw, struct clk_hw *new_parent)
-{
-	if (!hw)
-		return;
-
-	clk_hw_set_parent(hw, new_parent);
-}
-
 /**
  * clk_get_parent - get the parent clock source for this clock
  * @clk: clock source
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

