Delivery-date: Mon, 03 May 2021 13:51:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX6w-00031q-31
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:51:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX6s-0000Uz-KU
	for lore@pengutronix.de; Mon, 03 May 2021 13:51:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VZMrvzSmM09wkxi9BDB4SF+6wi54O6CqyH2uREEukh4=; b=Ui5L7pIHv+Fi9b
	Q6BN5LEr69vOEEb01LbwNQrVTWkstMUohXaJyMiBwcrGQPhv7DdR+rayVeU2IUHsTL0LjeYA02m+e
	uWmxxf5/6zlYFwOlU7qcbyapl8ElcPq4aQD+0SIeodnNynYTqEypeF1bcPFWMDEOWBk0Q0TB1glNh
	R/iNdGAevmLQ5a+xyVcTlQdYNiVQU/TLs0+DkZIcmsbE+LEpTu9Eq3/eRWZBuoupYXeoH0b62fxLs
	jN2a7VqBNPalnLjQ7MsvhfCVne79MeRX5u/zZQP59yrP4i9nGOSWov80tqciH8A5XdyzZHEXBtoM6
	CkZA3OJ0GoW1+NJBDFUg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldX5k-00DmsM-Mm; Mon, 03 May 2021 11:50:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4j-00Dmes-E5
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:49:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=yRM1MC9USfr3AJN5kLAfWC+Ssm68Ae/+WKPXbSWJDWo=; b=FXHLq7Is4CL84re1k3pssFCYE5
 pHcA8MPUVtZqUMKbwzMAy23VQGC+niUcB5lAvxYFVeiyTikI6vr36Sizxj3dz45HG3gpKLuWPD+bM
 CkPIdtZehO+NIsAgRhUBXE9bZDhE9s9THYQFC45CK+cc/zLQSvXcc58K60cnjRsFW45v+A51NOOnt
 8bzP7HHr4aD2n7dIA8p6I9o0xrLpj188waQvtvMzF1uneEapyTZoTcqGNnVDVezc8B8VChfcZijqv
 kWAA5js91qHFRC/TJCG8KAT3DPTeF6g+dLq3qaCe1TF3QFJAoXEh3SWexozJ+ZA6vWw5V9RFxbLJk
 KjLaxCmQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4g-0031aB-8N
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:49:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1ldX4d-0007pc-0r
 for barebox@lists.infradead.org; Mon, 03 May 2021 13:49:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1ldX4c-0003bA-Bu
 for barebox@lists.infradead.org; Mon, 03 May 2021 13:49:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  3 May 2021 13:48:45 +0200
Message-Id: <20210503114901.13095-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044918_321880_895D109C 
X-CRM114-Status: GOOD (  14.51  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/16] USB: gadget: refactor to allow easier extension
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

 There's some duplication between DFU and Fastboot and incoming USB
 mass storage support as well as custom protocols that might be
 implemented by board vendors could benefit from some consolidation.

 This is added here in the form of system partitions, which is just
 a way to have a machine-global file_list, that can be used as fallback
 for fastboot, DFU, mass storage gadget, ... etc.

 Some commits are not directly related and happened along the way.

 v2 -> v3:
  - squash fixups
  - add new commit to ignore NULL in file_list_free
  - reworked usbgadget_register logic, so usbgadget -D '' with no
    DFU compiled in is not silently ignored
  - fix error checking in file_list_detect_all

 v1 -> v2:
  - log_writefile(filename) instead of log_dprint(fd) (Sascha)
  - rename $machine.partitions to $global.system.partitions (Sascha)
  - add new commit fixing error with appending to files on ext4


Ahmad Fatoum (16):
  show_progress: add system wide progress stage notifier
  common: console: add log_writefile to write log into new file
  string: implement strstarts along with strends
  vsprintf: introduce %m shorthand for "%s", strerror(errno)
  param: introduce file-list parameter type
  common: add generic system partitions interface
  fastboot: handle ill-named partitions gracefully
  usb: gadget: dfu: change status message to info log level
  usbgadget: autostart: fix indeterminism around usbgadget.autostart
  usbgadget: allow DFU and Fastboot functions to coexist
  file_list: make freeing a NULL pointer a no-op
  fastboot/dfu: use system partitions as fall back
  bbu: add function to directly add handlers into file_list
  file_list: add file_list_detect_all()
  common: make FILE_LIST feature unconditional
  fs: error out when writing on read-only file system

 common/Kconfig              | 15 ++++--
 common/Makefile             |  3 +-
 common/bbu.c                | 24 ++++++----
 common/console_common.c     | 20 ++++++++
 common/fastboot.c           | 28 ++++-------
 common/file-list.c          | 85 +++++++++++++++++++++++++++++++++
 common/system-partitions.c  | 44 ++++++++++++++++++
 common/usbgadget.c          | 93 ++++++++++++++++++++++---------------
 drivers/usb/gadget/Kconfig  |  2 -
 drivers/usb/gadget/dfu.c    |  3 +-
 drivers/usb/gadget/multi.c  | 18 +++++--
 fs/fs.c                     |  6 +--
 include/bbu.h               | 10 +++-
 include/fastboot.h          |  6 +--
 include/file-list.h         | 12 +++++
 include/linux/string.h      | 10 ++++
 include/param.h             | 15 ++++++
 include/printk.h            |  1 +
 include/progress.h          | 43 +++++++++++++++++
 include/string.h            |  1 +
 include/stringlist.h        |  1 +
 include/system-partitions.h | 40 ++++++++++++++++
 include/usb/gadget-multi.h  |  1 +
 lib/Kconfig                 |  6 +++
 lib/parameter.c             | 88 +++++++++++++++++++++++++++++++++++
 lib/show_progress.c         | 28 +++++++++++
 lib/string.c                |  9 ++++
 lib/stringlist.c            | 30 ++++++++++++
 lib/vsprintf.c              | 13 ++++++
 net/Kconfig                 |  1 -
 net/fastboot.c              |  4 +-
 31 files changed, 571 insertions(+), 89 deletions(-)
 create mode 100644 common/system-partitions.c
 create mode 100644 include/system-partitions.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

