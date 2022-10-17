Delivery-date: Mon, 17 Oct 2022 15:52:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQXP-00BfBS-53
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 15:52:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQXN-0001Yy-16
	for lore@pengutronix.de; Mon, 17 Oct 2022 15:52:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tpy2swL4j31AaCF51tFHydO8mQz2HaIbSGqL2UizGrA=; b=zuKZn18Dz5xJBvD4bhKc8p+Vmz
	yBBG0qWGDLxZEbMunq6qaKGiKz1JX0pAy4lJB8G2a2mGtJpt0ioRwqEFCjPnRl8xfsbCDjEyP1v4t
	52N0p+LLJcjLNRb3BBNYYEHLlV9B10MZQ8XbTxjsghShZVJwJTbYilYWdxt94jZmvvqeYJEZwStCv
	+MZH9DqYkB+JsefS9pbHxcEP9sj7OrGv+XpOwIJxcxNIYzixJey1mQhB29K/5hLSj5eoIwA8DcXBY
	Z0gX832YMnnbW0hP9WhfF9l4SdyJ3swIWqt8P5o0DG4p3JwsWdw148R9vN8T+hNA/hcqG8WlM5pD/
	wEMy43IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQUy-00CJn9-9d; Mon, 17 Oct 2022 13:49:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQUn-00CJY2-My
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 13:49:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUm-00011w-8V; Mon, 17 Oct 2022 15:49:32 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUl-0025Xi-FA; Mon, 17 Oct 2022 15:49:31 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUk-00373t-Cd; Mon, 17 Oct 2022 15:49:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hans Christian Lonstad <hcl@datarespons.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 15:49:28 +0200
Message-Id: <20221017134929.622022-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017134929.622022-1-a.fatoum@pengutronix.de>
References: <20221017134929.622022-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_064933_807471_9D3917B6 
X-CRM114-Status: GOOD (  10.23  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH master 2/3] soc: imx: imx8m-featctrl: check if all bits are set
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The bits are not documented in the reference manual, so the bit masks
were taken from NXP code written for U-Boot. There, checking is done
for whether any bit is set. For 8MP however, all-bits-set is checked.

Testing on i.MX8MM shows that all bits are set though, so switch to
that for uniformity.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/soc/imx/imx8m-featctrl.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/imx8m-featctrl.c b/drivers/soc/imx/imx8m-featctrl.c
index 480c80e6c1d9..1798d0fc2863 100644
--- a/drivers/soc/imx/imx8m-featctrl.c
+++ b/drivers/soc/imx/imx8m-featctrl.c
@@ -28,6 +28,11 @@ static int imx8m_feat_check(struct feature_controller *feat, int idx)
 	return test_bit(idx, priv->features) ? FEATCTRL_OKAY : FEATCTRL_GATED;
 }
 
+static inline bool is_fused(u32 val, u32 bitmask)
+{
+	return bitmask && (val & bitmask) == bitmask;
+}
+
 int imx8m_feat_ctrl_init(struct device_d *dev, u32 tester4,
 			 const struct imx8m_featctrl_data *data)
 {
@@ -44,9 +49,9 @@ int imx8m_feat_ctrl_init(struct device_d *dev, u32 tester4,
 
 	bitmap_fill(features, IMX8M_FEAT_END);
 
-	if (tester4 & data->vpu_bitmask)
+	if (is_fused(tester4, data->vpu_bitmask))
 		clear_bit(IMX8M_FEAT_VPU, features);
-	if (tester4 & data->gpu_bitmask)
+	if (is_fused(tester4, data->gpu_bitmask))
 		clear_bit(IMX8M_FEAT_GPU, features);
 
 	switch (tester4 & 3) {
-- 
2.30.2



