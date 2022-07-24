Delivery-date: Sun, 24 Jul 2022 08:45:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFVMN-001jsa-5p
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 08:45:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFVML-0001Yf-0E
	for lore@pengutronix.de; Sun, 24 Jul 2022 08:45:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UEd+GfShaUr15O8j7vLvfnbNHc/xvupTZZdFmgzvhT4=; b=DvNZ1Gsg4gf4RzGWHTOjc5gAS2
	e7wWxd4TCcLKrt+Fnrq6ENRXluxV35C2+suTSBGly4tCLNqZ2qnqeEurpANYWPkfAgvHXpS7Z7agj
	W6TIH+0WFV2ZbF++uUfIPrq+X6h8Ibimq9V8r7Rp08QPmdQERPRVoiOy9gwl6UgflRX/FfbBGPzDi
	PGOQBCU3/RXx2wbLPRK3S3Ja3aTDstlnn4Ls7MsQarBFc8SNyUKI6/o7GueemTvSoGBg9bYJzM/Ma
	mfJDbf7agu+sI6q3qMnGv/cV2n59xyO4NeC+W0QpD/guM/AQhMqixr8x/FnOiq7oIBS6Il/6Z3CgZ
	mIR88yag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFVL8-00HCyS-Uz; Sun, 24 Jul 2022 06:43:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFVL3-00HCwD-Vi
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 06:43:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFVL2-0001K9-Pj; Sun, 24 Jul 2022 08:43:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFVL2-002rZH-2C; Sun, 24 Jul 2022 08:43:40 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFVL1-007YO4-5z; Sun, 24 Jul 2022 08:43:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 08:43:34 +0200
Message-Id: <20220724064337.1799613-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220724064337.1799613-1-a.fatoum@pengutronix.de>
References: <20220724064337.1799613-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_234342_046700_041CC923 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/6] regulator: consult min_uv, max_uv for regulator_get_voltage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixed regulators currently always end up in the return -EINVAL else
branch. In Linux, the fixed regulator driver parses the DT and will
populate fixed_uV if min_uv and max_uv are equal. For barebox, it's
easier to do this in the core, but the result is the same:
We now can call regulator_get_voltage for fixed regulators.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - fix botched rebase (regulator->ri-> instead of ri->)
v1 -> v2:
  - new patch
---
 drivers/regulator/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 472b26f3a0ac..1c7a8580d983 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -593,6 +593,8 @@ int regulator_get_voltage(struct regulator *regulator)
 		ret = rdev->desc->ops->list_voltage(rdev, 0);
 	} else if (rdev->desc->fixed_uV && (rdev->desc->n_voltages == 1)) {
 		ret = rdev->desc->fixed_uV;
+	} else if (regulator->ri->min_uv == regulator->ri->max_uv) {
+		ret = regulator->ri->min_uv;
 	} else {
 		return -EINVAL;
 	}
-- 
2.30.2



