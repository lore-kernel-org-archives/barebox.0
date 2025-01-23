Delivery-date: Thu, 23 Jan 2025 16:01:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiL-003UTN-0K
	for lore@lore.pengutronix.de;
	Thu, 23 Jan 2025 16:01:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiI-00032Y-1k
	for lore@pengutronix.de; Thu, 23 Jan 2025 16:01:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nlbP57N2BxztVvsUFU5Et2pDtF0J5iHaEr+4UEY6Zgw=; b=DGBT0lQNQz2KO1
	CtdzipANeac9SW5vAuiUkRMZaLqDQJXzQGmGBCjyD3Nu7xq6tF3bP2GZNmZLgl4cUvF9RLU6Xuwe9
	W1UcOi03VLiDHYNskU70ibgJRzjswiSw+4JTTCCmyymm/i8JTV91wnNZEhewhSrQ9bVTE3D3NS7q3
	ehBg4uKa3YcyusgXTpI/0oyuwyeimTZVRtxuYlthSOIgmCQW8XxLR/Rc94EveNkJLkRB1cBTnRKLN
	yPJIPVVQxUVABFiSDkUclnfqiz0iby0yl953kF5gche5IsXyLEDlodIjpv06XHOaVAQxhBHagxXPC
	FkJKSp8pNqLB1CAvbe4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhh-0000000Cec6-1jnd;
	Thu, 23 Jan 2025 15:01:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhb-0000000CeZE-2Pht
	for barebox@lists.infradead.org;
	Thu, 23 Jan 2025 15:01:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-0002Hv-IN; Thu, 23 Jan 2025 16:01:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-001Thk-0B;
	Thu, 23 Jan 2025 16:01:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhX-006Chv-3D;
	Thu, 23 Jan 2025 16:00:59 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 Jan 2025 15:56:05 +0100
Message-Id: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIZYkmcC/4WNQQ6DIBBFr2Jm3WkQNGpXvUfjAmSqswEDlNgY7
 170At3995P//g6RAlOER7VDoMyRvSugbhVMi3YzIdvCIIVsRCcU5jOhaFFg8itPuGiDsu6NNoJ
 6OUxQpmugN2+X9jUWXjgmH77XS5Zn+0eYZcG6a+pB69YqrZ4rufmTgne83S3BeBzHDypIHea9A
 AAA
X-Change-ID: 20240703-v2024-05-0-topic-hab-218bab0e829c
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_070103_626365_40F03E76 
X-CRM114-Status: GOOD (  10.49  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 00/10] i.MX8M HAB and OCOTP additions and fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

this fixes the HABv4 locking on i.MX8M devices and add additional
features like:
 - key revocation
 - field-return burning
 - additional security related fuse defintions
 - automatic locking of the gp5 eFuse on i.MX8MP SoCs

---
Changes in v3:
- added GP5_LOCK support for i.MX8MP devices
- renamed HABV4_CSF_UNLOCK_SRK_REVOKE to HABV4_CSF_SRK_REVOKE_UNLOCK
- adapted to HAB_CERTS_ENV
- Link to v2:
https://lore.barebox.org/20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de

Changes in v2:
- Link to v1:
https://lore.barebox.org/barebox/Zmv2KyQq3ACxksc_@pengutronix.de/
- adapt patch-1 commit message
- make use of 'bool permanent' parameter instead of introducing new
  IMX_SRK_* flags.

To: Sascha Hauer <s.hauer@pengutronix.de>
To: open list:BAREBOX <barebox@lists.infradead.org>

---
Marco Felsch (8):
      nvmem: ocotp: add support to get/set srk_revoke sticky bit
      nvmem: ocotp: add support to query the field-return sticky bit
      hab: convert flags to use BIT() macro
      i.MX: HAB: add imx_hab_revoke_key support
      i.MX: HABv4: add more i.MX8M fuse defines
      i.MX8M: HABv4: add an option to allow key revocation
      i.MX8M: HABv4: add option to allow burning the field-return fuse
      i.MX: HAB: add imx_hab_field_return support

Stefan Kerkmann (2):
      i.mx8: ocotp: add GPx_LOCK defines
      hab: lock GP5 on i.MX8MP socs

 arch/arm/mach-imx/Kconfig            | 34 +++++++++++++
 drivers/hab/hab.c                    | 98 ++++++++++++++++++++++++++++++++++--
 drivers/nvmem/ocotp.c                | 79 +++++++++++++++++++++++++++++
 include/hab.h                        |  9 ++--
 include/mach/imx/habv4-imx8-gencsf.h | 13 +++++
 include/mach/imx/ocotp-fusemap.h     | 28 +++++++++++
 include/mach/imx/ocotp.h             |  3 ++
 scripts/Makefile.lib                 |  1 +
 8 files changed, 258 insertions(+), 7 deletions(-)
---
base-commit: fb590cfa8fea6906d3f78dd409856d350e24b582
change-id: 20240703-v2024-05-0-topic-hab-218bab0e829c

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



