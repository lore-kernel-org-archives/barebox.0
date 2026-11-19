Delivery-date: Thu, 19 Nov 2026 20:00:04 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU7MZ-001BsS-2h
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 20:00:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 59DEB205B34
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 20:00:00 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NiCce46I;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795114800;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=o7Yez1o3NUiWk5eebakm2RtZ9Nn/i/UT4TAopdf1SYg=;
	b=ghQvFuGNSFdBr3pjQhJS8UTWq4apr8JUjkgm7+GwX5Pl9gHukolGtNVcpP1hYIc/5/E6Dy
	GWeQ9Loeg8SbaBBqvhN59dLc98PtHbHL/pd1VGHx/imdylVG5/nsycHN/FRX+Y23DIkjw1
	mXRpwjxgvU1WOMtxaD+r3/CxIuzx+YpOf5qnBlHSuLT3gEprxwOHq3/sq8VpZDUFHlNQc5
	q0lQphSV1RimqfLg4sopa7us3PtRLrTFi46v9dL84KLqNMR/XtgfdbTwGsEOxT2v+WncWY
	VXK5wz38TyaV2+UMGd6U23gEu09NGvPQtad4VEn1/FvOWmIzlCvj9NiO3FrJww==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795114800; a=rsa-sha256;
	cv=none;
	b=WrhhMnj9fiqEzvQ1N1NAP4tAMX3gLRwcwhFK5ozl3v/XuNC4es1XhztC4RI0gGcjmuFKm1
	dScrDzh1MYD8QstqnHAvv1QyY2RF2EH/p1Wb43GaHyeY7hczJXXSh9SdWXrMWd1yKBDOnF
	heBe7c/ogLi2lMCYd/4OzH839wZ/SPamkuGfrkKQ2xNx8wDBbFOkia+ltRoINTY7Emb14y
	cYp7FglseFJTDfBVDbPiTQMqd8qCMPscX7tc2fS+TDPBJgAHf41XBx7hiK8x/zgdP7nbYm
	QXg4oqXU+0Lm8d1WYYf+7QwJqPLW9uhzbd1Vbu0e6zWFXDJEE8XguaM1vjgVmw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NiCce46I;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=o7Yez1o3NUiWk5eebakm2RtZ9Nn/i/UT4TAopdf1SYg=; b=NiCce46Io/1MNG
	Fg0hzQPDXVDfw1y7H9ZDs2mhqloNWIH+9+gWcE+aEHaPBN0QNV4SZb/+Bk8R33fjVcXdKUbek1INl
	IKckayDyWTj6xUOVkzUVitcJgfp38ZlXPu9D6g5hYAFxd5ELHXeL9AU/G6g+mFdS3WiNX1q3MBb6N
	7tImcd6LI165g3NFKFr5vHEnX35FbQdqVMHPx/HmbqP3EUAr2mYCvMmyb7mFo77dvLGrd4rAzb7Xt
	JFUJxsNXm090tgvPdKbmH3d6A9/dFsoS7ulwuY2RNB/RjNramazEppAS3evPVcLxQabmEjsybAmRp
	mHmdlhJGRmDK07Q9KBVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7LI-0000000D7pa-3n8Q;
	Thu, 19 Nov 2026 18:58:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7LC-0000000D7lp-147L
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 18:58:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xU7L8-0003xr-J6; Thu, 19 Nov 2026 19:58:34 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 5/6] spi: factor out spi_of_register_slave()
Date: Thu, 19 Nov 2026 19:58:15 +0100
Message-ID: <20261119185828.92337-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261119185828.92337-1-a.fatoum@barebox.org>
References: <20261119185828.92337-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_105838_359790_1557E331 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Let's move the registration of a single device node into its
    own function. A follow-up commit will use it to register only the node requested
    by the rescan hook. No functional change. Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
    --- drivers/spi/spi.c | 77 +++++++++++++++++++++++++ 1 file changed, 41 insertions(+),
    36 deletions(-) 
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.9 DMARC_NONE             DMARC none policy
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
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[gmail.com,barebox.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 59DEB205B34
X-Rspamd-Server: mx1
X-Stat-Signature: u6n6wr8nstodq4duhiuboopwhrhfoaax

Let's move the registration of a single device node into its own
function. A follow-up commit will use it to register only the node
requested by the rescan hook.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/spi/spi.c | 77 +++++++++++++++++++++++++----------------------
 1 file changed, 41 insertions(+), 36 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index b1806a2ea445..850ea2c7b62f 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -150,10 +150,48 @@ static void of_spi_parse_dt_cs_delay(struct device_node *nc,
 	}
 }
 
