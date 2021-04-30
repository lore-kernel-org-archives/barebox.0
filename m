Delivery-date: Fri, 30 Apr 2021 15:31:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTEn-0004yP-2i
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:31:21 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTEk-0006ou-W2
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:31:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yqwRF/W1exl1Qcdozz+nKIVGiXRybRMkY8A0qCdmaV8=; b=W10dn0b/ImVknP
	PiGbda25vYzm6vJMm+DIBD+YrZ9qDehxLrqlDTqukRiIqwqnWoypNT2at7LysUDkcmrAjSVOmS+dd
	t8Yr1vKPN0AmbXg8LtthxEscEhSZmrmQFb1LuWMyQSKn/4I4zNsUcVhz+Iho7w3Us7CWUHuvG6FgD
	c0f4wds5Ei+ElQjDQNu9PmJYMWhIZo3UhtMpLd0QzOaZ5wPXclylUsgrf+9+QoLSHK9kDnNIJLO4x
	NdwGjfmQSjMsxkbTXxyefLukuy6f4/kbLY8DTLG6hdDFx9Go/y/YrupvHu6ZT51uiINQOnfUSW1sK
	DvqbKII3J2oInXWXQKhQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTDn-007uam-K5; Fri, 30 Apr 2021 13:30:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDW-007uYN-6F
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:30:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=vwRP0Au6EcQqKed7LmI38MDMpRAKG1E0xvFtismcg1g=; b=Znq7WzI6DZ4BH2/L5zg4o/psH6
 QOiDzyT7p7ii3gYhJuOV1TRs2g6CTuvejh/hiTz5E7aJKEbhdOdTGp8Lzhvw6dIsEWkZCPY76Id/x
 OXqsylY7/KVtiIwa07UEao4hMegoRUlyKflogAXp5w9gMGrC5CQDamuP8b+6yjQngOKqQnkqEZvS/
 uDfCCW8KX/W9Ka6cj2xWRlGtHXlBjE7cy1seO+J2ebE59ORRjIkAOSwxp8tW7uDy3gEmG+XjVS5xg
 rr4aeRc9kpRg3JRNCH3xzOsabGiD9TGeZfGpvaccJAzQAa5K0aAmE/Tlk3Z1MiX7cZU7/Vf35xtrA
 1EsDCGFA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDS-001PHN-9l
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:30:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lcTDN-00069l-Ng
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 15:29:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lcTDM-0003qT-W7
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 15:29:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 30 Apr 2021 15:29:34 +0200
Message-Id: <20210430132949.14617-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_062958_388250_2517A229 
X-CRM114-Status: GOOD (  14.34  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/15] USB: gadget: refactor to allow easier extension
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's some duplication between DFU and Fastboot and incoming USB
mass storage support as well as custom protocols that might be
implemented by board vendors could benefit from some consolidation.

This is added here in the form of system partitions, which is just
a way to have a machine-global file_list, that can be used as fallback
for fastboot, DFU, mass storage gadget, ... etc.

Some commits are not directly related and happened along the way.

Let me know if I should split up the series.

v1 -> v2:
 - log_writefile(filename) instead of log_dprint(fd) (Sascha)
 - rename $machine.partitions to $global.system.partitions (Sascha)
 - add new commit fixing error with appending to files on ext4 

Ahmad Fatoum (15):
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
  fastboot/dfu: use system partitions as fall back
  bbu: add function to directly add handlers into file_list
  file_list: add file_list_detect_all()
  common: make FILE_LIST feature unconditional
  fs: error out when writing on read-only file system

 common/Kconfig              | 15 +++++--
 common/Makefile             |  3 +-
 common/bbu.c                | 24 ++++++----
 common/console_common.c     | 20 +++++++++
 common/fastboot.c           | 28 ++++--------
 common/file-list.c          | 82 ++++++++++++++++++++++++++++++++++
 common/system-partitions.c  | 44 +++++++++++++++++++
 common/usbgadget.c          | 81 +++++++++++++++++++---------------
 drivers/usb/gadget/Kconfig  |  2 -
 drivers/usb/gadget/dfu.c    |  3 +-
 drivers/usb/gadget/multi.c  | 12 +++++
 fs/fs.c                     |  6 +--
 include/bbu.h               | 10 ++++-
 include/fastboot.h          |  6 +--
 include/file-list.h         | 12 +++++
 include/linux/string.h      | 10 +++++
 include/param.h             | 15 +++++++
 include/printk.h            |  1 +
 include/progress.h          | 43 ++++++++++++++++++
 include/string.h            |  1 +
 include/stringlist.h        |  1 +
 include/system-partitions.h | 40 +++++++++++++++++
 include/usb/gadget-multi.h  |  1 +
 lib/Kconfig                 |  6 +++
 lib/parameter.c             | 88 +++++++++++++++++++++++++++++++++++++
 lib/show_progress.c         | 28 ++++++++++++
 lib/string.c                |  9 ++++
 lib/stringlist.c            | 30 +++++++++++++
 lib/vsprintf.c              | 13 ++++++
 net/Kconfig                 |  1 -
 net/fastboot.c              |  4 +-
 31 files changed, 555 insertions(+), 84 deletions(-)
 create mode 100644 common/system-partitions.c
 create mode 100644 include/system-partitions.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

