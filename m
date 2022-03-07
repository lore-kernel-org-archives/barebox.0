Delivery-date: Mon, 07 Mar 2022 18:03:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRGls-003fo7-Ic
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 18:03:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRGlr-0004ce-D3
	for lore@pengutronix.de; Mon, 07 Mar 2022 18:03:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R7dvpUyiGTk0cezNceQUC0mQT2bQQ6zALaA3IgO47Tw=; b=F8irTTmtVQUEK+
	TeDvNBlefAErXv3DfucQhi2CExwHtGcPHaziXMNqy7tjLPFF/d3+uFECCSu937f7VtmMnhT/iMUY+
	MzXPiVeQ+HtIxxXnxUYB8H8qhPEScqrd3PdvmnsjMEO/Eg/XvlqSJQxlrmisg3z3sWq4pe20QadRm
	FJ4S6XiooYCXs/cb+J9RnfB2MJOCzGcon8lKwMkBZ6ixTtfwf64TkhMPfu8R7aqWmdiBYRfrlliHI
	utZwPBHy7cT8VBmLY6ilf0vlCeMrEePx51UtusVQPOftoe/boEC5l7bsnOHV0Vrsgc0dmFjpycq/U
	BZ/kiby504lUCvcaD1dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRGkc-000xNZ-LX; Mon, 07 Mar 2022 17:02:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRGkO-000xJN-Cg
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 17:02:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nRGkN-0004Pv-4a; Mon, 07 Mar 2022 18:02:11 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nRGkM-00GWP5-Lg; Mon, 07 Mar 2022 18:02:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Mar 2022 18:02:09 +0100
Message-Id: <20220307170210.3937726-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_090212_454423_70C85BAF 
X-CRM114-Status: GOOD (  11.93  )
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
Subject: [PATCH next 1/2] fixup! clk: stm32mp1: sync with Linux v5.17-rc1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

clk: stm32mp1: fix infinite recursion with composite clock

Linux clk_hw_reparent does some accounting, which seems to be not necessary
for barebox. It does not do any hardware access and is distinct from
clk_hw_set_parent. The faulty barebox implementation, however,
configures a new parent leading to:

  &rcc {
    assigned-clocks = <&rcc ETHCK_K>;
     assigned-clock-parents = <&rcc PLL4_P>;
  };

to trigger an infinite recursion: ETHCK will have its parent set, then
set the parent of its mux sibling, which in turn sets ETHCK and so on.

Restore old working behavior.

Fixes: 3045cc773a94 ("clk: stm32mp1: sync with Linux v5.17-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Please fixup
---
 drivers/clk/clk-stm32mp1.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index 3e0c15ee32b9..c4b03e9f6d74 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -704,22 +704,7 @@ static int clk_mmux_get_parent(struct clk_hw *hw)
 
 static int clk_mmux_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct clk_mux *mux = to_clk_mux(hw);
-	struct stm32_clk_mmux *clk_mmux = to_clk_mmux(mux);
-	struct clk_hw *hwp;
-	int ret, n;
-
-	ret = clk_mux_ops.set_parent(hw, index);
-	if (ret)
-		return ret;
-
-	hwp = clk_hw_get_parent(hw);
-
-	for (n = 0; n < clk_mmux->mmux->nbr_clk; n++)
-		if (clk_mmux->mmux->hws[n] != hw)
-			clk_hw_reparent(clk_mmux->mmux->hws[n], hwp);
-
-	return 0;
+	return clk_mux_ops.set_parent(hw, index);
 }
 
 static const struct clk_ops clk_mmux_ops = {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

