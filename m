Delivery-date: Tue, 20 Jan 2026 15:56:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viD9a-003QFJ-17
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 15:56:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viD9Z-000054-Cg
	for lore@pengutronix.de; Tue, 20 Jan 2026 15:56:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SFIzWldALGhIySNG/ShRViEb8jXJuEcmYbP+uFibNCY=; b=hnD/msVryjPT5H77F7+grfEiq/
	dR60XiKR2cKmvn6iTnuFeWO/c7WAK85FQWZgP2LhMqiR345ZSZjLgB0ss91doyjCKAAcdcNLvsiEc
	zX+DuZtGGJkW1DGJfSlMA7qAUKJgWSeIr34kCUIxL6Ujo5eXvIbT6of22ghQDtOwz60aTFckO5RcZ
	0TLjAmvdc1bOI9q2h8D72cRUuZOEQ6IGLluzzNLZUaLQrJPbTlwta+tKgTdlXtylOCuH0Ydeo02Dl
	a26NdDQVLApyLOZe6UJe9MjzFdz24/6Ibn50kbspnjFOdVWzMeQdi57sqAxdMiDTwrBSZW7UWU9jn
	TpiIc3TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD90-000000041wu-3wtc;
	Tue, 20 Jan 2026 14:55:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD90-000000041wk-0ror
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 14:55:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=SFIzWldALGhIySNG/ShRViEb8jXJuEcmYbP+uFibNCY=; b=qLVGHzOk/MARz/OdU/ukYjPVHA
	eU6S2oEaLxxoGePliq56Ivj6ZR4kdWnqD7uJMcAXwASPZLUPgH9RhwKyIrOWuCR3nClT3XwbivwBG
	4VWKK0WKL9E52QnkiFZRwvsaBu1DRPOyDa1hsco3N1C9meQ1p8YPqNFkRQvD60JT8jbF7aXO9i5hv
	+Op/PyPCTpD2muQCgZUg1fZt3BWdtumzScWKg67d+AbyV3kNvZ/RPLc6MRGYamltsbS7s802yQSGV
	ftLyth0Wm6umZBQQ53zdsfF6oZCRIOJy3c0VXH98hsL8fusY32k85LO/DJKYEnGOgZQ0EeeyHITHY
	05sdjKFg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viD8x-0000000EGF3-1LDx
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 14:55:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1viD8o-0008Ht-Vg; Tue, 20 Jan 2026 15:55:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1viD8p-001bKX-1P;
	Tue, 20 Jan 2026 15:55:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1viD8o-00000000RaZ-2ng4;
	Tue, 20 Jan 2026 15:55:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Jan 2026 15:55:30 +0100
Message-Id: <20260120-android-image-v1-0-820595a1b8a4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGKXb2kC/x2MQQqAIBAAvyJ7TtClIvpKdDB3qz2koRCB+Pek4
 zDMFMichDPMqkDiR7LE0MB2CvzpwsFaqDGgwdFYNNoFSlFIy+WaJO+Qhs1P3BtozZ14l/f/LWu
 tHxZIEnRfAAAA
X-Change-ID: 20260120-android-image-dca2d5bc8e40
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768920934; l=1065;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=OrR2466lD3znAit1FGAjfiqpbsZ/iMDe88xAEWmrwkM=;
 b=cUROAc7KJDN0jug8q14rhO7VtwQSwXsyJLu+Z8xA1Jyv3KND89xbm4Ka+ErO0H7g95syu79Ui
 FgnpIvtIruaBF9wtG+WUTFqCzNNxwvdPTLum/J3FcLaUqJu2DG+3rFc
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_145543_574491_2A0D59E4 
X-CRM114-Status: UNSURE (   8.32  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] Android image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Android images are particularly useful with fastboot. The fastboot host
tool encapsulates boot images in its own rudimentary image format which
we can't boot directly. This series replaces the existing ARM32/zImage
only Android image handler with a generic handler which only passes the
extracted Kernel/initrd image on to bootm.

Sascha

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      libfile: copy_fd: add size argument
      bootm: add generic android image handler

 arch/arm/lib32/bootm.c       | 174 -------------------------------------------
 common/Makefile              |   1 +
 common/bootm-android-image.c | 154 ++++++++++++++++++++++++++++++++++++++
 common/firmware.c            |   2 +-
 include/libfile.h            |   2 +-
 lib/libfile.c                |  37 ++++++++-
 6 files changed, 190 insertions(+), 180 deletions(-)
---
base-commit: 0024921364eb4c8bc8089fdc198440b0d67a239f
change-id: 20260120-android-image-dca2d5bc8e40

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



