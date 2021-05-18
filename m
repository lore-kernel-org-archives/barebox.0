Delivery-date: Tue, 18 May 2021 13:45:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liy9t-00048w-SE
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:45:09 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liy9t-0000el-3a
	for lore@pengutronix.de; Tue, 18 May 2021 13:45:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L8e5ZkeGdwDOPY6DL8hNJVd8+Xy+TgLovyVaPOheBVQ=; b=pz7Wrna4qJu/z0
	/DjpH64sBpMygc0jd9vUVBUFo1RqAMVWSxZRjSvq4XzFY43tniVV8BV5LaHApnh6cTO0PuDsRe1y2
	jiXjf1F0T5m1x6lIb9SON+cTtAXfvtqvIcyYfDOHgIvsBrwPqvCMzK5WHlk8S85NH7xVCmOwqieOr
	460C15P7TdFrmLuNL+NaREXSEpb3MWAQeCY+6ZCOo42682SrkpcH1/fLdCbUMBtewGlzkHtRi7IFU
	plhEqTJ0GOyDo6JmcFyuuoRjGg7+2VBsEcDg64cyu/j/+TSNiVoHm20CTK2uQnQS6Qiw2z1xUQC/J
	gW1EV6F/FdD+5TnMV5AQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liy93-000cJG-B9; Tue, 18 May 2021 11:44:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liy8v-000cIc-L6
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Py9mSyqACJHfBMMyzn5M0EiUK8j1cBJNpogfkzQIrZg=; b=x0cc6nfl6KCNyTc0CyhveqXxcQ
 ck88zkQWXdZNv31NUDTTBXKnEDPkE1PxqrPa781RdlId2t5n9uXfGlmHrDfrgVD1d2LQe+FBqXo6m
 engDdQvjzJ+9S5nZtxvTh2GYe5f1f5/uZJjtGQyNln05Yr4Xnjkrou9/UOiV77PGEKtIDXjewYnCl
 CPbzZqzrfDY9IuHGeq7CPQBE84GAvPhMfFi3OZsGl7kx2OH15cLtlbT9SGk3VN72k0hNWUmz1EPwj
 S2Y0r6Jxc3fClZMG7GyRS3/wJ/ghDS5/OigYN6AkU7e8upXd3lxAeFTeN0Gomuqh5wTlDbaJ8U0Vk
 mkzDZspg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liy8t-00Ec1e-5D
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:44:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liy8r-0000V9-UK; Tue, 18 May 2021 13:44:05 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liy8r-0001NX-Lv; Tue, 18 May 2021 13:44:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:44:01 +0200
Message-Id: <20210518114404.5553-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044407_228301_10EF16E2 
X-CRM114-Status: GOOD (  10.52  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] rockchip: Build for multiple SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

rk3188 and rk3288 can easily be built together in a single image. Add
support for this and merge the two defconfig files.

Sascha Hauer (3):
  ARM: rockchip: Allow to build for multiple SoCs
  ARM: Rockchip: Merge defconfig files
  ARM: rockchip: radxa-rock: build defaultenv

 arch/arm/boards/radxa-rock/Makefile           |  1 +
 arch/arm/boards/radxa-rock/board.c            |  3 +
 .../{env => defaultenv-radxa-rock}/boot/mshc1 |  0
 .../boot/mshc1-old                            |  0
 .../init/bootsource                           |  0
 .../nv/hostname                               |  0
 .../nv/linux.bootargs.console                 |  0
 arch/arm/configs/rk3188_defconfig             | 98 -------------------
 .../{rk3288_defconfig => rockchip_defconfig}  |  5 +-
 arch/arm/mach-rockchip/Kconfig                | 12 +--
 arch/arm/mach-rockchip/Makefile               |  1 +
 .../arm/mach-rockchip/include/mach/debug_ll.h | 12 ++-
 .../arm/mach-rockchip/include/mach/rockchip.h | 22 +++++
 arch/arm/mach-rockchip/rk3188.c               |  4 +-
 arch/arm/mach-rockchip/rk3288.c               | 25 ++---
 arch/arm/mach-rockchip/rockchip.c             | 17 ++++
 common/Kconfig                                | 18 +++-
 17 files changed, 89 insertions(+), 129 deletions(-)
 rename arch/arm/boards/radxa-rock/{env => defaultenv-radxa-rock}/boot/mshc1 (100%)
 rename arch/arm/boards/radxa-rock/{env => defaultenv-radxa-rock}/boot/mshc1-old (100%)
 rename arch/arm/boards/radxa-rock/{env => defaultenv-radxa-rock}/init/bootsource (100%)
 rename arch/arm/boards/radxa-rock/{env => defaultenv-radxa-rock}/nv/hostname (100%)
 rename arch/arm/boards/radxa-rock/{env => defaultenv-radxa-rock}/nv/linux.bootargs.console (100%)
 delete mode 100644 arch/arm/configs/rk3188_defconfig
 rename arch/arm/configs/{rk3288_defconfig => rockchip_defconfig} (96%)
 create mode 100644 arch/arm/mach-rockchip/include/mach/rockchip.h
 create mode 100644 arch/arm/mach-rockchip/rockchip.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

