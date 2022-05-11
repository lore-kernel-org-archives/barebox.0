Delivery-date: Wed, 11 May 2022 14:33:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nolX7-009dqJ-VX
	for lore@lore.pengutronix.de; Wed, 11 May 2022 14:33:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nolX6-0002bK-MN
	for lore@pengutronix.de; Wed, 11 May 2022 14:33:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ws13GbG9rH88YH2BYrOTqXvNhNJ1TcZ7UL+vaG+6RK8=; b=pWyKZpwd+vZOdx
	WJENaNUEzzNyhwZAOz2sAi+N26DJTltZ3wmV99AxkHo8MPPMy00v2VB7uxR/25YPtmZZL/kMxHqGV
	xpFoki7qAerB+xfAJ22rfgXbuJqoAFVLwt9Y6aw4WmEPyc84s6HKRQ7pg2qgC6KpzsshmZ/hccNNx
	OxAI+Y8EeUOZO9v0CeSx+aIphI17wD67fOF7u3rgali/VzeSHTu/UrgbGKJCeOtdWqbfe3g5Wk+UO
	0OP7gIGsDuM++Cc//4uEpMKgVQrRKwKYHLVl4vpRG5I4OcCw4hNNrnG02k/lnGy71qvOYWyCEAw2t
	U0ULGzLXgN2i3I8VrvpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nolVO-006n3F-TV; Wed, 11 May 2022 12:31:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nolVJ-006n2n-H5
 for barebox@lists.infradead.org; Wed, 11 May 2022 12:31:47 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1nolVG-0002PQ-Ey; Wed, 11 May 2022 14:31:42 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 11 May 2022 14:31:39 +0200
Message-Id: <20220511123139.2767034-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_053145_605772_A3C3729C 
X-CRM114-Status: GOOD (  12.61  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Bastian Krause <bst@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] clk: handle NULL args in clk_{g,s}et_parent()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

NULL struct clk pointers should be treated just as the Linux kernel clk
driver does [1]. The reasoning should also apply to the parent clk
argument.

A NULL struct clk pointer can happen for example on the Freescale i.MX6
SABRE Smart Device Board if CONFIG_DRIVER_VIDEO_IMX_IPUV3 is disabled,
leading to assigned-clocks IMX6QDL_CLK_LDB_DI0_SEL and
IMX6QDL_CLK_LDB_DI1_SEL [2] being unavailable. Without this patch, the
board hangs while setting those assigned clock configurations since [3].

[1] 89ac8d7ae1cd ("clk: handle NULL struct clk gracefully")
[2] dts/src/arm/imx6qdl-sabresd.dtsi
[3] f5eb5fddb4 ("clk: fix of clk set defaults when dev is a clk provider")

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
Changes since (implicit) v1:
- make clk_get_parent(NULL) return NULL
- undo shifting call to clk_get_parent() in clk_set_parent()
---
 drivers/clk/clk.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 8e317b4b05..52e309e877 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -232,6 +232,9 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
 	int i, ret;
 	struct clk *curparent = clk_get_parent(clk);
 
+	if (!clk || !newparent)
+		return 0;
+
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 	if (IS_ERR(newparent))
@@ -287,7 +290,7 @@ struct clk *clk_get_parent(struct clk *clk)
 	struct clk_hw *hw;
 	int idx;
 
-	if (IS_ERR(clk))
+	if (IS_ERR_OR_NULL(clk))
 		return clk;
 
 	if (!clk->num_parents)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

