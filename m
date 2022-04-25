Delivery-date: Mon, 25 Apr 2022 08:30:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisEs-00ERgy-8M
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 08:30:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisEo-0000oU-VQ
	for lore@pengutronix.de; Mon, 25 Apr 2022 08:30:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qENGRJW+yiZ9ZOsMW71CpFnfQxTzv0fqnWs8FvvGpKA=; b=OGk/KYvj1YPoM/
	dKNaRt0XYLC4cMftPqV9bUtpM30ukYrp3+5n1iVsRvBC6YEOjH5vf1xhXA317J1iqOmcjo+UgvBf6
	zl3tCxpWnAM9U31v/f1V3sRUuDVCMmoiuKr6eaDJq5t4vC9uNwWK6tf7724B2io1+cEd5/AMG0+je
	8j9Qk2GGZ4DJ1KW1+qbWYdBlkXUoA2TRNorFlZomOzKDEN+40VdmTxK3Vw0xQ6PcWeT+p81H98ZnE
	ig1FVx3FnRs/lKTQVFeivqUpaOi9/5Gbv0RGuW3FAPTPHnADLfc5Q6p10DW8OP++yN8O/tV4NUOA6
	anZlw10p3eIBfJW0dscg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nisDb-008Uhy-4z; Mon, 25 Apr 2022 06:29:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nisDO-008Udc-8N
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 06:28:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDN-0000Xd-2r; Mon, 25 Apr 2022 08:28:53 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDN-0055zd-2y; Mon, 25 Apr 2022 08:28:51 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDK-0004gW-Nq; Mon, 25 Apr 2022 08:28:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de
Date: Mon, 25 Apr 2022 08:28:45 +0200
Message-Id: <20220425062849.17954-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220424_232854_334165_5AD6ABCC 
X-CRM114-Status: UNSURE (   7.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] ARM: rpi: enable single entry point for all
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VideoCore can boot kernel directly and will pass appropriate DT
according to kernel boot convention. If we do arm_cpu_lowlevel_init() in
the ARM board-dt-2nd, we can have this generic image act as second stage
on all Raspberry Pi variants.

Ahmad Fatoum (4):
  ARM: cpu: board-dt-2nd: call arm_cpu_lowlevel_init
  ARM: rpi: don't warn about lack of videocore fdt
  ARM: rpi: remove outdated comment after stack setup rework
  ARM: configs: rpi: add and document single barebox-dt-2nd bootloader

 Documentation/boards/bcm2835.rst          | 6 ++++++
 arch/arm/boards/raspberry-pi/lowlevel.c   | 1 -
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 +---
 arch/arm/configs/rpi_defconfig            | 1 +
 arch/arm/cpu/board-dt-2nd.c               | 4 ++++
 5 files changed, 12 insertions(+), 4 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

