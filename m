Delivery-date: Wed, 03 Jul 2024 19:21:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3fB-001F42-2Y
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 19:21:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3fB-0007Tm-5x
	for lore@pengutronix.de; Wed, 03 Jul 2024 19:21:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W5PW50OBJbdfZ3/qMCmZ4B6T4qCYtP+7itTotkJRa/w=; b=4W/22Ir5SfZfg+
	mBe4A3AlahwpJi/BLYQaltil6vAYANOe0DhR+hdxHUfnLTcPMl+Yr7buRyObDxXHSIqSJXuNSYDz0
	LkVPXIMRd7JLSDn4cjDDnfxC4bGz8ZhmPCnkIOFk6l2z4MQ81BS5u5NPT7Qdwxtk1xJMFlAM0gGVd
	mqcCRyxe7uXzJpkV4qZ/Fvv7db/jeiHiK8W5b1i1YKzWRqSS2+SNPfp1Ti9OkA1boMOwx06AI0CBP
	0RsQ+XTrvQn/MQ9x16dXp/V5UrWSK12yY8pexo0XLIT5rXkHg0N5pTZd+k+tzDn02ZnAqzwygMeX8
	aU/gUtHbnC/QDTM4FkgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3ek-0000000AyfD-01kt;
	Wed, 03 Jul 2024 17:20:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3eW-0000000AyX4-3QMe
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 17:20:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3eU-00073M-Kn; Wed, 03 Jul 2024 19:20:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 19:20:17 +0200
Message-Id: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFGIhWYC/x2Myw5AMBAAf0X2bJO1iMeviENbi70grTQS8e/Kb
 eYwc0MQrxKgz27wEjXoviXhPAO3mm0R1Ck5MHFFDZUYP0KqkfDcD3W4GotctNZYkpY7Byk9vMx
 6/dthfJ4X50kXe2YAAAA=
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_102021_284750_20B9BF0F 
X-CRM114-Status: UNSURE (   8.61  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/9] i.MX8M HAB and OCOTP additions and fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

this fixes the HABv4 locking on i.MX8M devices and add additional
features like:
 - key revocation
 - field-return burning
 - additional security related fuse defintions

Changes in v2:
- Link to v1: https://lore.barebox.org/barebox/Zmv2KyQq3ACxksc_@pengutronix.de/
- adapt patch-1 commit message
- make use of 'bool permanent' parameter instead of introducing new
  IMX_SRK_* flags.

---
Marco Felsch (9):
      i.MX: HABv4: fix SRK_LOCK for i.MX8M devices
      nvmem: ocotp: add support to get/set srk_revoke sticky bit
      nvmem: ocotp: add support to query the field-return sticky bit
      hab: convert flags to use BIT() macro
      i.MX: HAB: add imx_hab_revoke_key support
      i.MX: HABv4: add more i.MX8M fuse defines
      i.MX8M: HABv4: add an option to allow key revocation
      i.MX8M: HABv4: add option to allow burning the field-return fuse
      i.MX: HAB: add imx_hab_field_return support

 arch/arm/mach-imx/Kconfig            |  33 ++++++++++
 drivers/hab/hab.c                    | 120 ++++++++++++++++++++++++++++++++++-
 drivers/nvmem/ocotp.c                |  79 +++++++++++++++++++++++
 include/hab.h                        |   9 ++-
 include/mach/imx/habv4-imx8-gencsf.h |  13 ++++
 include/mach/imx/ocotp-fusemap.h     |  13 ++++
 include/mach/imx/ocotp.h             |   3 +
 scripts/Makefile.lib                 |   1 +
 8 files changed, 265 insertions(+), 6 deletions(-)
---
base-commit: bafdf4b35d777d159ac4058efc86d36622ce5ccf
change-id: 20240703-v2024-05-0-topic-hab-218bab0e829c

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



