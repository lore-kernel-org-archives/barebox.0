Delivery-date: Wed, 24 Mar 2021 13:26:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lP2aH-0006ZS-HX
	for lore@lore.pengutronix.de; Wed, 24 Mar 2021 13:26:01 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lP2aG-0007Tp-Qf
	for lore@pengutronix.de; Wed, 24 Mar 2021 13:26:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bos5/ZioV447hfZxQzj/AMrnznd6K/0kqC+G1lohHTg=; b=kNEepkbdq+qzxG+6VIjFQ/Gdn
	ph8JBeL8obftFl5uFHu/YJVFV7e+VuM7L+GUwi6BIwCaA/f5X0nE6YD4nCSiGAc3TfyOJD70Nz1Fx
	w5SjYY36PlmrNIU8qzj5tSshkmW9Rgpcx6onxZZaMu0wmRraZH2ipmoibvuuxfYYmgOcfHfOVXzGW
	0/RPQ035LsGT19yimpzO3rz9d98+L7fmMGqie7UAjtEab0HPRKcGP50Sod9u6FU0lgTSjqUZxX5S7
	p+oUGfbZ7em8KyPccc2USkhzr7Nevu05uGM1p/iaC/vKH+bgWx9rrd4bBhL06chjFAcBYtc4FjdcF
	M/GXGVDKA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP2ZD-00H44N-5D; Wed, 24 Mar 2021 12:24:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP2XB-00H3Ek-Ka
 for barebox@lists.infradead.org; Wed, 24 Mar 2021 12:22:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lP2XB-0006mq-89; Wed, 24 Mar 2021 13:22:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lP2XA-0002nK-VI; Wed, 24 Mar 2021 13:22:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Mar 2021 13:22:45 +0100
Message-Id: <20210324122247.10683-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210324122247.10683-1-a.fatoum@pengutronix.de>
References: <20210324122247.10683-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_122249_800480_EE7845A2 
X-CRM114-Status: GOOD (  13.99  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] clk: imx: clk-pllv1: fix wrong PLL recalc on i.MX1/i.MX21
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Adding -Wtype-limits to the build correctly detects that the
first branch (mfn < 0) is never taken as mfn is unsigned.

Import the Linux v5.11 bits that correctly checks the sign of the
sign/magnitude integer. Unlike Linux, we don't need to check
whether it's an i.MX1 or i.MX21 here, because an #ifdef earlier
normalizes the value to be aligned with the i.MX27's.

This however means that a multi-image barebox wasn't and will remain
not able to properly target both <= i.MX21 and newer SoCs at the same time.

This is just build-time tested.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-pllv1.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-pllv1.c b/drivers/clk/imx/clk-pllv1.c
index 283ae843a75d..36192bb2112a 100644
--- a/drivers/clk/imx/clk-pllv1.c
+++ b/drivers/clk/imx/clk-pllv1.c
@@ -12,12 +12,21 @@
 
 #include "clk.h"
 
+#define MFN_BITS	(10)
+#define MFN_SIGN	(BIT(MFN_BITS - 1))
+#define MFN_MASK	(MFN_SIGN - 1)
+
 struct clk_pllv1 {
 	struct clk clk;
 	void __iomem *reg;
 	const char *parent;
 };
 
+static inline bool mfn_is_negative(unsigned int mfn)
+{
+    return mfn & MFN_SIGN;
+}
+
 static unsigned long clk_pllv1_recalc_rate(struct clk *clk,
 		unsigned long parent_rate)
 {
@@ -50,7 +59,7 @@ static unsigned long clk_pllv1_recalc_rate(struct clk *clk,
 	ll = (unsigned long long)freq * mfn_abs;
 
 	do_div(ll, mfd + 1);
-	if (mfn < 0)
+	if (mfn_is_negative(mfn))
 		ll = (freq * mfi) - ll;
 	else
 		ll = (freq * mfi) + ll;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

