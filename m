Delivery-date: Thu, 18 Dec 2025 18:37:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWHwJ-00CumF-18
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 18:37:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWHwI-0007lu-Qd
	for lore@pengutronix.de; Thu, 18 Dec 2025 18:37:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ACHRuAhvNbMRmkqEtfnDmvXljyo9M/sU8dsW8clhqjk=; b=TBpAhCrwioXVn0
	55dwNmgEEI4HuiUiP3ByS05bIqNyGCqPQjhUGhDCHZJmX2k2UvQRFhAuiJNAhXd5QQnc4o7G/D5+J
	+zRrtrH2ic91hLM0vN4NIP3C3RmvD2Bz2+kWMaugAcOS8JzTSdXHhfVjMgiUYaJKPCqgdTqJjc+9n
	MAuVBjSRzSkcq6rGRiu8g671tVKuOlUG2tM5JCwY5fyzB2+d6PJlTMK0KRhSRMSn3pTwVRZSGCHTD
	zyXYdXcwL5AvOtBxUPZtRkg8RmxDItBtXG60YAsaNFc5cMX7sLNSv/hGZ8IT+SvfQelhJYi4H6Gfh
	eR+xg+c0VXjl5EBnkUKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWHvl-00000008vxP-2ggd;
	Thu, 18 Dec 2025 17:36:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWHvk-00000008vwO-2TN2
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 17:36:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=ACHRuAhvNbMRmkqEtfnDmvXljyo9M/sU8dsW8clhqjk=; b=WFeEypjHkvQ92uqcbRO0y8uP6V
	QOsQu33ttObx2519SCE4Hcn6tDehUTQvHmNsxbr2X3+XdfS3XMyjFQcheIKU9mln9iiwaQ/vZ2xI3
	aFWq97IEG7gyYciMfbhNt6sLfRUtaNV/HFm1mTp+l06Zdf4JO3woUSlrubsD2DWbbd9g5srUGfQ8B
	/aiaDmq9/aNkpQQLGuNm1qs6yFJfLUCs0Sa567s2IpHAwBtR+h8Snmx5GnCMPcAlVzGRdorvuXRNM
	BrkDN1gvcHnhUvEer89qwH6a2IZXy5tjEHsftqOjTZWJ5xB3ZbXazJd4E0aKYeYhQP1ONOfbc8/Ws
	/EMIhNog==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWH4D-00000009Id9-3eTD
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 16:41:32 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWHvd-0007Si-Ua; Thu, 18 Dec 2025 18:36:41 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 18 Dec 2025 18:36:27 +0100
Message-Id: <20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJs7RGkC/x2NwQqDMBAFf0X23Adu2pTir0gPaja60EbZWBHEf
 2/a28xl5qAsppKpqQ4y2TTrnIrwpaJh6tIo0FCcXO08O35g+xGYUWOdFx2g7/2OqPIKMFk/lhC
 u/S068b6LPZXQYhJ1/0/a53l+Ad2MQ4Z0AAAA
X-Change-ID: 20251218-v2025-11-0-topic-imx6-field-return-d3b4f2e55afb
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_164129_996531_2032A73D 
X-CRM114-Status: UNSURE (   5.76  )
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
Subject: [PATCH 0/4] i.mx: hab/ocotop: extend field return to i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Field return handling was only implemented for the i.MX8* processors.
Extend this with support for i.MX6 and extend the hab command with an
option to burn the field return fuse in case the field return sticky bit
might be unlocked.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Fabian Pflug (4):
      arm: mach-imx6: use kconfig for field return
      nvmem: ocotp: extend support to query the sticky bit
      i.MX: HAB: extend field_return support to imx6
      commands: hab: extend by field_return fuse burn

 arch/arm/mach-imx/Kconfig                     |  6 +++++-
 commands/hab.c                                | 20 +++++++++++++++++---
 drivers/hab/hab.c                             | 10 ++++++----
 drivers/nvmem/ocotp.c                         | 12 ++++++++----
 include/mach/imx/habv4-imx6-gencsf-template.h | 11 +++--------
 include/mach/imx/ocotp-fusemap.h              |  1 +
 6 files changed, 40 insertions(+), 20 deletions(-)
---
base-commit: d6f0974673c0e3da00f8d0789d6302a43f3e478d
change-id: 20251218-v2025-11-0-topic-imx6-field-return-d3b4f2e55afb

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



