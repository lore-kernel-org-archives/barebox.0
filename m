Delivery-date: Sun, 24 Jul 2022 21:01:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFgrN-002HiN-Jx
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 21:01:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFgrL-0004Y8-7b
	for lore@pengutronix.de; Sun, 24 Jul 2022 21:01:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Shxse/pCzJfrDYDKvwFXkf0+oNKpygmoNR3mzQZCYM=; b=Cow8Q+9kTYiZgwi7nnW5kASxV1
	mftyDMFQ1/hlDjmyvh/T6ZQLXowBxi83EwPrC6IJWMEy1rqRHrAdZnYJAYh7Fkpq6CSMae4FDojpV
	0PN4hc8ofaFmvSYCD5SSEPfsw8jn5ihh+O8MZs7jP2jz5aSPmoLIkqFqtcpBSQ0a0EbzDTh//g9hu
	IXQvGnadi8DysKQNycSBGI8/kaN/vfUi7kwnlYXHSVLYK5yWjRrBeBlV/u+OlMPYwEBn/bojXXJF7
	cuh15brjRaupIDL4hmQOjVx98SDbnmnnLVcSiFI1zv9wfPm5vbCUNvUJjQE/K5++KS1jMXgNRl0eL
	LhC64EpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFgq2-008rQZ-3E; Sun, 24 Jul 2022 19:00:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFgpp-008r4M-Qp
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 19:00:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgpo-00045O-KZ; Sun, 24 Jul 2022 21:00:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgpn-002y07-2G; Sun, 24 Jul 2022 21:00:11 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgpm-0094A4-1Z; Sun, 24 Jul 2022 21:00:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 21:00:03 +0200
Message-Id: <20220724190006.2160802-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220724190006.2160802-1-a.fatoum@pengutronix.de>
References: <20220724190006.2160802-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220724_120013_930886_5797C24D 
X-CRM114-Status: GOOD (  13.48  )
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
Subject: [PATCH v4 3/6] regulator: consult min_uv, max_uv for regulator_get_voltage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixed regulators currently always end up in the return -EINVAL else
branch. In Linux, the fixed regulator driver parses the DT and will
populate fixed_uV if min_uv and max_uv are equal. For barebox, it's
easier to do this in the core, but the result is the same:
We now can call regulator_get_voltage for fixed regulators.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3 -> v4:
  - fix regulator_get_voltage when min_uv = 0 (Frank)
v2 -> v3:
  - fix botched rebase (regulator->ri-> instead of ri->)
v1 -> v2:
  - new patch
---
 drivers/regulator/core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 472b26f3a0ac..640fdf3b349e 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -574,13 +574,15 @@ EXPORT_SYMBOL_GPL(regulator_bulk_free);
 
 int regulator_get_voltage(struct regulator *regulator)
 {
+	struct regulator_internal *ri;
 	struct regulator_dev *rdev;
 	int sel, ret;
 
 	if (!regulator)
 		return -EINVAL;
 
-	rdev = regulator->ri->rdev;
+	ri = regulator->ri;
+	rdev = ri->rdev;
 
 	if (rdev->desc->ops->get_voltage_sel) {
 		sel = rdev->desc->ops->get_voltage_sel(rdev);
@@ -593,6 +595,8 @@ int regulator_get_voltage(struct regulator *regulator)
 		ret = rdev->desc->ops->list_voltage(rdev, 0);
 	} else if (rdev->desc->fixed_uV && (rdev->desc->n_voltages == 1)) {
 		ret = rdev->desc->fixed_uV;
+	} else if (ri->min_uv && ri->min_uv == ri->max_uv) {
+		ret = ri->min_uv;
 	} else {
 		return -EINVAL;
 	}
-- 
2.30.2



