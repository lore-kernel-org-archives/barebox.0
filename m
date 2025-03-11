Delivery-date: Tue, 11 Mar 2025 11:51:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trxCO-00CdwO-3D
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 11:51:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trxCN-0006Kh-OE
	for lore@pengutronix.de; Tue, 11 Mar 2025 11:51:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u+TZHsnja8JwqDEHCAsl7u0UV12O0vi46uHRgqKGmiM=; b=flv9IHtSBsgh2v
	wdbLsrdxVAOxGnY0DjlTu3ENxuuyRonkHrlM98Qaj63dnWlpWe/UI8te7JK7ITLGqwdkzD4+Yx6vF
	uF03QoiTMLLtoicnfwCJ6Wnfo9apGQTglbR+ySnGJOD5D6j/drvCfgGduGG4BAUJZkDCOmY/5V5/o
	rMobWDSf/Pq3Ub4G7WLloQlLujmC+ssCcGDmtNHgVDAlYxbDvAXLIQnopZtC7NjtIQCQDzcKomNAz
	Im8t8jUrvdSXoexZ9iwZFurDw6RbXSynOX+M8FqbNFSXv761muU5wd1VfIb83jXbkMJ8FFe2VbP86
	xmmNC1flhPvmeGAzjIvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trxBp-00000005NkT-3gy6;
	Tue, 11 Mar 2025 10:50:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trxBl-00000005NjB-3lx8
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 10:50:24 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1trxBi-00067p-KN; Tue, 11 Mar 2025 11:50:18 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 11 Mar 2025 11:50:16 +0100
Message-Id: <20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGgV0GcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDY0ND3YLkREsTUwPd8pT8dN0kINMizTDRyCwtTQmopaAoNS2zAmxcdGx
 tLQAFtHreXgAAAA==
X-Change-ID: 20250311-pca9450-wdog-b9458f1a26ff
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1152; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=0U00lk1Vw7wBOhatNFPDoiUY+FVeEED2d8eJb4YO6fk=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYki/IJr5/c5RLceYgzOCVyzdlJTnKh+55/Ki1fdK9c2NC
 pl392Vu6ChlYRDjYJAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAExEt5aR4W9b0L1Xfw0uPzzt
 frR8woLdS3smZP/53Lwk6bEKx+8PWyYzMhxsz1yb2si55KPv1xUMx5jdtYUYSqvU7ar7dbdNm5m
 zjA0A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_035021_943732_C8352D69 
X-CRM114-Status: UNSURE (   7.64  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] Move pca9450 RESET_CTRL configuration to driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Configure the RESET_CTRL register of the pca9450 pmic in the driver,
like u-boot and kernel do. Subsequently, remove the setup of this
register from the pca9450_register_init_callback of the two imx93 boards
we currently have.

Configuration of this register in lowlevel.c of the imx8 boards remains
untouched for now as they use a larger array of pmic register setups
which I haven't given a closer look as to which is actually needed given
the defaults and what's done in the driver already.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Jonas Rebmann (2):
      mfd: pca9450: configure pmic reset behavior
      ARM: boards: remove obsolete PCA9450_RESET_CTRL setup

 arch/arm/boards/phytec-phycore-imx93/board.c |  9 ---------
 arch/arm/boards/tqma93xx/board.c             |  3 ---
 drivers/mfd/pca9450.c                        | 11 +++++++++++
 include/mfd/pca9450.h                        |  4 ++++
 4 files changed, 15 insertions(+), 12 deletions(-)
---
base-commit: d004da6e3710cc01b645a57c8dd1a986eced1c80
change-id: 20250311-pca9450-wdog-b9458f1a26ff

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>



