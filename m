Delivery-date: Thu, 13 Mar 2025 10:22:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tselO-00DVct-0B
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 10:22:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tselM-0007B3-TH
	for lore@pengutronix.de; Thu, 13 Mar 2025 10:22:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Dr1SQH/e8eMijP2/T4Uxa/Y2DxJYQKkDmboXtnMhFk=; b=vbzlLFvuuU4+V+
	e7rygRndnN3p1HGlhQEer0rcT1mWfGsUyDHYzStNfdHcPQhpknt8XPNqWLmPypgiKX5YZYY2evRN+
	cFWUyYlIpFUPCvKtQmERCeNV6e6r5O2GWHmxEO2EW+kx7D4ijp2DeiME64E0ksfw2roaozHvrxiFZ
	zmTm3eyyX0a+1UYdgiWt0gv715viyYgze7Il8HlPr3aS93HtPb493Dbql6BzVVPoYIDK618StMMEo
	ho8aFPahlZOifAMXuiP+hMn00iJvZninGAcimD4/QCIVxC7FU8bKRg8k2Mgz0njnJ6cApaiLjR+2O
	lRJNRi0f2Jo1RgrNSAXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsekv-0000000AiQD-1v72;
	Thu, 13 Mar 2025 09:21:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tseks-0000000AiOl-0h7P
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 09:21:31 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tsekp-00070K-IW; Thu, 13 Mar 2025 10:21:27 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 13 Mar 2025 10:21:17 +0100
Message-Id: <20250313-pca9450-wdog-v2-0-28e97e7da480@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI2j0mcC/3WMQQ6CMBBFr0Jmbc1MBaOuuIdhUWAKs2lJixVDe
 ncre3f//eS9HSIH4QiPaofASaJ4V0CfKhhm4yZWMhYGjbrBC5FaBnOvG1Tv0U+qL/NmyeirtVC
 UJbCV7cg9u8KzxNWHz1FP9Hv/hBIpVHVDGk3PhhHbhd30WoN3sp1Hhi7n/AW37eX5rQAAAA==
X-Change-ID: 20250311-pca9450-wdog-b9458f1a26ff
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1301; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=QRWDzTduGXFOKOMiUR+aj9Y73thZZW/0EKFbXxIsPIU=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYki/tHjaz8n+O+bM1F7oXu/w8VJM06yfrPaN+aUxb/PUZ
 +y4tU1UpqOUhUGMg0FWTJElVk1OQcjY/7pZpV0szBxWJpAhDFycAjARLU+GP3zSPkWbH9vzKN+Y
 Odv0rr+xkONHp/kLjEQdGJ+3CKp/nM3IsF0uLbV7lpmH6c9dzYLvPmnZX1t+e3fDspzpj/+kvvo
 bwAoA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_022130_207418_7CE19972 
X-CRM114-Status: UNSURE (   7.26  )
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
Subject: [PATCH v2 0/2] Move pca9450 RESET_CTRL configuration to driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Configure the RESET_CTRL register of the pca9450 pmic in the driver,
like u-boot and kernel do. Subsequently, remove the setup of this
register from the pca9450_register_init_callback of the two imx93 boards
we currently have.

Configuration of this register in lowlevel.c of the imx8 boards remains
untouched for now.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v2:
- Move to commit message the reasoning for keeping mx8 boards explicit register initialization
- When mentioning other commits in a commit message, include their subject line 
- Remove superfluous include
- Link to v1: https://lore.kernel.org/r/20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de

---
Jonas Rebmann (2):
      mfd: pca9450: configure pmic reset behavior
      ARM: boards: remove obsolete PCA9450_RESET_CTRL setup

 arch/arm/boards/phytec-phycore-imx93/board.c |  9 ---------
 arch/arm/boards/tqma93xx/board.c             |  3 ---
 drivers/mfd/pca9450.c                        | 10 ++++++++++
 include/mfd/pca9450.h                        |  4 ++++
 4 files changed, 14 insertions(+), 12 deletions(-)
---
base-commit: d004da6e3710cc01b645a57c8dd1a986eced1c80
change-id: 20250311-pca9450-wdog-b9458f1a26ff

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>



