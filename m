Delivery-date: Tue, 02 Apr 2024 11:27:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rraQU-003C9s-2i
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 11:27:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rraQU-0005aI-8F
	for lore@pengutronix.de; Tue, 02 Apr 2024 11:27:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZrIq9Ia2rs9HYqSVHdU4DMU+hHe7DUR5HuYJ7IPR9Ho=; b=PW0csnP6fjLRmsMmKZL62P1mE2
	cTd3JjlrhsjQjYD737hoKMjwIvjMDI7+VYewuZCT48pextmPAHPiRtLpcZcAzTWmITFyb8SdGv1o0
	De4ZOfOOcgUdfnAmM0IJLZlZ0muLqIZeLj1DZIwkRUV0P3XDjTnjbkLYC1WUYcxENyB/2fReGI89Y
	u4VHcCGjAp89l6eMy7q8YSJn8A49YOyFmr8kfuofKkutPzWYpiPoMeMjtaX00zgoO08vUCKh8fODi
	lv62TzUQJUok3B5+Fczmm5x81V31uk9/RQR9VUoUF2maTu4Z0Qoxjkpqi7UwPgGbj/b6r7yJFh+Sw
	JG1Z7QBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rraQ2-0000000AQye-0xHz;
	Tue, 02 Apr 2024 09:27:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rraPy-0000000AQwS-0s7k
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 09:26:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rraPv-000506-EX; Tue, 02 Apr 2024 11:26:55 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rraPv-009xCn-28; Tue, 02 Apr 2024 11:26:55 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rraPv-000Oao-02;
	Tue, 02 Apr 2024 11:26:55 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  2 Apr 2024 11:26:53 +0200
Message-Id: <20240402092654.94523-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_022658_267639_228EBE50 
X-CRM114-Status: GOOD (  12.40  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] ARM: i.MX8MP: skov: add fallback for unsupported HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add fallback support for currently not supported HW. Instead of
completely fail, it is better to use some kind of basic devicetree with
reduced functionality.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 3b6eb7b080..41122ea1e4 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -85,6 +85,10 @@ static const struct board_description imx8mp_variants[] = {
 	},
 };
 
+static const struct board_description imx8mp_basic_viariant = {
+	.dts_compatible = "skov,imx8mp-skov-basic",
+};
+
 static int skov_imx8mp_fixup(struct device_node *root, void *data)
 {
 	struct device_node *chosen = of_create_node(root, "/chosen");
@@ -171,12 +175,12 @@ static int skov_imx8mp_init_variant(struct skov_imx8mp_priv *priv)
 	priv->variant_id = v;
 
 	if (v >= ARRAY_SIZE(imx8mp_variants)) {
-		dev_err(dev, "Invalid variant %u\n", v);
-		return -EINVAL;
+		dev_warn(dev, "Unsuported variant %u. Fall back to basic variant\n", v);
+		variant = &imx8mp_basic_viariant;
+	} else {
+		variant = &imx8mp_variants[v];
 	}
 
-	variant = &imx8mp_variants[v];
-
 	if (variant->flags & SKOV_IMX8MP_HAS_HDMI) {
 		ret = skov_imx8mp_get_hdmi(dev);
 		if (ret < 0)
-- 
2.39.2



