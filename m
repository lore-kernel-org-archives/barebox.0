Delivery-date: Tue, 13 Apr 2021 00:36:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5Ai-0006DD-2k
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:36:44 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5Ag-0006zP-Ct
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:36:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lKnWryHnpVvzz1IHG7Q3q4UsU98JkTbXrqUisXDic2o=; b=DDctR9fEWRiIi8
	oBOeW4s9fH/WKOVDBFokIt/kV/REvG+V/Oa4S+mK9fP0x5oCn9axYDRtNGbJuC8P7QLT/huEXJxAq
	B3jnGnbeDNQ7ekwr1N86Wm/Nd4p9A9Z2B5L9ydcoXz/bvxW8JElaHeWZS2KNrGjteF8ZwSNb2rT69
	tpzeV6Wum5GbH0T/s8R2VNvNbdCowqQuIDGFCbt86onSxvEtcbdJveNe3w914I4dYEDyQRmi7yAQJ
	D988cLlUp0tUWmxzSgPRVwTE61wJoFlAS4uDbghZSsQealJ84LWBL3xihT0HrtwrEsuBgXfQkTVci
	ired9ySs2VEeu4vW7wDw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW59a-007nAV-BY; Mon, 12 Apr 2021 22:35:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59D-007n6t-RY
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=HeQyH7kFX0l7Qq+/rRP6loIoscsmI0z7o8XhUiIN3+M=; b=X5pN+MTJrgq8qV30OZXTWHPbFt
 KW0/whyj7Cvt2xekCMT/CZD5QMGZY/jDKUFswaOQMj8+yZ3fOrMcO7WxypbhxSUxtDMUpB0HJduPv
 pxPuZczSPNZLIpYzLlIQKZNPY6GGaohdgP7jI1YTKEkAWDXuAGlLoPT1jgehX/kJ/nonSwl71HSZU
 qwVIqF7/JDZl0R4jTGClbfGRwMowUAM4uxgA29tSlNBgEnA4EJrP7+Ao7uDWsm1fmXkXAI7mFjqGt
 +o7vWpRmCeYXwFpeCRV3bM2i34ALr/YGx3r3EjzbID7Gp4uICT/3UyTbEZW8L0eVTW7bm+X/g7A4/
 6MGSx98Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW598-006ap1-IJ
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lW596-0006BG-Tx
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 00:35:04 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lW596-0003s4-Ai
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 13 Apr 2021 00:34:48 +0200
Message-Id: <20210412223502.29691-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153506_689754_65A6A7AB 
X-CRM114-Status: GOOD (  12.92  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/14] usb: gadget: refactor to allow easier extension
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's some duplication between DFU and Fastboot and incoming USB
mass storage support as well as custom protocols that might be
implemented by board vendors could benefit from some consolidation.

This is added here in the form of machine partitions, which is just
a way to have a machine-global file_list, that can be used as fallback
for fastboot, DFU, mass storage gadget, ... etc.

Some commits are not directly related and happened along the way.
Let me know if I should split up the series.

Cheers,
Ahmad Fatoum (14):
  show_progress: add system wide progress stage notifier
  common: console: add log_dprint to print to file descriptor
  string: implement strstarts along with strends
  vsprintf: introduce %m shorthand for "%s", strerror(errno)
  param: introduce file-list parameter type
  common: add generic machine partitions interface
  fastboot: handle ill-named partitions gracefully
  usb: gadget: dfu: change status message to info log level
  usbgadget: autostart: fix indeterminism around usbgadget.autostart
  usbgadget: allow DFU and Fastboot functions to coexist
  fastboot/dfu: use machine partitions as fall back
  bbu: add function to directly add handlers into file_list
  file_list: add file_list_detect_all()
  common: make FILE_LIST feature unconditional

 common/Kconfig               | 15 ++++--
 common/Makefile              |  3 +-
 common/bbu.c                 | 24 ++++++----
 common/console_common.c      | 15 ++++++
 common/fastboot.c            | 28 ++++--------
 common/file-list.c           | 82 +++++++++++++++++++++++++++++++++
 common/machine-partitions.c  | 44 ++++++++++++++++++
 common/usbgadget.c           | 81 ++++++++++++++++++---------------
 drivers/usb/gadget/Kconfig   |  2 -
 drivers/usb/gadget/dfu.c     |  3 +-
 drivers/usb/gadget/multi.c   | 12 +++++
 include/bbu.h                | 10 +++-
 include/fastboot.h           |  6 +--
 include/file-list.h          | 12 +++++
 include/linux/string.h       | 10 ++++
 include/machine-partitions.h | 40 ++++++++++++++++
 include/of.h                 |  5 ++
 include/param.h              | 15 ++++++
 include/printk.h             |  1 +
 include/progress.h           | 43 ++++++++++++++++++
 include/string.h             |  1 +
 include/stringlist.h         |  1 +
 include/usb/gadget-multi.h   |  1 +
 lib/Kconfig                  |  6 +++
 lib/parameter.c              | 88 ++++++++++++++++++++++++++++++++++++
 lib/show_progress.c          | 28 ++++++++++++
 lib/string.c                 |  9 ++++
 lib/stringlist.c             | 30 ++++++++++++
 lib/vsprintf.c               | 13 ++++++
 net/Kconfig                  |  1 -
 net/fastboot.c               |  4 +-
 31 files changed, 552 insertions(+), 81 deletions(-)
 create mode 100644 common/machine-partitions.c
 create mode 100644 include/machine-partitions.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

