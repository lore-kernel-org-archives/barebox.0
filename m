Delivery-date: Mon, 08 Sep 2025 11:30:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYCQ-000atL-2s
	for lore@lore.pengutronix.de;
	Mon, 08 Sep 2025 11:30:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYCQ-0006qs-Au
	for lore@pengutronix.de; Mon, 08 Sep 2025 11:30:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oO7I8EKUAuti1qFNx6fNArM3uW39JvhK2ij4uU9BUaA=; b=kPrEiUosG+GCJdCI+HlgqKH2qi
	fojYfPNhG0DNR2/ul/CEqNZHKbyIISPtGb6DE0tDXluCfzSelDkxkGlR+GRPNlSKPe6HFS/SnqYTS
	bOfFRF/imdPOjDYXbA+LQu9KNlJ7hNFVuL+jwDpNztIfUiNzaQFOOSc0ArWB8Zw6/U4/tq5qWVtFh
	qIwEN652aWSCrYk25Gzze1Tam9cjZ0+rfRIzJjBlOVI2zKUUJkWlNYAfmPQIzrcJC4alJwpkHqqY+
	5khkpw2hSI1IK195xBRAockkwT4gZs9J9ZpU+hpmgTxmFaZsfDaghhBS797Pe7HGSKLOmigzofO7H
	CC+Sm6Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYBg-0000000G2Ap-3dU5;
	Mon, 08 Sep 2025 09:29:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvXI9-0000000Fj9z-2eXq
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 08:32:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-0005N2-TQ; Mon, 08 Sep 2025 10:31:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-000DZ6-27;
	Mon, 08 Sep 2025 10:31:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-0000000269A-2POU;
	Mon, 08 Sep 2025 10:31:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Sep 2025 10:31:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-imx8-snvs-v1-3-1049458a0286@pengutronix.de>
References: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
In-Reply-To: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757320317; l=788;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=SMBYLQhMHaXWtzVOR+64pQmjmC0ckMPuU0iFsNm/UIQ=;
 b=Cjg+RaMpDLek2zT1MSW78GuhgdXB8xkdyrMvoLUawMtkM0NoI2KbK3koT6R0bRatT889UWGul
 zGxgFleMtHDCu2V80BjvGWL+148QZ1AlIt/3XOg5Sh+Sks3GXb1Cb+N
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_013201_685750_9D0BE250 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] nvmem: snvs_lpgpr: set nvmem config name to snvs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Set the nvmem config name to "snvs". Without it the cdev shows up as
/dev/30370000.snvs@30370000:snvs-lpgpr.of0.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/snvs_lpgpr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index e29fa2bf3aec1e9b5b19beee4ac5440b6b18e018..95ce023a14c4b79934fcfc15d7d5b82fa7f85e24 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -125,6 +125,8 @@ static int snvs_lpgpr_probe(struct device *dev)
 	cfg->size = priv->dcfg->size;
 	cfg->reg_write = snvs_lpgpr_write;
 	cfg->reg_read  = snvs_lpgpr_read;
+	cfg->name = "snvs";
+	cfg->id = NVMEM_DEVID_NONE;
 
 	nvmem = nvmem_register(cfg);
 	if (IS_ERR(nvmem)) {

-- 
2.47.3



