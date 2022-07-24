Delivery-date: Sun, 24 Jul 2022 08:08:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFUnF-001iLx-79
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 08:08:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFUnD-0006Tq-7O
	for lore@pengutronix.de; Sun, 24 Jul 2022 08:08:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2AUDKBV25QAT8b8rUQfTT2IrpTI5j7sEb5oAZEeKh2E=; b=3HecFoh+WwVBplpXhAUgf8th+3
	NRWxqKc6mItDXTrqXmgrwdn9sq+ZwaGVxFnK0gtS+WA0PhS9a0be9W3sezuOlYWlSwNL0zb/4RCfG
	xUML1TSkfT4Owp4J7FnEizbu45MZ+378mGBRVFxAE9dyoAbXaG8MN4jlOEZOwtOlfawJtHVoOMbk5
	xaJ+7omPsVuM983l1072tV39O1BKUfhwcLgsIAiyGZpzuDHu+gZcO8/A8M1yQxuKd1InY53FbIDzs
	U29exd3B5M1HVIOyAeJbpJJxEBOCP4XYPW4gvnzGud67RDDkVdaGY5Gx5rhzslbyhXxLyCi4Lmvx5
	bs775BrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFUlT-00GzpQ-RM; Sun, 24 Jul 2022 06:06:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFUlG-00GziR-80
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 06:06:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUlA-00065L-O6; Sun, 24 Jul 2022 08:06:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUl9-002rUB-V0; Sun, 24 Jul 2022 08:06:35 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUl9-007R2i-4U; Sun, 24 Jul 2022 08:06:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 08:06:26 +0200
Message-Id: <20220724060629.1772193-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220724060629.1772193-1-a.fatoum@pengutronix.de>
References: <20220724060629.1772193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_230642_352058_BECBA5B2 
X-CRM114-Status: GOOD (  11.34  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/6] regulator: consult min_uv, max_uv for regulator_get_voltage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixed regulators currently always end up in the return -EINVAL else
branch. In Linux, the fixed regulator driver parses the DT and will
populate fixed_uV if min_uv and max_uv are equal. For barebox, it's
easier to do this in the core, but the result is the same:
We now can call regulator_get_voltage for fixed regulators.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 drivers/regulator/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 472b26f3a0ac..4eeb00e5a363 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -593,6 +593,8 @@ int regulator_get_voltage(struct regulator *regulator)
 		ret = rdev->desc->ops->list_voltage(rdev, 0);
 	} else if (rdev->desc->fixed_uV && (rdev->desc->n_voltages == 1)) {
 		ret = rdev->desc->fixed_uV;
+	} else if (ri->min_uv == ri->max_uv) {
+		ret = ri->min_uv;
 	} else {
 		return -EINVAL;
 	}
-- 
2.30.2



