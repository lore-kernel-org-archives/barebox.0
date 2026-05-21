Delivery-date: Thu, 21 May 2026 10:29:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPymq-002Ad3-0q
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:29:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPymp-0001Kd-L3
	for lore@pengutronix.de; Thu, 21 May 2026 10:29:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4nWvXr2zVsPXnijSHqY7bu7HSSvmYsn1aOVTOFO/+IY=; b=na1RhFUQ4fydzfLOx6RGbY+foW
	1r+sA5I6P2vBKmPe7FD9p72Et/pi0hsm8pglsQULPGo8xsOabWVPMLJIqmOsfRACzf4SOIFe7VlB6
	v0hqubOs+cZFi5F8SOMV0lw6LTb7VNhjAb24WfnXFzvkU3i9vddungz3ryNPDnQcqaFnfS/Wly/Ji
	yvouUm7TKac/W+cOIcHkmWKeFxXtevciRnH1bAOR87ub7ZdQ94/5TDnC+r23BSc8L2isml1yeqicz
	jiFd+ypwh672u3NB2JOnfxY4XIktIL8keJHHlXIz7Woyah9dBLkbGoXeujzArrg/z2N2PdcVW2A4l
	n/Z9K8QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyP3-000000072iV-2s2k;
	Thu, 21 May 2026 08:05:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPyOz-000000072gQ-2fFP
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:05:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOx-0005u9-0Y; Thu, 21 May 2026 10:05:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOw-0014JS-1B;
	Thu, 21 May 2026 10:05:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPyOw-0000000DRa3-3dLf;
	Thu, 21 May 2026 10:05:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 May 2026 10:05:04 +0200
Message-Id: <20260521-rockchip-emmc-fixes-v1-0-c91908ca1fb5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALC8DmoC/x3LQQqAIBBA0avIrBswI62uEi3CxhpCE4UIpLsnL
 R+fXyBTYsowiQKJbs58hYq2EWCPNeyEvFWDkkrLXrWYLnvagyOS9xYdP5RRuk2brh/NMBqoZ0z
 0hzrOy/t+qdDgwmUAAAA=
X-Change-ID: 20260521-rockchip-emmc-fixes-0fd673597897
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779350706; l=1153;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=K0gUhPgPWfO3pTFYwz6VGGp+gMeebbih1ZI+as5nmr8=;
 b=TxYh6+W322/3afK2ogPmFPqpQFtmL8Gmcne3JGz8pczaLSHbipXwcoFPuo+0pfKspkElNlVRU
 BRHgJ5+RuAsD/CTOOVbkRGGkWwYj35FgvCULdj+8PygLK25vQpDcdLD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_010509_684371_0E2B9ED5 
X-CRM114-Status: UNSURE (   7.40  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] mci: sdhci Rockchip tuning fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tuning operation on Rockchip used to fail. I never noticed because
errors from tuning were not properly propagated. This is fixed in [1]
and since this commit HSx00 speeds do not work work anymore. HS400
modes worked for me despite the tuning failed, but with likely
suboptimal timing. This series fixes this and we now pass tuning.

Also switch the Rockchip SDHCI controller to the recently introduced
sdhci_send_command() helper.

[1] 85995b4d54 ("mci: sdhci: propagate tuning failures from sdhci_execute_tuning()")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      mci: rockchip-dwcmshc-sdhci: poll DATA_AVAIL for tuning commands
      mci: sdhci: Fix TIMEOUT_CONTROL register value
      mci: sdhci: rockchip: Use generic sdhci_send_command()

 drivers/mci/rockchip-dwcmshc-sdhci.c | 57 +-----------------------------------
 drivers/mci/sdhci.c                  |  2 +-
 2 files changed, 2 insertions(+), 57 deletions(-)
---
base-commit: f5956c772dc00837bad36fc66df8a53aae86558d
change-id: 20260521-rockchip-emmc-fixes-0fd673597897

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



