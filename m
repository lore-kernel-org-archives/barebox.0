Delivery-date: Wed, 27 Apr 2022 09:39:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njcGR-00Glaw-Mu
	for lore@lore.pengutronix.de; Wed, 27 Apr 2022 09:39:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njcGO-0006i2-Ak
	for lore@pengutronix.de; Wed, 27 Apr 2022 09:39:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muAxVVzqAhmOpjwKm6gcsy9rdk8Z/vnfJzTDZDyV1N4=; b=sLV0OIaihg7u1G
	nKXByAD2AgPcwGRcmhZ4kA3Qb3xj2euFp5LiMF4bc8+H2J5Odhq0LVbOSgWioi9J2uZMfa3Qb7Fv0
	creOZqkq6cz+Igkqm3epzhoBui/GPQcAoojwbt5ltREn01Dw8yHC95z6P0tC21J+a8nLz4Xu/gYP9
	bosfSD8jOhfU7wEprSsaDw5o0lLctdSqrZcD1U3c23micp5Lt33JQLzG5uucrOsZZYN4lNgzlvXve
	/1Ukkvvy7F3jcvUdhdmbFGrrkjpjlBfeVncFCWHXRTAo4leBw+joH5d8D2rOzK0QpRRUcT/CIyz/l
	Omz5oCH5qLgKjEjb63jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njcFA-000Kpr-Ix; Wed, 27 Apr 2022 07:37:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njcEr-000KgA-JW
 for barebox@lists.infradead.org; Wed, 27 Apr 2022 07:37:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1njcEq-0006HF-CG; Wed, 27 Apr 2022 09:37:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1njcEr-005VuG-48; Wed, 27 Apr 2022 09:37:27 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1njcEo-00D7O5-CH; Wed, 27 Apr 2022 09:37:26 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 27 Apr 2022 09:37:24 +0200
Message-Id: <20220427073724.3126601-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220427073724.3126601-1-o.rempel@pengutronix.de>
References: <20220427073724.3126601-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_003729_688764_77F02139 
X-CRM114-Status: GOOD (  12.55  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 5/5] ARM: boards: protonic-imx6: add HW revision specific
 machine compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently we use generic/pinned machine compatible for different HW
revisions. With this patch we extend this compatible string with HW
revision specific.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 0fadd148b4..1a1e5540ee 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -85,6 +85,7 @@ struct prt_imx6_priv {
 	const struct prt_machine_data *dcfg;
 	unsigned int hw_id;
 	unsigned int hw_rev;
+	const char *compatible;
 	const char *name;
 	unsigned int usb_delay;
 	unsigned int no_usb_check;
@@ -126,6 +127,20 @@ static const struct gpio prt_imx6_kvg_gpios[] = {
 	},
 };
 
+static int prt_of_fixup_hwrev(struct device_node *dstroot, void *arg)
+{
+	struct prt_imx6_priv *priv = prt_priv;
+	char *buf;
+
+	buf = xasprintf("%s,model:%u,rev:%u", priv->compatible, priv->hw_id,
+			priv->hw_rev);
+	of_fixup_machine_compatible(dstroot, buf);
+
+	free(buf);
+
+	return 0;
+}
+
 static int prt_imx6_read_rfid(struct prt_imx6_priv *priv, void *buf,
 			      size_t size)
 {
@@ -797,7 +812,7 @@ exit_get_dcfg:
 static int prt_imx6_probe(struct device_d *dev)
 {
 	struct prt_imx6_priv *priv;
-	const char *name, *ptr;
+	const char *ptr;
 	struct param_d *p;
 	int ret;
 
@@ -806,9 +821,9 @@ static int prt_imx6_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	priv->dev = dev;
-	name = of_device_get_match_compatible(priv->dev);
-	ptr = strchr(name, ',');
-	priv->name =  ptr ? ptr + 1 : name;
+	priv->compatible = of_device_get_match_compatible(priv->dev);
+	ptr = strchr(priv->compatible, ',');
+	priv->name =  ptr ? ptr + 1 : priv->compatible;
 
 	pr_info("Detected machine type: %s\n", priv->name);
 
@@ -841,6 +856,8 @@ static int prt_imx6_probe(struct device_d *dev)
 
 	prt_priv = priv;
 
+	of_register_fixup(prt_of_fixup_hwrev, NULL);
+
 	return 0;
 free_priv:
 	kfree(priv);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

