Delivery-date: Tue, 13 Feb 2024 16:18:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYF-004xoe-0d
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 16:18:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYE-0004e5-IM
	for lore@pengutronix.de; Tue, 13 Feb 2024 16:18:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QXQ0UEnvO6xV79/JTKMyIEg6MzD7ED42dIbt/yrJaZs=; b=T/Sy9+07ZVZ+u1xCbKCxmq20HX
	LNi6KIR7EaHCE93bhtWgXBC0tRb8e0VOEAFA5OBJgBipB62JG93++TvOFp5yd83awNlthVh1k9pEL
	y3Vc+IoWc+1u41ogU24ga1mYzI2AlHRpXWORaqXIIUpKxkSbetiU5ZCYjw0IW0g4sP+4iavXWUcnH
	CBkp052SWQOcEcQA5SSVkqiXawchZIKgOoEMnZV6PHTMWWsNRo146nnD3cAYgONH1pXUh6rUuGkIG
	MjPYKKOiBggq47BJ4BQp1ibbpuRCe4QcP+Y8xc6UQy4eMx1lTL6gPqBP5FG/YY1cwmZ6An55fO3rc
	ZM6Odvqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXf-00000009ihf-3k6X;
	Tue, 13 Feb 2024 15:17:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXc-00000009if1-0tKI
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 15:17:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-0004Ln-RQ; Tue, 13 Feb 2024 16:17:45 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-000VpD-F8; Tue, 13 Feb 2024 16:17:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-002pOE-18;
	Tue, 13 Feb 2024 16:17:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Feb 2024 16:17:38 +0100
Message-Id: <20240213151744.307958-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_071748_321381_D407CF03 
X-CRM114-Status: GOOD (  12.45  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/6] implement i.MX93 AHAB secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for AHAB based secure boot on i.MX93. The user
interface is integrated into the existing hab command used for ealier
i.MX variants. On i.MX93 the hab command can:

- read/write the SRK hash
- lock the device
- show lock status of the device

Like done with HAB the AHAB events will be shown during boot so that
possible failure events are seen should there be any issues like no
or wrong SRK hash fused or an unsigned image is attempted to be started.

Unlike with HAB it is currently not possible to sign the barebox images
directly within the barebox build system. Instead, the images need to be
signed afterwards with the NXP CST tool. I am currently unsure if it's
worth the hassle, as it turned out to be quite straight forward to
integrate the signing process into YOCTO (likely also ptxdist, but I
haven't tried yet). In the end it might be easier than adding another
indirection with tunneling the necessary keys through the barebox build
process. I might be convinced otherwise though.

Sascha

Sascha Hauer (6):
  hab: drop incomplete i.MX28 support
  hab: drop i.MX35
  hab: cleanup hab status printing during boot
  hab: pass flags to lockdown_device()
  ARM: i.MX: ele: implement more ELE operations
  hab: implement i.MX9 support

 arch/arm/mach-imx/Kconfig |   5 +
 arch/arm/mach-imx/ele.c   | 345 +++++++++++++++++++++++++++++++++++++-
 drivers/hab/hab.c         | 137 ++++++++++++++-
 drivers/hab/hab.h         |  10 ++
 drivers/hab/habv3.c       |   6 +-
 drivers/hab/habv4.c       |  62 +------
 include/hab.h             |  20 +--
 include/mach/imx/ele.h    |  18 ++
 8 files changed, 516 insertions(+), 87 deletions(-)
 create mode 100644 drivers/hab/hab.h

-- 
2.39.2



