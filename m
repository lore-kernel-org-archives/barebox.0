Delivery-date: Fri, 30 Apr 2021 15:42:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTPD-00054S-0x
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:42:07 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTPC-0000Z4-7C
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:42:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bm9Iq8nVw9C+HfyEzN8NjZccHf6kgg/qYJUKGJuJCnM=; b=jXCjjgLgmqG8Cv
	0DBZEgb/sKFyyLbc5X6HKfXg28K/w3lX1dJs1jhTmIi1OZAc9eg4raF0YtvSpB3M379l125bRnnJQ
	xwUIBfvuf3ulRlOqt/6azuNB+5/NfJEhDlpBX+0umnWFVkCmVeAR+VeKYn4hdLniLpNkPhZMRhnJy
	zpbsJCOnpOjyoo0Muzq2nejyxRzzpKHbh6tPhd/sihi0RmU6HEY3fZsyzHfoz3dhqKwfnxufRln3G
	QlKDr2WV+whmA+foI+OsP7uOtLSBCTdH9h+hEXq0PkdSZy7sCigN7aCec6+cYY3wO7uMegTyx430K
	wtvSN3Pv5EKoo4AnkLCg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTOR-007wBG-Ot; Fri, 30 Apr 2021 13:41:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTOJ-007wAU-36
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:41:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=K3zL/G08/gq+DjmXWpJO+EleBHzqu05qBevMi/B1NIs=; b=t+dpkXdDpx6oaglS9k9oHORmcF
 iEoY5k7oo9SxYvXd9wmho4WFs+iqpH8VY9uWrYW4GhH5AuD9yeDQjb4wKtbB7FMeytV2Z8VjZh5B2
 tQ0NmgpX3iVaB2uG03gPACr/SnZNcXCK3umktrbkQc6naPynrRPL5Jyi/nuyTgDly3CJpxCZ/NZnV
 bKzmuRrODWyle+wFYzzoikIS2JEGypFsFhjfG1lD4qtJW0BafZ4SMPdlixxLV5M+Yp5xTE1qbr5Tu
 0BqoO6YrzHZ8GSIYhfVkT8f79kPIyq50OUFpROGuVsNZVImBZ9AwALkMqsTGkHG6pCIz9In26Vo3y
 mJy0MDrw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTOG-001Pne-FQ
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:41:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTOF-0000As-73; Fri, 30 Apr 2021 15:41:07 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTOE-0005hr-SB; Fri, 30 Apr 2021 15:41:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 30 Apr 2021 15:40:57 +0200
Message-Id: <20210430134101.20580-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_064108_543493_416D2641 
X-CRM114-Status: GOOD (  10.67  )
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
Subject: [PATCH v2 0/4] usbgadget: add support for USB mass storage gadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series applies on top of:
https://lore.barebox.org/barebox/20210215102740.30418-1-a.fatoum@pengutronix.de/

v1 was here:
https://lore.barebox.org/barebox/20210215102740.30418-1-a.fatoum@pengutronix.de/#r
https://lore.barebox.org/barebox/20210215103704.32537-1-a.fatoum@pengutronix.de/

v1 -> v2:
  - rebase on top of new bthread API
  - drop blocking fallback implementation; we now have bthreads
    everywhere
  - reuse $global.system.partitions instead of creating even more
    autostart variables
  - fix assert_command_context to actually do what the commit message said

Ahmad Fatoum (4):
  bthread: implement basic Linux-like completion API
  slice: reschedule bthreads doing File I/O in command context
  usbgadget: refactor usbgadget_register to accept array
  usbgadget: add support for USB mass storage gadget

 Documentation/user/usb.rst          |    5 +
 commands/usbgadget.c                |   28 +-
 common/usbgadget.c                  |   29 +-
 drivers/usb/gadget/Kconfig          |   15 +-
 drivers/usb/gadget/Makefile         |    1 +
 drivers/usb/gadget/f_mass_storage.c | 2753 +++++++++++++++++++++++++++
 drivers/usb/gadget/multi.c          |   37 +
 drivers/usb/gadget/storage_common.c |  173 ++
 drivers/usb/gadget/storage_common.h |  245 +++
 include/linux/completion.h          |   55 +
 include/scsi.h                      |   12 +
 include/slice.h                     |    6 +-
 include/usb/gadget-multi.h          |   19 +-
 include/usb/mass_storage.h          |   28 +
 include/usb/storage.h               |   87 +
 15 files changed, 3469 insertions(+), 24 deletions(-)
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

