Delivery-date: Wed, 17 Jul 2024 08:34:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEs-0005bW-1A
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 08:34:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEr-0004OF-Ka
	for lore@pengutronix.de; Wed, 17 Jul 2024 08:34:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=96dSLWnbiwxGUPc2PLE6zYkJxljqDg+a3J5CxnlPAjQ=; b=Vh03piDtwql4xnEs96EkGp/QdR
	AkC/DZIJEHkUElyW0hAOOg9S+h3NGeC85ObgiheUTbZFARK2COp4L+mtcD3HviOMbrNqkB0LdYDaG
	QIXXdAT1MSUrDB3TjjETA0AVpoCqvelRi+AfshZ3oR8gda2FAIT8pnKWvpxjWziDoVx3D99Q9NJ2c
	4BlvlrkEK0Cxx/SQP7Ea9uL7+6KLoDN3LQx6gqnklX3XqJdt2NhNgbkKOK9xn3oBUZLDV/RQKGGQ7
	I0jApEyHLHr45SIUxyNCPQMUTRaPYgk0j9/wnKGD1IgyOPpAUDvI2hD27LyTc9seGL1B5MTyiK0cz
	fn/eh91A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEL-0000000CrF9-0qxs;
	Wed, 17 Jul 2024 06:33:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEH-0000000CrDh-3HIt
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 06:33:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-00045T-Cw; Wed, 17 Jul 2024 08:33:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEF-0009Q4-W3; Wed, 17 Jul 2024 08:33:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEF-00BnEX-2u;
	Wed, 17 Jul 2024 08:33:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>
Date: Wed, 17 Jul 2024 08:33:22 +0200
Message-Id: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_233333_840604_A08CFE60 
X-CRM114-Status: UNSURE (   9.63  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] squashfs: harden against crafted metadata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Richard reports[1] that barebox is susceptible to a number of memory safety
issues when parsing crafted squashfs files, which have been fixed in the
upstream Linux implementation in the meantime.

Import the mentioned commits from Linux to fix this:

  01cfb7937a9af ("squashfs: be more careful about metadata corruption")
  d512584780d3e ("squashfs: more metadata hardening")
  cdbb65c4c7ead ("squashfs metadata 2: electric boogaloo")
  71755ee5350b6 ("squashfs: more metadata hardening")
  a3f94cb99a854 ("Squashfs: Compute expected length from inode size rather than block length")

A full synchronization of the squashfs code is probably also in-order,
e.g. to support block sizes other than the default 128K, but
cherry-picking these changes is quite straight-forward, so let's do that
now.

[1]: https://lore.barebox.org/barebox/2572594.vzjCzTo3RI@somecomputer/


Ahmad Fatoum (6):
  squashfs: be more careful about metadata corruption
  squashfs: more metadata hardening
  squashfs metadata 2: electric boogaloo
  squashfs: more metadata hardening
  Squashfs: Compute expected length from inode size rather than block
    length
  squashfs: refuse mount of squashfs images with non-128K block size

 fs/squashfs/Kconfig          |  5 +---
 fs/squashfs/block.c          |  2 ++
 fs/squashfs/cache.c          |  3 ++
 fs/squashfs/file.c           | 57 ++++++++++++++++++++++--------------
 fs/squashfs/file_cache.c     |  7 +++--
 fs/squashfs/fragment.c       | 17 ++++++-----
 fs/squashfs/squashfs.h       |  4 +--
 fs/squashfs/squashfs_fs.h    | 11 +++++++
 fs/squashfs/squashfs_fs_sb.h |  1 +
 fs/squashfs/super.c          | 12 ++++++--
 10 files changed, 79 insertions(+), 40 deletions(-)

-- 
2.39.2



