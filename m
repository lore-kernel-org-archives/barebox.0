Delivery-date: Tue, 11 Jun 2024 09:00:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUA-00470O-39
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 09:00:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvU9-00067P-I3
	for lore@pengutronix.de; Tue, 11 Jun 2024 09:00:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mysbdTBedniK9+gtKc/w0NkDslUVpk3+vGLnRw+fv2c=; b=uwFOrpWqYJLUTVomDrx9FW0xCL
	QNOXa6m02tAw2x1BfxmGSdYKVdxwqYDONIuOpEkijGfLwAEJKWsM5w3Y9R5llY1vbA3OJwN5OSf/X
	ZBI4PwX9tk2bfv6IFdS1I2vUFFqDH03Q1qaxforzZRf81LC2g04kDcKrX0ViEJ/IOt5WiUYX74+gD
	3M7WTHlmVoAcUX4VMNAmZb9CmiAW5codNgDu6mlpLGD5ZHXpeed/N/OOZA+8e4Z1+Xq2sYi8cawmC
	/zX+D1X3tCILGyf4T3TyNM9KsNfoAcJYIPRg+fvgF6n0F+mzeZUoYS2nxZCq5/dnNV2Y0zlJPDAmE
	o0s62rSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTe-00000007mvX-1efz;
	Tue, 11 Jun 2024 06:59:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTZ-00000007msn-3lLr
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:59:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-0005qJ-OT
	for barebox@lists.infradead.org; Tue, 11 Jun 2024 08:59:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-001UDA-Bn
	for barebox@lists.infradead.org; Tue, 11 Jun 2024 08:59:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-00CATV-0u
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 08:59:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 11 Jun 2024 08:59:17 +0200
Message-Id: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235925_952898_9A856BF6 
X-CRM114-Status: GOOD (  10.53  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/6] semihosting: extend support for ARM64, console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, we limited semihosting support to 32-bit ARM, but it's also
usable on ARM64 and even RISC-V.

This series does the first step by making it compile for ARM64 and also
adds DEBUG_LL and console drivers.

Ahmad Fatoum (6):
  ARM: lib32: semihosting: prepare for more general use
  firmware: semihosting: add ARMv8-A semihosting support
  firmware: semihosting: don't return error code from writec/write0
  firmware: semihosting: translate return values in wrappers
  ARM: semihosting: add DEBUG_LL implementation
  serial: add semihosting console

 arch/arm/Kconfig                              |  2 +-
 arch/arm/cpu/Makefile                         |  2 +
 .../semihosting-trap_32.S}                    |  2 +-
 arch/arm/cpu/semihosting-trap_64.S            | 10 ++
 arch/arm/include/asm/debug_ll.h               |  4 +
 arch/arm/include/asm/semihosting.h            | 47 ++++++---
 arch/arm/lib32/Makefile                       |  1 -
 common/Kconfig.debug_ll                       | 13 +++
 drivers/firmware/Kconfig                      |  4 +
 drivers/firmware/Makefile                     |  1 +
 .../lib32 => drivers/firmware}/semihosting.c  | 99 ++++++++++---------
 drivers/serial/Kconfig                        |  8 ++
 drivers/serial/Makefile                       |  1 +
 drivers/serial/serial_semihosting.c           | 44 +++++++++
 fs/Kconfig                                    |  2 +-
 fs/smhfs.c                                    | 37 +++----
 include/asm-generic/semihosting.h             | 23 +++++
 include/debug_ll/semihosting.h                | 15 +++
 18 files changed, 227 insertions(+), 88 deletions(-)
 rename arch/arm/{lib32/semihosting-trap.S => cpu/semihosting-trap_32.S} (84%)
 create mode 100644 arch/arm/cpu/semihosting-trap_64.S
 rename {arch/arm/lib32 => drivers/firmware}/semihosting.c (64%)
 create mode 100644 drivers/serial/serial_semihosting.c
 create mode 100644 include/asm-generic/semihosting.h
 create mode 100644 include/debug_ll/semihosting.h

-- 
2.39.2



