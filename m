Delivery-date: Mon, 03 May 2021 14:46:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXyN-0003D1-A0
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:46:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXyM-0007UG-Fu
	for lore@pengutronix.de; Mon, 03 May 2021 14:46:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Oppq2ZLWPZ2ccMbqOJnSrZA9C83AiRygcQVy8hJYupg=; b=Vg8DIO3hr0QHee
	Y//8xdAG61AK5v5JtRVUyruWLJtdSTkGPOb5f1UVhZz0Ya7xX/93pjAdR0HBrEyea58poIv1H68kn
	yGr0e4RiTpeFz5Ka9XgqzPyiMZkCXJuiapaTMtkwIeJJ8pzPP4FtNFd+50BlCxqQTkjesq0zgd2Sv
	OZjlav3kovoGdVlKadYllE6U2KnfYEo9DtXxRoRFbLdoZhsyn67pENkxNWfB40J28evHXHimP/tX2
	dGZ5ajRuFIcqoAcW/cbdjOlyQSlzGWT4DIrePZHdl+mP9OB1WIdRo0Axhpr504ABcTEPkoh0RPbdr
	yz1NSN3QvsW+tAQnA88A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXx3-00DtCz-10; Mon, 03 May 2021 12:45:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXwu-00DtC7-7J
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:45:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=EpaGmPrpcNoD9H4p1oZ9k0NDVYH1YGnU6CFxiMcUqZA=; b=jgwWF7yt0gkmT4fwhyuihw1gh+
 heoJHMjxMlJxJV4XMNR1tcrSDHpGCxck2pc6Vwjadt/7oEpdSwBqJc1JTFmYzwT6gW9qbBYnikUmh
 DAazx+220s773uAIY/8aEkFmPkrprv73WnQlP8XohS6I/GIOShnX2SoTO60YbOTg8veEElY36FdRg
 1D/tFmVm8UqNuGS3m/H+zqUkj4dU6oOhB9sQqMfLiQhECVeWXUU6/8T8hcq8jIZyzIxdD79Jz8rqQ
 6BwgZSEbh/AkjyI1+yBgXRtOoVqM2/OYgcMzCacTOZ1SsOOZlE7t//HceZoH4WSSuC6HlSx2yfTLg
 0dU+9Fcg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXwr-003415-Qq
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:45:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1ldXwq-00072E-7q
 for barebox@lists.infradead.org; Mon, 03 May 2021 14:45:16 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1ldXwp-0000Jr-Lr
 for barebox@lists.infradead.org; Mon, 03 May 2021 14:45:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  3 May 2021 14:45:04 +0200
Message-Id: <20210503124508.856-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_054517_891962_FB150ADE 
X-CRM114-Status: GOOD (  10.65  )
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
Subject: [PATCH v3 0/4] usbgadget: add support for USB mass storage gadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

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

Ahmad Fatoum (4):
  bthread: implement basic Linux-like completion API
  slice: reschedule bthreads doing File I/O in command context
  usbgadget: refactor usbgadget_register to accept array
  usbgadget: add support for USB mass storage gadget

 Documentation/user/usb.rst          |    5 +
 commands/usbgadget.c                |   29 +-
 common/usbgadget.c                  |   36 +-
 drivers/usb/gadget/Kconfig          |   15 +-
 drivers/usb/gadget/Makefile         |    1 +
 drivers/usb/gadget/f_mass_storage.c | 2755 +++++++++++++++++++++++++++
 drivers/usb/gadget/multi.c          |   36 +
 drivers/usb/gadget/storage_common.c |  173 ++
 drivers/usb/gadget/storage_common.h |  245 +++
 include/linux/completion.h          |   55 +
 include/scsi.h                      |   12 +
 include/slice.h                     |    6 +-
 include/usb/gadget-multi.h          |   21 +-
 include/usb/mass_storage.h          |   28 +
 include/usb/storage.h               |   87 +
 15 files changed, 3474 insertions(+), 30 deletions(-)
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

