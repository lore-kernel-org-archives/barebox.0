Delivery-date: Tue, 16 Dec 2025 11:48:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSbW-00C53J-1Q
	for lore@lore.pengutronix.de;
	Tue, 16 Dec 2025 11:48:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSbV-00079q-TF
	for lore@pengutronix.de; Tue, 16 Dec 2025 11:48:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=N4huXiOBnnbZAJdg4GSF8KxrZaVzpK9qYeoLQBO/YOA=; b=XN/9cTcyU5OVByh3zP2lq96axM
	z0DP0dy4boZBprIHPM0sb3qYBzcSCXPZCFClC+ZOX/+9+C3kw5CWa0jhUk3tUix0M6D4ukm6qAyF9
	e9ERvgkX6o8zIcCIWlUunnVL6ruA6p/P1NucG4T1WHxPEJRqBaGNmfJ0bkAMrNyMZdkwZnFZw7ji/
	Fmru9gAFO6XWOR6Ny1ZNWKvrQ5zmdnt/DtDDcdBVAFehOcRScWfePVfpHOySD8oEZmA1Q3ozqWgfS
	JOSyvY5Rth6O4vszTVsFvJEn1GrTRatfgRcKvUipWvoNKYmMss4PpNit7rIDXowtpIgqbzeqJQejx
	pF1x8gew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSb1-000000053py-2OXb;
	Tue, 16 Dec 2025 10:47:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSaz-000000053pR-1VuG
	for barebox@lists.infradead.org;
	Tue, 16 Dec 2025 10:47:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A52DB4442F;
	Tue, 16 Dec 2025 10:47:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A18EC4CEF5;
	Tue, 16 Dec 2025 10:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765882076;
	bh=mGCR7RuIbfSdDobzVhPl5t1PtP5Vyz3RHSshvwJoino=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=ptBMqqKMtYxjkV5Xr58BgaA1nVVQAICbTV66N3wrgrKbi/tXEIDwGuj7Xr8JwruMf
	 mYKU/YoL7ymnx4ZXQDaGYzYM48G/V7yDtqL2pHdM7gcHOeyKzOaVV+wbqYxlQdQlMD
	 6qFb3gH6VPW0bLMjzz/OvOsuA2cADGXt5TQIOKbQoPIrS4GV5EnMOz3uUdNuJ7FwUA
	 aPjnUruIkuGGX230CVs7/FzA2V0xtyWY1GP4T/QVfUEgw+23ubCrVIMjthZBiygYEc
	 NBckmzi30r+OiIH3a9dyKqLy3EBCO+jwZQzaEUzd4IYkGYiFxORXqKYoAuPM+DQQMR
	 0rS6+JGxUT3yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76F4DD5CCBB;
	Tue, 16 Dec 2025 10:47:56 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Tue, 16 Dec 2025 11:47:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-genpd_fix-v2-1-1dddd24a61ef@gocontroll.com>
X-B4-Tracking: v=1; b=H4sIAMY4QWkC/22MQQqDMBAAvyJ7boq7tlZ68h9FiknWGLCJJBJaJ
 H9v6rnHGYbZIXKwHOFe7RA42Wi9K0CnCtQ8OsPC6sJANV2RsBWG3aqfk32LekLWN90pKQlKvwY
 u+ng9hsKzjZsPn2Od8Gf/XRIKFPKiRmo73cgGe+OVd1vwy3JW/gVDzvkLTwW6GqcAAAA=
X-Change-ID: 20251216-genpd_fix-0f1ed7d8cbb2
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765882075; l=1464;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=uj2xDMAh+W4db9qhkggG33PBx94qxe489pvSR6NF8S4=;
 b=UMOWCJMmRd4UMPDYTdxMIkTcfxw2La02GOaVr9K4dT6IMII7yI1zgCaIC41vVvvQV+tobXJ0x
 aoinzTLYL4hAgg32f93MYw5i5oolkpBZMcN6PRecpxSKU1+SQ4wVBK2
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_024757_430289_7CBD673D 
X-CRM114-Status: GOOD (  11.08  )
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] pmdomain: fix collision in names when registering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

After adding the imx8m-blk-ctrl driver errors started appearing about
the genpd device already being registered.

incorperate some extra device details in the device name so this
possible collision goes away.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
Changes in v2:
- Change virt_dev->id into DEVICE_ID_SINGLE to drop the trailing index
  number.
- Link to v1: https://lore.kernel.org/r/20251216-genpd_fix-v1-1-b4ca268d3b31@gocontroll.com
---

It wasn't just errors, it started crashing but that is a seperate issue.
It at least loads normally with this change
---
 drivers/base/power.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index c71389422a..cffd043627 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -506,11 +506,11 @@ struct device *genpd_dev_pm_attach_by_id(struct device *dev,
 	if (!virt_dev)
 		return ERR_PTR(-ENOMEM);
 
-	dev_set_name(virt_dev, "genpd");
+	dev_set_name(virt_dev, "genpd:%u:%s", index, dev_name(dev));
 	virt_dev->bus = &genpd_bus_type;
 	virt_dev->parent = dev;
 	virt_dev->of_node = dev->of_node;
-	virt_dev->id = index;
+	virt_dev->id = DEVICE_ID_SINGLE;
 
 	ret = device_register(virt_dev);
 	if (ret) {

---
base-commit: 63898c48611dfe51409ff1f4e1c30de4b2737c48
change-id: 20251216-genpd_fix-0f1ed7d8cbb2

Best regards,
-- 
Maud Spierings <maudspierings@gocontroll.com>




