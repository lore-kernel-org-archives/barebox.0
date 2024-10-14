Delivery-date: Mon, 14 Oct 2024 15:30:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9A-004H1c-1w
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L99-00039v-De
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2xAmviV/gfpAP2uAPhZn0eSYjG5AXLtNOnFkPgCgnaw=; b=r30XWfTVBm58l91VagqisgMW4v
	zfMFxzyPM7C1JiclmMLqk9r6HA/fLgku/zBIiGuynUM+7fh7mJEK1sWpFIblxOFUH6Qa1Mcx4rpCE
	015DCL/sU1STsfJKII8PoJb+Oo7K439Z6G+7CucRNLVsGYnIHn7sjAUk3zlxZ79InZ0GJNBtadtb/
	OAushDSly3qpRQ89HOry9Rx6pvXP6btfZmoVBoAZaq2/HSVQjWFSo9xH2LUhqj/Ll97HjtURh3aQG
	tr8UNjoKfhALFmg/t+0wl6DIMA5CpWPMR0xtDTev1po5TkupGgFXOXOttvQcftut/+lqVuRXXyakY
	EDv1Hyww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8b-00000005HVG-2bDy;
	Mon, 14 Oct 2024 13:29:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb5-00000004zKr-1vIP
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=2xAmviV/gfpAP2uAPhZn0eSYjG5AXLtNOnFkPgCgnaw=; b=nqJPWysgHZhaDxlwrAN6QmG652
	M0eN6A3QDMaqhUUYfneGKWaN3TJW+uC321ox/yfePT/SlhsJM1c2slzS0GUt3clKUmDkOUMIT5HGO
	SsPxHfdQ7v+lf6d4hUTQ1rG9YjrgBk3ZR9T84CgSyPkNpx8jdRgP0iXM+bF9c8iqU0g3Ea5dpGgMW
	xDpZNGqpGQCnPSU1FJOeP2MGllt0z8O1KKWWskN5i/EI0iTztzLA/22C1qIfOJZFztlTH92WpHkHh
	2S1ceXJ9UB2vBJ/KyvwoAiqfvhKYaANliBr2M/0ssjWxFjKY2vW43QQZRfWskVs17RIcdBBNTj25Q
	J847Kqfg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb0-00000006Kl2-41Kc
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:50:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-0001C0-DJ
	for barebox@lists.infradead.org; Mon, 14 Oct 2024 13:50:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-001mUO-0g
	for barebox@lists.infradead.org; Mon, 14 Oct 2024 13:50:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jaz-00BvdQ-31
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 13:50:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 14 Oct 2024 13:50:28 +0200
Message-Id: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125043_241989_3D07AAE8 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/12] include: common.h: make it include only headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Symbols exclusively defined in common.h are a problem, because other
headers that require them will need to include a lot of extra baggage,
which in the worst case can lead to cyclic dependencies and in every
case leads to longer compile times.

This series prepare for removing common.h in other headers by moving
everything it contains apart from #includes into more fitting existing
headers that are already being included.

Ahmad Fatoum (12):
  include: common.h: move barebox startup functions into separate header
  include: common.h: move ctrlc() functions into stdio.h
  include: common.h: move out integer string parsing functions
  include: common.h: move out endianness macro sanity check
  include: common.h: move out user interface functions into stdio.h
  include: common.h: move out memory option parsing prototypes
  include: common.h: move out RW_BUF_SIZE definition
  commands: add macro to simplify defining one shot commands
  commands: reginfo: make command mpc5xxx-specific
  include: common.h: move out get_ram_size
  include: align: reword STACK_ALIGN_ARRAY macro parameter for clarity
  ARM: bcm283x: remove common.h include in mbox.h

 arch/arm/boards/raspberry-pi/mbox-helpers.c |  1 +
 arch/powerpc/mach-mpc5xxx/Kconfig           |  4 -
 arch/powerpc/mach-mpc5xxx/Makefile          |  2 +-
 arch/powerpc/mach-mpc5xxx/reginfo.c         |  4 +-
 commands/Kconfig                            | 11 ---
 commands/Makefile                           |  1 -
 commands/reginfo.c                          | 21 ------
 include/barebox.h                           | 37 ++++++++++
 include/command.h                           | 15 ++++
 include/common.h                            | 81 +--------------------
 include/getopt.h                            |  8 ++
 include/linux/align.h                       | 11 +--
 include/linux/kstrtox.h                     |  6 ++
 include/mach/bcm283x/mbox.h                 |  4 +-
 include/stdio.h                             | 14 ++++
 include/unistd.h                            |  2 +
 lib/hexdump.c                               | 20 +++++
 17 files changed, 115 insertions(+), 127 deletions(-)
 delete mode 100644 commands/reginfo.c
 create mode 100644 include/barebox.h

-- 
2.39.5



