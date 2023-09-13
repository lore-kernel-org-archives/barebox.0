Delivery-date: Wed, 13 Sep 2023 13:44:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOHq-00Dj8i-Uf
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 13:44:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOHo-0006M1-5b
	for lore@pengutronix.de; Wed, 13 Sep 2023 13:44:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0su9zs5zILRn1HC/7tIv2Ssq17oQ+B5wmdbRU/8yfGY=; b=iyiH7fqWGPqjzjpLgkQI+llYK8
	s4s152S2T9Q1eJ6QDBUI+rcc0V3oPpoLq6OuBL7+eKfcaoGa96Wf0SteEsIfh2nitWOC0jxbvWaWz
	4h4q0tfmDc1DCgezNu14fCm5Pz13quw0IxitCFNt/cjqkRKy2YgSZO3Uz4lcb0EOYwsyfgsRelCWB
	omLDwayA2bO9X1wxc0Yu+9U4Ekjcgyc1d2Hh3QN+Tb5Q7YFKzQyFzAJkMTOdGIwJAUuF4gQNead8/
	SzkMMiS0ExJCpF/VoyJzfgX1Zi3dBS6gO1WCbAys3nDugykdRDNFU4IRo4YvHNT8NJNzcUvTl4mDv
	2eha8SXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOGV-005leI-0x;
	Wed, 13 Sep 2023 11:42:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOGR-005ldp-0n
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 11:42:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOGP-0006AS-4f; Wed, 13 Sep 2023 13:42:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOGO-0063X5-Hr; Wed, 13 Sep 2023 13:42:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOGO-007mEQ-1b;
	Wed, 13 Sep 2023 13:42:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 13:42:30 +0200
Message-Id: <20230913114230.1853679-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_044235_294190_2DCE3710 
X-CRM114-Status: GOOD (  11.64  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] treewide: remove remaining _d suffixes from struct driver_d/device_d
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some drivers made their way upstream during the switch to removal
of the _d suffix. There's a define to support the old naming still,
so there was no breakage, but let's use the modern naming everywhere.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/qemu_fw_cfg.c | 2 +-
 drivers/net/designware_imx8.c  | 2 +-
 test/self/regulator.c          | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 4c7d90815be2..1ba81d1b5002 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -289,7 +289,7 @@ static const struct of_device_id qemu_fw_cfg_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, qemu_fw_cfg_of_match);
 
-static struct driver_d qemu_fw_cfg_drv = {
+static struct driver qemu_fw_cfg_drv = {
 	.name = "fw_cfg",
 	.probe  = fw_cfg_probe,
 	.of_compatible = of_match_ptr(qemu_fw_cfg_of_match),
diff --git a/drivers/net/designware_imx8.c b/drivers/net/designware_imx8.c
index d81dd499ab29..3dbe5824e6ce 100644
--- a/drivers/net/designware_imx8.c
+++ b/drivers/net/designware_imx8.c
@@ -186,7 +186,7 @@ static __maybe_unused struct of_device_id eqos_imx8_ids[] = {
 };
 MODULE_DEVICE_TABLE(of, eqos_imx8_ids);
 
-static struct driver_d eqos_imx8_driver = {
+static struct driver eqos_imx8_driver = {
 	.name = "eqos-imx8",
 	.probe = eqos_probe_imx8,
 	.remove = eqos_remove_imx8,
diff --git a/test/self/regulator.c b/test/self/regulator.c
index e89164700ef1..08073cfc9158 100644
--- a/test/self/regulator.c
+++ b/test/self/regulator.c
@@ -161,7 +161,7 @@ static struct driver regulator_test_driver = {
 	.of_match_table = test_regulator_of_match,
 };
 
-static struct device_d *dev;
+static struct device *dev;
 
 static void test_regulator(void)
 {
-- 
2.39.2



