Delivery-date: Tue, 03 May 2022 11:14:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlobb-000QT5-1b
	for lore@lore.pengutronix.de; Tue, 03 May 2022 11:14:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlobZ-0002dQ-Kt
	for lore@pengutronix.de; Tue, 03 May 2022 11:14:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hh0twgpygZPG9UHzgbSBC6kT6XWBU3PGETkit0MdjI=; b=1wvGCheSvKZFAH
	xUg0erc9s80AhPdZnM3sy8zBl5ELVSwQ95FbQRL5JJzkSYLGaIwrK1yN5k0Z1LlWEBq9lGHTaaqrY
	Cn8z2t9bgbxfy1cwnrd4YoQGU9G/6rGbGtAlmYN9ppfJgwkFVLdTxwzKOK3gkhsIU3z1UYgkXZI0Y
	U1jldG5UDwqIcREghrCcv//4rLUT+cdmx6UzoPKCF/eY8woRczYYF3JAkpG3GrBR6a5ohIOy+DXt2
	DMlpueVIkaGYmEGTENCNJAK34eV1uXaSVC4jYqRBDdilOMVzvytY6VAIy2uf6fFfX4OjzRMc2R3yP
	Yh3x6UKahjJ4kPpxoBmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nloaL-004luF-Gm; Tue, 03 May 2022 09:12:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nloa1-004llS-5c
 for barebox@lists.infradead.org; Tue, 03 May 2022 09:12:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nloa0-00028n-1A; Tue, 03 May 2022 11:12:24 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nloa0-0005Fc-MB; Tue, 03 May 2022 11:12:23 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nloZx-00GFCq-2U; Tue, 03 May 2022 11:12:21 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  3 May 2022 11:12:20 +0200
Message-Id: <20220503091220.3871612-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220503091220.3871612-1-o.rempel@pengutronix.de>
References: <20220503091220.3871612-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_021225_244166_6062063C 
X-CRM114-Status: GOOD (  12.37  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v6 5/5] ARM: boards: protonic-imx6: add HW revision specific
 machine compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently we use generic/pinned machine compatible for different HW
revisions. With this patch we extend this compatible string with HW
revision specific.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 0fadd148b4..cdbb8debe6 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -126,6 +126,22 @@ static const struct gpio prt_imx6_kvg_gpios[] = {
 	},
 };
 
+static int prt_of_fixup_hwrev(struct prt_imx6_priv *priv)
+{
+	const char *compat;
+	char *buf;
+
+	compat = of_device_get_match_compatible(priv->dev);
+
+	buf = xasprintf("%s-m%u-r%u", compat, priv->hw_id,
+			priv->hw_rev);
+	barebox_set_of_machine_compatible(buf);
+
+	free(buf);
+
+	return 0;
+}
+
 static int prt_imx6_read_rfid(struct prt_imx6_priv *priv, void *buf,
 			      size_t size)
 {
@@ -797,7 +813,6 @@ exit_get_dcfg:
 static int prt_imx6_probe(struct device_d *dev)
 {
 	struct prt_imx6_priv *priv;
-	const char *name, *ptr;
 	struct param_d *p;
 	int ret;
 
@@ -806,9 +821,7 @@ static int prt_imx6_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	priv->dev = dev;
-	name = of_device_get_match_compatible(priv->dev);
-	ptr = strchr(name, ',');
-	priv->name =  ptr ? ptr + 1 : name;
+	priv->name = of_get_machine_compatible();
 
 	pr_info("Detected machine type: %s\n", priv->name);
 
@@ -818,6 +831,7 @@ static int prt_imx6_probe(struct device_d *dev)
 
 	pr_info("  HW type:     %d\n", priv->hw_id);
 	pr_info("  HW revision: %d\n", priv->hw_rev);
+	prt_of_fixup_hwrev(priv);
 
 	ret = prt_imx6_get_dcfg(priv);
 	if (ret)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

