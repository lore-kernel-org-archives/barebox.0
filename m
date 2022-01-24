Delivery-date: Mon, 24 Jan 2022 11:07:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBwGN-00BlfM-PC
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 11:07:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBwGM-0002pz-2x
	for lore@pengutronix.de; Mon, 24 Jan 2022 11:07:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w0KQ/Clt4Ivvkss4NbkbZ1mIJFx7j6sVBJMjJM1U6Hs=; b=u7NtNIJLUTLQUk
	GB9Fo3T3F06LOT5TksGyAUHl+k9KAGApu8edCuQgiUmX8Rom1s10dFiUC+DonRXH0natBXJ6MLSkR
	vkb8DxTNtkOx2wLrg3GBC9rq9qU4fL3+xzKEVvhxr8b9IsD9TzleKSGFibBFa4YJIOyXevDNBbuVt
	bPQuxxH429RQNStFUL+So5qn0MgPhDugypeTnslCJYCDcWEhjDL7shjMW8AszxKSu7p0xbFJNx6K/
	I0thQEKhkgGp8CeTDT1m/01wL/BHSTpBZAP34eyjvw4bwmZrsJCN6mXfSNUcgq4ZEHjPi6QLlSYZ+
	Zp2O1wnczg07U3tXhtcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBwEj-002uyT-Lm; Mon, 24 Jan 2022 10:06:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBwDt-002uYN-Pc
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 10:05:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDq-0002CG-3W; Mon, 24 Jan 2022 11:05:14 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDp-00C6RN-K4; Mon, 24 Jan 2022 11:05:12 +0100
Received: from mol by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDn-00CGwD-HP; Mon, 24 Jan 2022 11:05:11 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Mon, 24 Jan 2022 11:04:55 +0100
Message-Id: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_020517_892238_ADCB14B8 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] state: find backend with UUID but without a partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

When adding state with a barebox update on existing devices, then it's not
always possible to add a partition for it. But currently that's the only
way to specify the state backend on x86_64/EFI devices.

This adds support backend-diskuuid / backend-offset. This way the backend
is defined by a UUID that selects a disk and an offset within that disk.

Michael

Michael Olbrich (3):
  cdev: rename partuuid to uuid
  cdev: add diskuuid support
  state: support backend-diskuuid / backend-offset

 common/bootm.c             |  6 ++---
 common/partitions.c        |  2 +-
 common/partitions/dos.c    |  3 +++
 common/partitions/efi.c    |  2 ++
 common/partitions/parser.h |  2 +-
 common/state/state.c       | 55 +++++++++++++++++++++++++-------------
 fs/devfs-core.c            | 16 ++++++++++-
 fs/fs.c                    |  4 +--
 include/driver.h           |  5 ++--
 include/fs.h               | 12 +++++++++
 10 files changed, 79 insertions(+), 28 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

