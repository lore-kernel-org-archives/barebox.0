Delivery-date: Wed, 11 Jun 2025 00:49:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP7n5-005x1e-0h
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 00:49:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP7n4-0006oB-CB
	for lore@pengutronix.de; Wed, 11 Jun 2025 00:49:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/E/tP+YVUypOaZEIhmecmmjzBHXDiQPGivpY13RtZU8=; b=3dSrgxayMKqXaaoH1GZOnpgEeD
	l0DHbAbylxfDc/XsLnjKa5Eewp+iptU4QF4EAO7TOYKb4nGQJSLSNd5UTGP3XfHybHg4pB9tSFcc9
	P/9yuC4juHuEc8sm8pRItoQddssttYtmRSq9YKMAS1scwHkTbNRCRAhxF5cxuCoBsp/gH1LmxNNT5
	fnFOkEHFdZzMOfq5ggioMFtfbHSHZAuz1jyz1cRmMxLlLeSJtLHuxaVdBdmITkcTNbIr3fdir+j+P
	6cKdGNbBpwWKphofilr+MkudE5UQGwq1wfpUE2aaXYZhchzcynFVTh6gGzo7ApSsEqoJbuwocqa/Y
	8KtKXVVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP7mP-00000008Gl0-2YLD;
	Tue, 10 Jun 2025 22:49:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP4Tp-00000007uAt-15Cd
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 19:17:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP4Tn-0004yO-CV; Tue, 10 Jun 2025 21:17:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP4Tn-002pFs-0e;
	Tue, 10 Jun 2025 21:17:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP4Tn-00AIBE-0J;
	Tue, 10 Jun 2025 21:17:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jun 2025 21:17:48 +0200
Message-Id: <20250610191749.2452927-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_121753_296360_E60CBF90 
X-CRM114-Status: GOOD (  12.06  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] hw_random: omap-rng: ignore clocks for OMAP3/4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not have clock drivers for OMAP, including the AM33xx.
The omap-rng driver calls clk_get_optional and so far this returned
NULL, because CONFIG_COMMON_CLK_OF_PROVIDER was disabled.

In configurations with the option enabled, we get understandably an
error code, which makes the drive defer probe indefinitely.

We are unlikely to add clock drivers for am33xx after all these years,
so just tweak the RNG driver to require clock driver support only on K3
SoCs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/omap-rng.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/hw_random/omap-rng.c b/drivers/hw_random/omap-rng.c
index 6b69994aad0b..2028be650785 100644
--- a/drivers/hw_random/omap-rng.c
+++ b/drivers/hw_random/omap-rng.c
@@ -133,6 +133,7 @@ struct omap_rng_dev;
  * @data_present: Callback to determine if data is available.
  * @init: Callback for IP specific initialization sequence.
  * @cleanup: Callback for IP specific cleanup sequence.
+ * @ignore_clocks: assume clocks are enabled (barebox-specific)
  */
 struct omap_rng_pdata {
 	u16	*regs;
@@ -140,6 +141,7 @@ struct omap_rng_pdata {
 	u32	(*data_present)(struct omap_rng_dev *priv);
 	int	(*init)(struct omap_rng_dev *priv);
 	void	(*cleanup)(struct omap_rng_dev *priv);
+	bool	ignore_clocks;
 };
 
 struct omap_rng_dev {
@@ -230,6 +232,7 @@ static struct omap_rng_pdata omap2_rng_pdata = {
 	.data_present	= omap2_rng_data_present,
 	.init		= omap2_rng_init,
 	.cleanup	= omap2_rng_cleanup,
+	.ignore_clocks	= true,
 };
 
 static inline u32 omap4_rng_data_present(struct omap_rng_dev *priv)
@@ -299,6 +302,7 @@ static struct omap_rng_pdata omap4_rng_pdata = {
 	.data_present	= omap4_rng_data_present,
 	.init		= omap4_rng_init,
 	.cleanup	= omap4_rng_cleanup,
+	.ignore_clocks	= true,
 };
 
 static struct omap_rng_pdata eip76_rng_pdata = {
-- 
2.39.5



