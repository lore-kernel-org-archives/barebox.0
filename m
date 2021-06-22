Delivery-date: Tue, 22 Jun 2021 10:27:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbl7-00086p-6Z
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 10:27:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbl6-00035Q-A8
	for lore@pengutronix.de; Tue, 22 Jun 2021 10:27:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HAnOzGXeVYqUYLOStxLz0u1gs/o0cyJNbeJ15nGGDrc=; b=ViIQFauRh7ojnh
	wTLkQcrCWw2AR71LbLXZdXGPJL6gxjSABaJO+VuSzx6kuAjocLFj+axFTSb7z5O2zKg5dkknzjjv9
	aOBKiT0dmtDHG8XmvYpM90+XXo36RrO3kmYau8abgx7RqblmYAleuvsOL4hdrY7aWzzYY9qXG0Utb
	09IzUqwXii28pSYNhP24bjHIP03xrBsXqg/ut4Z0ydNtLKg+mU33qOelAr2sUX/WWi0tpbDsl3kVs
	L7xRU1sRzfVBU+6NvkqSXEiWVFpI9Xftq3L/83KL3CaSiJ+sm5lRhU4KHLptfUknSYl/kBG9Cv8k6
	thyOZLAD4enOmfne7+9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvbjq-006E3h-TE; Tue, 22 Jun 2021 08:26:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvbji-006E13-L0
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 08:26:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lvbjh-0002ib-Cf
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 10:26:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lvbjg-0005hg-Vf
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 10:26:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Jun 2021 10:26:09 +0200
Message-Id: <20210622082617.18011-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_012622_738830_6AAB92B5 
X-CRM114-Status: GOOD (  11.17  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 0/8] usbgadget: add support for USB mass storage gadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

v3 -> v4:
  - change bthreads to be scheduled like workqueues instead of pollers
  - change virtio input from bthread to poller
  - add useful bthread debug print

v2 -> v3:
  - rebase on v3 of the preparatory system partitions series
  - have usbgadget -S '' fallback to use $global.system.partitions
  - do file_list_detect_all at gadget instantiation time

v1 -> v2:

  - rebase on top of new bthread API
  - drop blocking fallback implementation; we now have bthreads
    everywhere
  - reuse $global.system.partitions instead of creating even
    more autostart variables
  - fix assert_command_context to actually do what the
    commit message said


Ahmad Fatoum (8):
  input: virtio: poll from poller, not bthread
  bthread: add debug print for scheduler context switches
  common: move workqueue handling from poller_call() to sched()
  common: bthread: schedule only in command context
  bthread: implement basic Linux-like completion API
  Documentation: devel: background-execution: update bthread docs
  usbgadget: refactor usbgadget_register to accept array
  usbgadget: add support for USB mass storage gadget

 Documentation/devel/background-execution.rst |   34 +-
 Documentation/user/usb.rst                   |    5 +
 commands/bthread.c                           |    5 +
 commands/usbgadget.c                         |   29 +-
 common/Kconfig                               |    5 +
 common/Makefile                              |    1 +
 common/bthread.c                             |    5 +-
 common/poller.c                              |   23 +-
 common/sched.c                               |   26 +
 common/usbgadget.c                           |   36 +-
 drivers/input/Kconfig                        |    3 +-
 drivers/input/virtio_input.c                 |   45 +-
 drivers/usb/gadget/Kconfig                   |   15 +-
 drivers/usb/gadget/Makefile                  |    1 +
 drivers/usb/gadget/f_mass_storage.c          | 2725 ++++++++++++++++++
 drivers/usb/gadget/multi.c                   |   36 +
 drivers/usb/gadget/storage_common.c          |  173 ++
 drivers/usb/gadget/storage_common.h          |  245 ++
 include/linux/completion.h                   |   55 +
 include/poller.h                             |    8 +-
 include/sched.h                              |   10 +-
 include/scsi.h                               |   12 +
 include/slice.h                              |    8 +-
 include/usb/gadget-multi.h                   |   21 +-
 include/usb/mass_storage.h                   |   28 +
 include/usb/storage.h                        |   87 +
 26 files changed, 3534 insertions(+), 107 deletions(-)
 create mode 100644 common/sched.c
 create mode 100644 drivers/usb/gadget/f_mass_storage.c
 create mode 100644 drivers/usb/gadget/storage_common.c
 create mode 100644 drivers/usb/gadget/storage_common.h
 create mode 100644 include/linux/completion.h
 create mode 100644 include/usb/mass_storage.h
 create mode 100644 include/usb/storage.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

