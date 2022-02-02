Delivery-date: Wed, 02 Feb 2022 20:57:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFLkn-0042S4-OM
	for lore@lore.pengutronix.de; Wed, 02 Feb 2022 20:57:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFLkm-0006IY-H6
	for lore@pengutronix.de; Wed, 02 Feb 2022 20:57:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6joAE2VGVwJ6ICXEclpDn166lNojQi64Nag2fvO6CRE=; b=IhiQTQnFbKCzr6
	9tM8JAyBht4TVALmY88KLLgv8M/VllVCgvEllBEnlYsLBbrHzTR+MLVUvnX1j2QgAzqozSzcKrMuX
	simMwtT9uzGq7M3k9POwceQ1UF2n64KbL4KoyLqCB1eGJom12lEsiMgoovJJit/MDum/e0Bk7tjiw
	EhTweHHkp+QoYrGcLkdiFW19gt9XgXybHDgMiuUuBqkmIkqvdJVFznv5OmKIQXcptU6yxu6MkcbPd
	l4L07o+gKAsSMtdzZRVkMNEx3tgihTNvDCP1ORbf36kRMAHQhARxAoIiIpb0SWMntAHCt4MEoNXhM
	sA9OTfJAI/RU4EpPtj5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFLj6-00Gjwi-Om; Wed, 02 Feb 2022 19:55:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFLj0-00Gjv7-Go
 for barebox@lists.infradead.org; Wed, 02 Feb 2022 19:55:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nFLiw-00066m-LR; Wed, 02 Feb 2022 20:55:26 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nFLiw-00084H-6K; Wed, 02 Feb 2022 20:55:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de, uol@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Feb 2022 20:55:24 +0100
Message-Id: <20220202195524.30740-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_115530_589537_998CD376 
X-CRM114-Status: GOOD (  13.32  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] clk: imx6: fix PLL exception for i.MX6DQ revision 1.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

cpu_is_mx6* and imx_silicon_revision access static variables only
initialized in imx_init(). Use the alternative functions instead, that
will always consult the hardware to determine the version.
This requires us to know beforehand that we run on an i.MX6, but this
is a given when probing the imx6-ccm driver.

Other instances of this issue were removed in 37bc313add40 ("clk: imx6:
fix use of cpu_is_mx6* before they are initialized"), but this instance
was reintroduced as part of b534f79112f0 ("clk: imx6: Fix procedure to
switch the parent of LDB_DI_CLK").

This change only affects i.MX6D/Q SoCs with exactly revision 1.0 and
aligns their behavior to that of the Linux clock driver.

Fixes: b534f79112f0 ("clk: imx6: Fix procedure to switch the parent of LDB_DI_CLK")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 6935a8e85292..e3afcf7858bb 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -60,8 +60,8 @@ static inline int cpu_mx6_is_plus(void)
 
 /* Audio/Video PLL post dividers don't work on i.MX6q revision 1.0 */
 static inline int cpu_has_working_video_pll_post_div(void) {
-	return !((cpu_is_mx6q() || cpu_is_mx6d()) &&
-		 imx_silicon_revision() == IMX_CHIP_REV_1_0);
+	return !((cpu_mx6_is_mx6q() || cpu_mx6_is_mx6d()) &&
+		 __imx6_cpu_revision() == IMX_CHIP_REV_1_0);
 }
 
 /* i.MX6 Quad/Dual/DualLite/Solo are all affected */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

