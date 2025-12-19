Delivery-date: Fri, 19 Dec 2025 14:40:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWaiw-00DDOc-0i
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 14:40:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWaiv-0001sY-DL
	for lore@pengutronix.de; Fri, 19 Dec 2025 14:40:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aNyALEMa31XGcQVJdZpmbmL2LORGQrDhjKnZrv30sVU=; b=p60WTPKg0XE+5y
	rVmDbE66YfyBWXC8ufeZyX7XsvdhFzn5My3ctgffrQvjvShdI0TyTSMF77iZPjVFuh4WvEsF4B20Y
	mVY18bui2bzTQnny0CEUUE96B9Rs+69CpN45ROySyfyeFD9Ny7y7RrTcAew2FZJUi90t6VmG3WH+T
	Y1cZ1BHU9SqTN1XSguw7wBuVD0pZMGKfLEkIIpO4d5dBRiEvMlQR+x3SSX97fESqTVLXgOsIJBTqd
	OryOCqQhWT4822nZK1sPtyXsvDljaPfPRI+byVQAKjqtn3Cw1C2lIgoiCLfRZNwNT7fo1mt3S/L81
	VggY9Kw5IeMNJAk9WtIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWaiB-0000000AMXT-38mM;
	Fri, 19 Dec 2025 13:40:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWai8-0000000AMUw-0NhN
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 13:40:02 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWai3-0001XS-Vj; Fri, 19 Dec 2025 14:39:55 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 19 Dec 2025 14:39:52 +0100
Message-Id: <20251219-v2025-11-0-topic-imx6-field-return-v4-0-57eec237ceaf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKhVRWkC/5XNwa6CMBAF0F8xXTuGaaG0b/X+w7gAOtVJtJCCD
 cbw7xZXJrrQ3dy5ybl3MVJkGsXf5i4iJR65DzmU243oTk04ErDLWchCVijRQFovQIQCpn7gDvg
 ya/BMZweRpmsM4FRbeklV1fhWZGiI5Hl+juwPOZ94nPp4e24mXL8/8WktVW0QS4XWOP0/UDhep
 9gHnneOxLqR5Ktrv3JlLqW2uuk0NiTdR1f97qpcalt4R21tbG3e3GVZHuoyHR2JAQAA
X-Change-ID: 20251218-v2025-11-0-topic-imx6-field-return-d3b4f2e55afb
To: Marco Felsch <m.felsch@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_054000_142988_DE58C3AC 
X-CRM114-Status: UNSURE (   8.38  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 0/5] i.mx: hab/ocotop: extend field return to i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Field return handling was only implemented for the i.MX8* processors.
Extend this with support for i.MX6 and extend the hab command with an
option to burn the field return fuse in case the field return sticky bit
might be unlocked.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v4:
- Change order of patches. Fix first, then new features.
- Link to v3: https://lore.barebox.org/barebox/20251219-v2025-11-0-topic-imx6-field-return-v3-0-690fdeb78978@pengutronix.de

Changes in v3:
- Fix nitpick by Marco
- Added reviewed-by
- Fix broken mainline version of UID in CST. (Tested on i.MX6Q)
- Change wording for hab command help.
- Link to v2: https://lore.barebox.org/barebox/20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de

Changes in v2:
- Added reviewed-by
- Added imx6_hab_field_return_ocotp and reintroduced the
  imx8m_hab_field_return_ocotp, but also add a new helperfunction for
  both to call.
- Implemented Marcos changes for commands/hab.c, but changed
  indentation.
- Link to v1: https://lore.kernel.org/r/20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de

---
Fabian Pflug (5):
      i.MX: HAB: fix field return unlock fuse uid
      arm: mach-imx6: use kconfig for field return
      nvmem: ocotp: extend support to query the sticky bit
      i.MX: HAB: extend field_return support to imx6
      commands: hab: extend by field_return fuse burn

 arch/arm/mach-imx/Kconfig                     | 35 +++++++++++++++------------
 commands/hab.c                                | 24 +++++++++++++++---
 drivers/hab/hab.c                             | 34 ++++++++++++++++----------
 drivers/nvmem/ocotp.c                         | 12 ++++++---
 include/mach/imx/habv4-imx6-gencsf-template.h | 11 +++------
 include/mach/imx/habv4-imx8-gencsf.h          |  2 +-
 include/mach/imx/ocotp-fusemap.h              |  1 +
 scripts/Makefile.lib                          |  2 +-
 8 files changed, 74 insertions(+), 47 deletions(-)
---
base-commit: d6f0974673c0e3da00f8d0789d6302a43f3e478d
change-id: 20251218-v2025-11-0-topic-imx6-field-return-d3b4f2e55afb

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



