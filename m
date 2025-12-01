Delivery-date: Mon, 01 Dec 2025 11:26:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ17G-006moY-2T
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:26:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ17G-0006p1-AY
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:26:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZasBxG95dWgcPBQxXonLhaKnpjYU+Amv3DuzBqvTsso=; b=zzyODPBCn/u8EN5HsjPdxWjnFc
	lf2QW71yDIc9TL9o9cyGDIpXwBudHTsJ8rHw1IKZInXFiIWkHF4HiAqI2u4EOEJ+HnnLYfiXZpcBt
	jyIYvtYbdGEquzskdsGpamvMcXt46ZqQCeifoMnLUEC5ros/M4GPj+yyDVlEJexz3c//GMUT+Ed8q
	6YdU6kGRBsJPstjXh1OtdMPekBD6sqA+uhCtBbWQbbeKtadeO31KVbvsSNlDE+QxB5F+vh5FdfFpD
	EQ2oxshQLVZS8osv599tRnAJ7q78Cek/wP2GST+8jfGBSHL7egKPp+VMNrlOc8QLPBvP65ddYsKhb
	/KKrEDxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ16q-00000003KI1-1m9v;
	Mon, 01 Dec 2025 10:26:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ16p-00000003KGs-2hBD
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:26:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CC39560137;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84005C4CEF1;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764584778;
	bh=F8ktlJonnEn8cfMgL8uqYJDCvD+zs0ubs3EcbflE3GU=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=ti+uV6UIpx6nRJClSNv6XlNfVS6TV11eepqwKAstSzOdu0AXMKdW4vpCmMX4XZ+Hu
	 Uq2+BMNmymqRWJEUNc4jn1DxaIAZvUsSGi2iMolp6SOqp3jXz1baUk7Su3kmiOtsHD
	 Vv3Xgh8gWwnH4F16HiWuefSTG8EOuOYq0MZQjzo0ETu5EV2fR+qkZ/c4pADFOtOJwP
	 RVafcFtzW56/L+OoCDWLvIVIorBV0OJ/3WH/urF8KpYC8fq+Rg5ea/RB+wbNRt/kcd
	 bb0LPgvwB0+U3OYEFVig1a/srqro4vtVDKvyq3VZGBmdEx/0xUtKSBBURIoKy0Nwgq
	 AuHiqcMbg9E9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 740B0D116F5;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Mon, 01 Dec 2025 11:26:15 +0100
Message-Id: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEdtLWkC/2XMQQrCMBCF4auUWRtJoqnBlfeQIp04tgNtU5IaK
 iV3N3br8n88vg0iBaYI12qDQIkj+6mEPlTg+nbqSPCzNGipjVLaCh7XxzuiOCuJiOZCsrZQ3nO
 gF6+7dG9K9xwXHz47nNRv/TeSElIg1q1RVuLJ0q3zzk9L8MNwdH6EJuf8BXtkyQ6jAAAA
X-Change-ID: 20251128-imx_usb-410bbb57e068
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764584777; l=902;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=F8ktlJonnEn8cfMgL8uqYJDCvD+zs0ubs3EcbflE3GU=;
 b=qc2J6672L0jI5mCqLkhSCvsPKS5KEuCnesql8IDk9s2bfKmRDwmsowE6pbGO/J1WVlGEkkopY
 wfYrdLezY8bCSgYXA1T0F9K76918uTZ3gd4UwmA1gspfGBc4f94AZd6
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
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
X-Spam-Status: No, score=-103.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/3] scripts: imx: imx-usb-loader: fix mingw compilation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Compiling imx-usb-loader for windows targets had become broken, fix it.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
Changes in v2:
- Extract the mingw pread implementation to a seperate file that only
  gets used when mingw is the target.
- Link to v1: https://lore.kernel.org/r/20251128-imx_usb-v1-0-bb6a5180b38e@gocontroll.com

---
Maud Spierings (3):
      scripts: imx: Makefile.mingw64: add _GNU_SOURCE
      scripts: imx: add pread implementation for mingw target
      gitignore: ignore *.exe

 .gitignore                   |  1 +
 scripts/imx/Makefile.mingw64 |  4 ++--
 scripts/imx/pread.c          | 25 +++++++++++++++++++++++++
 3 files changed, 28 insertions(+), 2 deletions(-)
---
base-commit: 3e01efb6c6527ca72a1213000006be1902db7be9
change-id: 20251128-imx_usb-410bbb57e068

Best regards,
-- 
Maud Spierings <maudspierings@gocontroll.com>




