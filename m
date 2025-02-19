Delivery-date: Wed, 19 Feb 2025 16:26:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkly2-004MGf-0h
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 16:26:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkly1-0000SP-16
	for lore@pengutronix.de; Wed, 19 Feb 2025 16:26:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b60GHqPtuVf+XQ+6cmP0PtRbYUupk605oZBNWehot0I=; b=EoVaZkHdSJMdUW
	EK7Qmuicx9zZC4FyAaDJElz9M4H2KMobpDoCNclb0n2WC0hRx9EUS8J8GLuNrku/ZTfps31Jyuj6+
	1lg/R0w21w0M18oTrA4Myj/oq5RWrqxUa8b5EfKh9kONQXSGbVoEyZeChQ5J1E6jtaGR8RHsIoPWr
	h1Y2YLeFDE2EVgXOkhg5FUZVC829FilKnrNAKo3IjnIsl0xREh1D6mp82Q3TYmqLo3URmUu0LNX3v
	SmBkD805cf0SvKBGb7hnYUzXtvWHoGtNyjuC5gqaABCZx/jsv1Cg/ELK9vZLPID76oyI71mxTtrf9
	2oqCtS11vEwm83qTAENA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tklxl-0000000DXP1-2Psw;
	Wed, 19 Feb 2025 15:26:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkub-0000000DFAI-3Upl
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 14:18:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-0005Q4-3i; Wed, 19 Feb 2025 15:18:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuY-001mVo-2x;
	Wed, 19 Feb 2025 15:18:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuY-0081Wd-2X;
	Wed, 19 Feb 2025 15:18:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Feb 2025 15:18:39 +0100
Message-Id: <20250219141844.1912413-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_061853_869657_E23DE99F 
X-CRM114-Status: GOOD (  14.08  )
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
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] Filesystem memory corruption fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These are some fixes for memory corruptions that can occur on corrupted
or manipulated filesystems.

In case you use one of the affected filesystems in a secure boot chain
you should apply these patches.

Normally you shouldn't use a barebox filesystem in a secure boot chain,
but instead use FIT images on a raw partition. We never made this explicit
though. Ahmad has done this recently:

https://lore.kernel.org/barebox/20250217180949.3961860-3-a.fatoum@pengutronix.de/T/#u

I digged through the U-Boot code and there are a few CVE fixes in the
ext4 code that we'll likely need as well. But even with these applied
we don't consider the barebox filesystems as suitable for secure boot.

For those curious we consider adding support for dm-verity at some
point. This would allow us to remove the attack surface from the
filesystem implementations and we could also use bootspec rather than
signed FIT images.

Sascha

Sascha Hauer (5):
  CVE-2025-26722: fs: squashfs: Ensure positive inode length
  CVE-2025-26724: fs: cramfs: fix malloc(size + constant) buffer
    overflow issues
  CVE-2025-26723: fs: ext4: fix malloc(size + constant) buffer overflow
    issues
  CVE-2025-26725: fs: jffs2: fix malloc(size + constant) buffer overflow
    issues
  CVE-2025-26721: fs: pstore: fix malloc(size + constant) buffer
    overflow issues

 fs/cramfs/cramfs.c    | 2 +-
 fs/ext4/ext_barebox.c | 2 +-
 fs/jffs2/malloc.c     | 4 ++--
 fs/jffs2/nodelist.h   | 2 +-
 fs/jffs2/readinode.c  | 2 +-
 fs/pstore/fs.c        | 2 +-
 fs/squashfs/symlink.c | 8 ++++++--
 7 files changed, 13 insertions(+), 9 deletions(-)

-- 
2.39.5



