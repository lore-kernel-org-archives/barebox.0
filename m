Delivery-date: Wed, 13 Sep 2023 14:58:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPSA-00DmCw-3z
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:58:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPS6-0007Wc-OW
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:58:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vjyjI0gveq4uh0c21ORuMPP+R885C/GDXH1wEDjhztw=; b=UMukchcFU8f+nWz2ZoFvN9X8Nq
	62W5yC2ohNeIXm7jlQ90damBMz6IOoCvVSj/ACfkMjs8zxZSi1wInc112e/Kzz/ffnaN58nbE3A7J
	tVB+aes6c2M4t6uj5wMag3piYvvfbfijxIkW20SFEVspLueupc0RQfkG2ihGltAn5aOnAlyrVt3aZ
	7Q1Gb/lNOlov7gsUPX6Gnz3qX4/X66ELP95fA/YM74kTFQN6AT4tI+W9r4LwqJAuqKQtu6Kdl5Ee+
	SNKK14aRjgLykimIw+3lQKOa8zoU42facKWucLR8FtzdN11QABOSZpGF+yJUMk9Ln1zco4WO1bfEr
	+pWW5HRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPQs-005uSi-2F;
	Wed, 13 Sep 2023 12:57:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPQo-005uR9-33
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:57:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-0006hP-LA
	for barebox@lists.infradead.org; Wed, 13 Sep 2023 14:57:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-0064XB-1B
	for barebox@lists.infradead.org; Wed, 13 Sep 2023 14:57:18 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQj-008zj6-3B
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 14:57:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Sep 2023 14:57:12 +0200
Message-Id: <20230913125715.2142524-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_055723_096256_0044F496 
X-CRM114-Status: GOOD (  10.43  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] ARM: support booting arbitrary ELF executables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike MIPS and kvx, where ELF is used as kernel image format, Linux
ARM support defines its own flattened format.

Other kernels may be distributed as ELF images though, so it makes
sense to enable booting of ELF images on ARM as well.

This has been tested booting FreeRTOS ELF executables on the ZynqMP.

Note that this will refuse to boot kernel ELF images as those have
type dyn, while the common ELF code in barebox will only boot type exec.

Ahmad Fatoum (3):
  common: elf: support loading to address 0
  ARM: add support for booting ELF executables
  kbuild: support generating stripped ELF files for PBL

 Makefile                   |  4 +--
 arch/arm/cpu/Makefile      |  1 +
 arch/arm/cpu/bootm-elf.c   | 56 ++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/elf.h |  5 ++++
 common/elf.c               | 17 ++++++++----
 images/Makefile            | 10 +++++--
 include/elf.h              |  1 +
 7 files changed, 83 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/cpu/bootm-elf.c

-- 
2.39.2



