Delivery-date: Wed, 19 Nov 2025 16:25:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLk3z-002hZw-21
	for lore@lore.pengutronix.de;
	Wed, 19 Nov 2025 16:25:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLk3z-0008Gu-2p
	for lore@pengutronix.de; Wed, 19 Nov 2025 16:25:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wQhrITfVhEW0SWM8gowL+N9EwOjIEBX5fEvhsAk6OJo=; b=Qri5SXHwFCC/CZty8y1p5qnD28
	LwRCuqfwR97UoOont/R/NTDbr6fDSLjTyqwesqh2nx0ymvz0NzT5TXjzkOtBbUkbSphVlPNQ4DgQZ
	jZsrv0Q50k48XGYfAt0fg0IuC/DtYPxnD4AkV7sJmu2dPVxsiI3gMrLiP+lLUR+YqU+0WpixG0aQR
	Nr3Tl/gs8zFMTbkkU4lTg3lTHI4AKi3geSmETkwGAxXJ/l2KNr14v99iv010PAgAj4kOSUZohQ7iS
	ktWqn/ZxI4yFm4GlSRHxBgD6tTmbA3E5ZuvfYxjFtDenFplr/80eLlyJu8/3milH/3eWJYgwdkTIe
	W1a44jsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLk3W-00000003UBp-26iL;
	Wed, 19 Nov 2025 15:25:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLk3U-00000003UAF-0ZIk
	for barebox@lists.infradead.org;
	Wed, 19 Nov 2025 15:25:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLk3R-000874-7N; Wed, 19 Nov 2025 16:25:09 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLk3R-001GtH-01;
	Wed, 19 Nov 2025 16:25:09 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLk3Q-0000000AjxD-3yVw;
	Wed, 19 Nov 2025 16:25:08 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 19 Nov 2025 16:25:06 +0100
Message-Id: <20251119-imx93-pd-v1-0-2b114723a734@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFLhHWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQ0Nz3czcCktj3YIUXVNDY6PE1BRDizQjYyWg8oKi1LTMCrBR0bG1tQA
 tZ1IkWgAAAA==
X-Change-ID: 20251117-imx93-pd-5132aed18f23
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=956;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=67+eYYgb/OB2V5r4wFmkzs9lWTtC3RXcmgmuPTB2gGE=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpHeFTYeQz3pyDIW3gdCG1mkxubECfB5Ob2B6Ws
 O5uS1OuQJKJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaR3hUwAKCRC/aVhE+XH0
 q/LsEAC8MIN6e4C+OoaoYLnOfrnPMHq8xNAjhoZb1EcFBPXsh83ZOMkvMnz/6pBHn1ojq4fgDm7
 mzIwzIxmzoiGXVQFkjHZH/VSlJxklvgnFqRIKoP3uZKKK7qqj0u6Ag7xeS57bEsslg1Apb7k+nL
 wjXZSJE6APFm+/A/Vizq7YYHnirbBPBgBhOd/Tk8BRoSEs6TIuDYtv0Ms5Pk4kDxk+MqictWNP4
 UQEmyqgsZupMPVftUeACKIEVDokFPaRCNmoDhIoiMnsMMiF7Jp6uE5znCR3EHDx7xIxXXnAQ55k
 RuN2GCgp+DxesSsi4pbiPqRhDU66o/A+PRlZI67U7Be9Sj7jbzLbYxe2OFdJZRn6XQZ44ZN+VjV
 NWJtMxjHhsBjauN0/8PjlcQmD/2Dfk2fQgPnmIgYQO0RRg0YA9J9476cLwv4d4azxDjWWAK1815
 H46Ks9NTQWoEwz2nIHeIuuJ+zdy2lL0+UvJbejzmBSr48k1qs5mU/OqzxfMU8XcQjJag6PZkZk9
 EA30tMgV45oud76U1a9sM8xP7GEOR6UqPJQSuH4vF0UDN149uHbNwtx0nbu/QffiXTdqd8tq2dJ
 47Say15BT1N5wK2DLseMFiNq9EUfEdVvSMZH1btFqeblt3eZ5WICJdcDBINvLpXfirbYFVGRJeU
 lwnprZLCU9uAIUQ==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_072512_183745_ECF723D9 
X-CRM114-Status: UNSURE (   9.53  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] imx93-pmdomain: add imx93-src, imx93-pd and
 media-blk-ctrl drivers from linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series is including all drivers to enable all the power
blocks to run the media-blk-ctrl on the imx93.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
Michael Grzeschik (2):
      soc: imx: imx93: add ported source driver for pmdomain from linux
      pmdomain: imx: imx93-blk-ctrl: add ported driver from linux

 arch/arm/mach-imx/imx9.c              |   3 +
 drivers/pmdomain/imx/Kconfig          |  10 +-
 drivers/pmdomain/imx/Makefile         |   2 +
 drivers/pmdomain/imx/imx93-blk-ctrl.c | 395 ++++++++++++++++++++++++++++++++++
 drivers/pmdomain/imx/imx93-pd.c       | 151 +++++++++++++
 drivers/soc/imx/Makefile              |   1 +
 drivers/soc/imx/imx93-src.c           |  30 +++
 7 files changed, 590 insertions(+), 2 deletions(-)
---
base-commit: cf3126e606c4eb1a4769575d0df951796c33b64e
change-id: 20251117-imx93-pd-5132aed18f23

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



