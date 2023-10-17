Delivery-date: Tue, 17 Oct 2023 16:55:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTh-00Bshz-2P
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTf-0003vA-P7
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vgki0U2fAqSIEgXV5GgZHzvkRSfBDv7rmunTJYCeGH4=; b=TLIGM1EcrfrOE6dLqs0Z/ZMdmi
	gx6c+8a9B8gL04YkPD+huaSKwdaDX7BuienLgL4C3ARkHO/Gp/n/j18FKVOcLyejtVCPrNIR00uYp
	zmOaIfyGvAMDEnuDYLTT6PURq3DAhH0J1OzPQujAgs/VEXd6wMEedhh+429A1v8Ewu2a6+wz0Japk
	v25aeWXoCu7QulFoFZQCS6Ku+umv7+owK9zrJsF9MyeoWMGE8+oau12P76JvEPovuBfTO56dr48T3
	grUpj4sl1cQtWLcYccrHL251aw7E9+mneStqBOkmRpaYe06XU/aM8ebl7JTzL0gTlXD9GTt8Ggoin
	tkIYb3eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslST-00Cey2-17;
	Tue, 17 Oct 2023 14:54:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQB-00Ccc2-2J
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=Vgki0U2fAqSIEgXV5GgZHzvkRSfBDv7rmunTJYCeGH4=; b=M2NkOPYH9VYVkez/Ogm88xAwsM
	X6UwFozZy80YdJuVvwNO9n16bOcSNZn33CrcLFct69b6yuMH8kF8yYLUV7k6lD55CsmU4qW4JCR2D
	wfSWNshDVCUEh4f2hi/A69nawCyD6n3+lT63AWKeKXCUIh0zlHb1R3xgmHJ3qxLXuWx/Mpyp9X6G3
	NN4F4yMiyg9EatG7beXSGxcCV13BdnnotGG7Mv8jMIWe1NvqUh6gJxALrECCQ6chv6TPnSDKxkerX
	rL5G75tLjXu0cH4/Ex6aM/aoHgSwrlu+jBlizCdVKzLKb4hiWdg52ZlQgRtk49QJnp6Gjtk31XkL0
	8hPD12gg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ5-007AEa-2U
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:46 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-SU
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:17 +0200
Message-Id: <20231017145131.3069283-16-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155141_978812_307CF4B0 
X-CRM114-Status: GOOD (  10.83  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 15/29] scripts: imx: force flexspi and hab option order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Force the order to ensure that the hab options are parsed after the
flexspi options. This is important since we need to know which memory
regions need to be verified and/or en-/decrypted and with the flexspi
support a 2nd header is added in between the first header and the
barebox pbl binary.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- unchanged
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 scripts/imx/imx.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index e3169bace6a6..32488455b7a8 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -614,6 +614,12 @@ static int do_flexspi_ivtofs(struct config_data *data, int argc, char *argv[])
 	if (argc < 2)
 		return -EINVAL;
 
+	if (data->csf) {
+		fprintf(stderr, "#include <mach/imx/flexspi-imx8m*-cfg.h> must be placed in front "
+				"of #include <mach/imx/habv4-imx8-gencsf.h>\n");
+		return -EINVAL;
+	}
+
 	data->image_flexspi_ivt_offset = strtoul(argv[1], NULL, 0);
 
 	return 0;
@@ -624,6 +630,12 @@ static int do_flexspi_fcfbofs(struct config_data *data, int argc, char *argv[])
 	if (argc < 2)
 		return -EINVAL;
 
+	if (data->csf) {
+		fprintf(stderr, "#include <mach/imx/flexspi-imx8m*-cfg.h> must be placed in front "
+				"of #include <mach/imx/habv4-imx8-gencsf.h>\n");
+		return -EINVAL;
+	}
+
 	data->image_flexspi_fcfb_offset = strtoul(argv[1], NULL, 0);
 
 	return 0;
-- 
2.39.2



