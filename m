Delivery-date: Tue, 07 Jan 2025 09:04:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4ZL-000Eqa-2K
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 09:04:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Yo-0001r6-1M
	for lore@pengutronix.de; Tue, 07 Jan 2025 09:04:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1eENci6gac8cH0hc6TZS7my4LEHd9ufpoZKbZ/EiHec=; b=uRF0GxN95MIsrd8ItKfI+DuVeg
	h06Y7KA2FMkGMGleYt4Ig4pSLdaL2MbV6CbkMOUpXe+/uY7zIb0MVdpTFFwj0uInrU1pph+N6Q4B0
	0g8fk5HcdOmCnIaFtajbyML2k8gsPx/LzA0d5fUnaWxHSRht5NrnknDhAYnC5msUcyzMrgzLJBprb
	JJxGcefBfFd9ogdynsTBY/OP1COKnH2AsejAorEVE8sMoHD5w72AyFglq5YOxM2hIiP2xHS9ms9wD
	Ep9mOVP69FY8oYB4YERRTrGSe0BQIEBW9SqBELFlcRUkz19rCCY+jaUEgmMFHscTV6eMV+T3xRG/G
	qArNf3ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4XH-00000003pzY-3s7T;
	Tue, 07 Jan 2025 08:01:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4VI-00000003pVG-1IBj
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:59:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-0000rL-2o
	for barebox@lists.infradead.org; Tue, 07 Jan 2025 08:59:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-007IqV-0P
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 08:59:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-00Bv76-2b
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 08:59:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  7 Jan 2025 08:59:31 +0100
Message-Id: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_235956_347350_52738D30 
X-CRM114-Status: UNSURE (   9.29  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] fs: merge struct filep (FILE) and struct file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since dcache support was added, we had two structs representing files:
struct file and type struct filep FILE. The former was used only for
listing files in ->iterate and the latter everywhere else for
representing an open file (descriptor).

This series aligns the members of both struct sufficiently and then
merges them to simplify porting kernel code.

Ahmad Fatoum (8):
  fs: derive file descriptor number by pointer arithmetic
  fs: drop ifdefs in linux/fs.h
  fs: retire FILE.in_use member
  fs: align FILE struct member names with upstream struct file
  fs: fat: rename f_size to f_len
  fs: replace FILE.size by f_inode.i_size
  fs: merge struct file and struct filep
  fs: retire FILE typdef

 fs/bpkfs.c             |  18 ++---
 fs/cramfs/cramfs.c     |   4 +-
 fs/devfs.c             |  56 ++++++-------
 fs/efi.c               |  28 +++----
 fs/efivarfs.c          |  34 ++++----
 fs/ext4/ext_barebox.c  |   4 +-
 fs/fat/fat-pbl.c       |   2 +-
 fs/fat/fat.c           |  30 +++----
 fs/fat/ff.h            |   2 +-
 fs/fs.c                | 178 ++++++++++++++++++++---------------------
 fs/jffs2/fs.c          |  18 ++---
 fs/nfs.c               |  23 +++---
 fs/omap4_usbbootfs.c   |  22 ++---
 fs/pstore/fs.c         |  16 ++--
 fs/ramfs.c             |  16 ++--
 fs/ratpfs.c            |  36 ++++-----
 fs/smhfs.c             |  28 +++----
 fs/squashfs/squashfs.c |  15 ++--
 fs/tftp.c              |  26 +++---
 fs/ubifs/ubifs.c       |  17 ++--
 fs/ubootvarfs.c        |  10 +--
 fs/uimagefs.c          |  20 ++---
 include/driver.h       |   6 +-
 include/fs.h           |  42 +++-------
 include/linux/fs.h     |  25 ++----
 25 files changed, 318 insertions(+), 358 deletions(-)

-- 
2.39.5



