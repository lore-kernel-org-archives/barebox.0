Delivery-date: Thu, 13 Nov 2025 10:35:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjY-000UsQ-16
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 10:35:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjX-0007Qs-Ki
	for lore@pengutronix.de; Thu, 13 Nov 2025 10:35:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uYOpze8B3pyGRc7yx21qUVm/17aVIItI4D67QontkNk=; b=jPnrWHYGzeO6gSDAODBE7LHl0G
	sHy5bIKHtsSujiA6qrM9Z8Ebp/OvWVJcHOXhKLNM0rujs5J0vf6wYrOubfSjhdQwnC6cZwG2srDP5
	yDH6s+FqgkzZ68yekuIHXB1yc3w8YSTzYgUpRhHkgSUOLwqRKWC5cAWoGRx9R2f8Ux9I1H9hdi/s9
	CjZGbRIpmu/xzigEM1EEgUyKELCBtj+yFG77i8xChwvRz4KYfU2SPzB5PMn+tsNwvacfrij/Lf6ap
	SOnQcE3kX31IZPc+n3A39RPGUNY6wGVMx/Fg5I+2BoT3AoqdM5mH7VJnlXG5DeZn8Y1o+nuqyPDtF
	ZjRM8R3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTj9-0000000ACbO-1SJt;
	Thu, 13 Nov 2025 09:34:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTj6-0000000ACZS-3nuM
	for barebox@bombadil.infradead.org;
	Thu, 13 Nov 2025 09:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=uYOpze8B3pyGRc7yx21qUVm/17aVIItI4D67QontkNk=; b=PuRf12aIbcXQ1nSLfsXcuriFjG
	XacwedqlsyYsawLAVUDrgNEs9eKf1zQsXmHI62u1eaPw8GtwQuilfm5GBs6MaT0GpDH+08Lib0PbW
	dgt/77KgTgp9G889TStgE1g9kNkS45y9ruELztfUHjRHAT+7p9Vv/VoPbeoQAkRXeVW3KWoV7EVk4
	qMY1wIsSsOAlPkqnRYw9YEmoaQ8g5/vEFWI357FOjml+XahsNUtxI5r16x9dTiXQUPJull5yxTX7e
	u5pwzXEFbp7vXH+grjv1Qe1wRRy4EuzVkR5GUS1NSVOjFUHrsDEcJTtCROqls1mjqsC+n2vCaVr9o
	4A+4ahrA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJSrL-0000000HQ9c-2u9N
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 08:39:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00070F-DZ; Thu, 13 Nov 2025 10:34:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTin-000EXp-35;
	Thu, 13 Nov 2025 10:34:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00000008Q1y-1Aea;
	Thu, 13 Nov 2025 10:34:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Nov 2025 10:34:24 +0100
Message-Id: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACCmFWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQ0Nj3eL8ZN3SzBRdI8OUxNRUi7TUxGQzJaDqgqLUtMwKsEnRsbW1AKP
 pjixZAAAA
X-Change-ID: 20251113-soc-uid-21daee8feac6
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763026469; l=2323;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=hnHonS1yYzAUIOOap3uWuvcoYnEpMvDayjj+kvPEOSo=;
 b=W0eQHe2jaLxWoYkvOgl5O4X2GmHwCVOrLRK9qiEhoVP6a0X0qn4FIiIBQA78xysJcNTQ25Y0n
 2wbbVW6ReHeDuBbyVfbCPgznrXvqVujNFLKE0uuwcNLZaxBh+4FQDcd
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_083917_148046_DB4D3EB3 
X-CRM114-Status: GOOD (  15.04  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] Unify SoC UID and machine hashable data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SoC UID and machine hashable data are both based on the same data but
are both registered at different places with different functions.

This series aims to unify this by adding a function which uses the
passed SoC UID to provide it to the environment and also to register
machine hashable data.

The SoC ID code on i.MX is quite a mess and this series cleans this
up a bit. We have drivers/nvmem/ocotp.c which reads the SoC ID and
provides machine hashable data and we have drivers/soc/imx/soc-imx8m.c
which implements a SoC driver and exposes soc0.serial_number, but
the SoC driver only works on i.MX8M which is a subset of the SoCs
supported by the ocotp driver.

Furthermore I realized that on i.MX8MP the SoC ID is 128bit whereas
we currently only use 64bit which additionally read from the wrong
registers. This series fixes this, but doing so will change the
machine_id passed to Linux which may break userspace, so this change
might need some discussion. Maybe we need a way to keep the previous
machine_id for already rolled out devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (9):
      introduce SoC UID
      soc: imx8mp: Soc ID is 128bit
      ARM: i.MX6: print leading zero for SoC ID
      nvmem: bsec: call barebox_set_soc_uid()
      nvmem: imx-ocotp-ele: call barebox_set_soc_uid()
      nvmem: ocotp: Fix SoC ID reading for i.MX8MP
      nvmem: imx-ocotp: call barebox_set_soc_uid()
      soc: imx8m: register SoC UID
      Documentation: migration: add i.MX8MP SoC UID change note

 .../migration-guides/migration-master.rst          |  8 +++
 arch/arm/mach-imx/imx6.c                           |  2 +-
 common/misc.c                                      | 58 ++++++++++++++++++++++
 drivers/nvmem/bsec.c                               |  8 +--
 drivers/nvmem/imx-ocotp-ele.c                      | 12 +++--
 drivers/nvmem/ocotp.c                              | 40 ++++++++++++---
 drivers/soc/imx/soc-imx8m.c                        | 37 ++++++++++----
 include/barebox-info.h                             |  4 ++
 8 files changed, 144 insertions(+), 25 deletions(-)
---
base-commit: 45b4b47cc650b0552d4920d0a353a860f6d2468c
change-id: 20251113-soc-uid-21daee8feac6

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



