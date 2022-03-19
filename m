Delivery-date: Sat, 19 Mar 2022 12:04:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsu-00GfWC-Sd
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 12:04:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsu-0003U2-5G
	for lore@pengutronix.de; Sat, 19 Mar 2022 12:04:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WNLXDQjZQXjwgarST3RKNpVSX6nNpSDgQx/lW+7DttM=; b=U646hN4f7Gmwar
	/q6ZM32tcJkfAur0O7tWhUgfspegCxbf02BZVtKr/X6M81tLJmzpuF8tdP7X9oFkMwXGB7deuFjo9
	EEtOTB7HwIs2a6j9nK+4gYsTX+J684usFkxqdgL0MS0dtkAAp8XJhygtOuJfICq/Rd1SrqzNUFZkL
	VjDuy4PYXQSbxrZRv7Nr9Qkwg8N9VkG2PyUhCMQLGopudBoOZtD9yoEJFVV56ugMKnXvlb3cfnT1S
	nqdoyM6kNCHMeGKGN++c+fssF6BrTsYA+nxmjZJjh1VDjWYGOBEfCZtFDown110m+1uKYPaYD/8J3
	7wBfMB78H1/JIISU1vDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVWrL-003bRZ-Uf; Sat, 19 Mar 2022 11:03:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVWrG-003bQK-Pc
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 11:02:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1nVWrB-0003Cn-Hn
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 12:02:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>) id 1nVWr9-00Bxqp-92
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 12:02:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Mar 2022 12:02:40 +0100
Message-Id: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_040254_883235_570FB7EF 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 0/6] usb: gadget: multi: fix bind error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

USB mass storage gadget may fail during bind. USB multi gadget error
path for failed bind is broken. USB mass storage gadget unbind leaks
resources. Fix these three issues.

Ahmad Fatoum (6):
  usb: gadget: implement and use system_partitions_get_null
  usb: gadget: don't register UMS with empty function
  usb: gadget: mass-storage: fix clean up of file descriptors
  usb: gadget: mass-storage: reference count allocations used in bthread
  usb: gadget: multi: fix broken handling of USB function bind error
  usb: gadget: multi: free UMS instance at multi_unbind time

 common/fastboot.c                   |  4 +-
 common/usbgadget.c                  |  6 +--
 drivers/usb/gadget/f_mass_storage.c | 64 +++++++++++++++++++++++------
 drivers/usb/gadget/multi.c          | 24 ++++++++---
 include/system-partitions.h         |  8 ++++
 include/usb/mass_storage.h          |  1 +
 6 files changed, 81 insertions(+), 26 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