+static void spi_of_register_slave(struct spi_controller *ctrl,
+				  struct device_node *n)
+{
+	struct spi_board_info chip = {};
+	struct property *reg;
+
+	if (n->dev) {
+		dev_dbg(ctrl->dev, "skipping already registered %s\n",
+			dev_name(n->dev));
+		return;
+	}
+
+	chip.name = xstrdup(n->name);
+	chip.bus_num = ctrl->bus_num;
+	/* Mode (clock phase/polarity/etc.) */
+	if (of_property_read_bool(n, "spi-cpha"))
+		chip.mode |= SPI_CPHA;
+	if (of_property_read_bool(n, "spi-cpol"))
+		chip.mode |= SPI_CPOL;
+	if (of_property_read_bool(n, "spi-cs-high"))
+		chip.mode |= SPI_CS_HIGH;
+	if (of_property_read_bool(n, "spi-3wire"))
+		chip.mode |= SPI_3WIRE;
+	of_property_read_u32(n, "spi-max-frequency",
+			&chip.max_speed_hz);
+
+	/* Device CS delays */
+	of_spi_parse_dt_cs_delay(n, &chip.cs_setup, "spi-cs-setup-delay-ns");
+	of_spi_parse_dt_cs_delay(n, &chip.cs_hold, "spi-cs-hold-delay-ns");
+	of_spi_parse_dt_cs_delay(n, &chip.cs_inactive, "spi-cs-inactive-delay-ns");
+
+	reg = of_find_property(n, "reg", NULL);
+	if (!reg)
+		return;
+	chip.chip_select = of_read_number(reg->value, 1);
+	chip.device_node = n;
+	spi_new_device(ctrl, &chip);
+}
+
 static void spi_of_register_slaves(struct spi_controller *ctrl)
 {
 	struct device_node *n;
-	struct property *reg;
 	struct device_node *node = ctrl->dev->of_node;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
@@ -162,41 +200,8 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
 	if (!node)
 		return;
 
-	for_each_available_child_of_node(node, n) {
-		struct spi_board_info chip = {};
-
-		if (n->dev) {
-			dev_dbg(ctrl->dev, "skipping already registered %s\n",
-				dev_name(n->dev));
-			continue;
-		}
-
-		chip.name = xstrdup(n->name);
-		chip.bus_num = ctrl->bus_num;
-		/* Mode (clock phase/polarity/etc.) */
-		if (of_property_read_bool(n, "spi-cpha"))
-			chip.mode |= SPI_CPHA;
-		if (of_property_read_bool(n, "spi-cpol"))
-			chip.mode |= SPI_CPOL;
-		if (of_property_read_bool(n, "spi-cs-high"))
-			chip.mode |= SPI_CS_HIGH;
-		if (of_property_read_bool(n, "spi-3wire"))
-			chip.mode |= SPI_3WIRE;
-		of_property_read_u32(n, "spi-max-frequency",
-				&chip.max_speed_hz);
-
-		/* Device CS delays */
-		of_spi_parse_dt_cs_delay(n, &chip.cs_setup, "spi-cs-setup-delay-ns");
-		of_spi_parse_dt_cs_delay(n, &chip.cs_hold, "spi-cs-hold-delay-ns");
-		of_spi_parse_dt_cs_delay(n, &chip.cs_inactive, "spi-cs-inactive-delay-ns");
-
-		reg = of_find_property(n, "reg", NULL);
-		if (!reg)
-			continue;
-		chip.chip_select = of_read_number(reg->value, 1);
-		chip.device_node = n;
-		spi_new_device(ctrl, &chip);
-	}
+	for_each_available_child_of_node(node, n)
+		spi_of_register_slave(ctrl, n);
 }
 
 static void spi_controller_rescan(struct device *dev, struct device_node *np)
-- 
2.47.3



