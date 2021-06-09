Delivery-date: Wed, 09 Jun 2021 11:26:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquTn-0006Pb-3X
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 11:26:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquTl-0001hZ-1F
	for lore@pengutronix.de; Wed, 09 Jun 2021 11:26:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfLBatS8EPAAELS75x41cb2g0N1jwITkYDhB8+8670M=; b=i4Nf04f0/O1MFM
	bTTjsaQjDGYKWryjOJtPbg8aEuUJ0f9s+AT3yXMUuAer+cybR9LCdI+djNl41sbQdTwf/zKOMprtk
	Zm96uh7n5sJnnZkkpGKpH/dydW2zjHpQohWOUdAl071Eo7KEKqL5zGwZSjRU+A4li2Sou9CDU07dr
	gZDX8fReZHwvmlgR8K82jdmKDiyy32aurMftzYMvJ6JRv8GUABKHJxfA4rLd9ovSNP5mgJDvJL7Aj
	NxyYjiCN6+Rh7iP/3pOOqRPCuzjVYOceFhMDF3OaNRmEYDnO6PcyKTuvpV0g+AjUFRVDt6S8COVJ/
	h7aFSW+ierERAKl7Gz3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lquSO-00Cedj-1E; Wed, 09 Jun 2021 09:25:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqtzX-00CVXQ-Mm
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 08:55:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzV-0005bL-Sg; Wed, 09 Jun 2021 10:55:13 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzV-0006FM-He; Wed, 09 Jun 2021 10:55:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jun 2021 10:55:12 +0200
Message-Id: <20210609085512.3865-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210609085512.3865-1-a.fatoum@pengutronix.de>
References: <20210609085512.3865-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_015515_817920_108E9831 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] fixup! net: eqos: Rockchip support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make drvinfo/debug initcalls more useful by using names featuring the
driver's variant.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_rockchip.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index fb37243f6993..413b12739aa7 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -326,12 +326,12 @@ static struct eqos_ops rk_gmac_ops = {
 	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_AV,
 };
 
-static int dwc_ether_probe(struct device_d *dev)
+static int rk_gmac_probe(struct device_d *dev)
 {
 	return eqos_probe(dev, &rk_gmac_ops, xzalloc(sizeof(struct eqos_rk_gmac)));
 }
 
-static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
+static __maybe_unused struct of_device_id rk_gmac_compatible[] = {
 	{
 		.compatible = "rockchip,rk3568-gmac",
 		.data = &rk3568_ops,
@@ -340,10 +340,10 @@ static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
 	}
 };
 
-static struct driver_d dwc_ether_driver = {
-	.name = "designware_eqos",
-	.probe = dwc_ether_probe,
+static struct driver_d rk_gmac_driver = {
+	.name = "eqos-rockchip",
+	.probe = rk_gmac_probe,
 	.remove = eqos_remove,
-	.of_compatible = DRV_OF_COMPAT(dwc_ether_compatible),
+	.of_compatible = DRV_OF_COMPAT(rk_gmac_compatible),
 };
-device_platform_driver(dwc_ether_driver);
+device_platform_driver(rk_gmac_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

