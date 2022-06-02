Delivery-date: Thu, 02 Jun 2022 11:03:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgkB-000Nul-Sx
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:03:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgkA-0007Ck-0r
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:03:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lVFE2ubTJhLojXiIuk4dlGuOt94GrXpJntYW0aAU33U=; b=a40O0yI+tM2/ju
	PK3Q/ltlIqqEYVoIxP32vs0S5kZ6CP+QGYBZ4WnXS7VbZYCJqdXuvMaplNDy1t1gbB3rh9ToCaD2h
	YwXwHX7zMsNHNGQB7ikZ/1ItZnW8g3++PGJLHYDVuRUQo7WaNX2JN0j401ua2km20Ho6wSi1mYSdV
	HaJEMDICaWaMyv/2ekK95k9+vFww0E7dnIiFLhsrJfM13YfKKBAW1RHOui5OibDd1Hpc4a2lZQoaf
	0jAIKWbJGnr9suRfkIzv+Z/d/7NYGjH8Qx6YD7UVJeFGRJEhf8vDr3CyhbrvFWxNhsA2B00lfzy8z
	amtdJhVx3o0uHLfqHJdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgim-002L88-QI; Thu, 02 Jun 2022 09:02:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgi9-002Km1-10
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 09:01:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-0006bH-VK
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 11:01:42 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi6-005zl8-K8
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 11:01:41 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi2-00DOLL-UA
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 11:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  2 Jun 2022 11:01:26 +0200
Message-Id: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_020145_108196_396AE561 
X-CRM114-Status: GOOD (  11.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] ARM: stm32mp: bbu: add FIP update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

STM32MP1 BootROM boots from GPT partition fsbl1 or fsbl2 on SD-Card and
from boot partition on eMMC. Recent TF-A without legacy image support will
then look in a GPT partition named fip in the user area.

With recent patches[1], TF-A will also check offset SZ_256K in the boot
partition to see if the FIP is there.

Add a barebox_update handler that covers these scenarios.

The TF-A patches are not yet upstream, but have all maintainer ACKs and
will likely be part of TF-A v2.8.

[1]: https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/15332

Ahmad Fatoum (7):
  bbu: move barebox_update eMMC boot handling into common code
  bbu: use free(NULL) to simplify function cleanup
  bbu: add flag for enabling eMMC boot ack
  bbu: export bbu_std_file_handler for use in custom handlers
  filetype: differentiate between STM32MP FSBL and SSBL images
  ARM: stm32mp: bbu: add FIP update handler
  fastboot: support TF-A FSBL and FIP images for barebox update

 arch/arm/mach-imx/imx-bbu-internal.c     |  48 +-----
 arch/arm/mach-stm32mp/Makefile           |   1 +
 arch/arm/mach-stm32mp/bbu.c              | 197 +++++++++++++++++++++++
 arch/arm/mach-stm32mp/include/mach/bbu.h |  18 ++-
 arch/arm/mach-stm32mp/stm32image.c       |   2 +-
 common/bbu.c                             | 100 ++++++++++--
 common/filetype.c                        |  15 +-
 include/bbu.h                            |   7 +
 include/filetype.h                       |   3 +-
 9 files changed, 327 insertions(+), 64 deletions(-)
 create mode 100644 arch/arm/mach-stm32mp/bbu.c

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

