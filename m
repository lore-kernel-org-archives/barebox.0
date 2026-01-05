Delivery-date: Mon, 05 Jan 2026 09:07:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcw-001S2P-2l
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcw-0008Av-02
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m+K6l6iCV0EKw0MC9lcEwjYXiw6mYqdIWeF7p+z7b6Q=; b=1Lya896PTHK85tUnBDPX9/lBp8
	4FkoDjDb1A6M/O74VGPcSYpGk4nTPrDOwH1DqbX5NzzhNSC6j4Zohh+tqsKC4uf8dEBo1W5R3QOAF
	6hlKqg9NoLqKFLvToNSUrJuFDGngEFMLnLParBw46iNEr5R/SzpNhi/zh4l0T4vmGj+vJrnZwO0iw
	psGfMv4chVSfXtyo6PsbD6cBO6AVm773jbcidsLzo7GNi2DTSUvhmGZNXCfoWm/+wPPrInxHWN+FC
	vHtcJfmBwLdcCbr4GEF0O1vGZpY+A8MHdo1UZA1tebSE1L57HxzAIzjQnOnYsyM9L/g6hsZ+B/5QQ
	aNH8LSig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcF-0000000Ax2S-09QV;
	Mon, 05 Jan 2026 08:07:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcB-0000000AwzG-19JI
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfc6-0007f0-M2
	for barebox@lists.infradead.org; Mon, 05 Jan 2026 09:06:54 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon,  5 Jan 2026 09:03:32 +0100
Message-ID: <20260105080653.3240497-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_000659_314913_F324FE97 
X-CRM114-Status: UNSURE (   9.48  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/10] bootm: refactor to prepare multiple initrd support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux can transparently handle concatenated individually compressed CPIOs
just fine, but so far, the concantenation needed to happen before bootm
is called.

This series prepares for supporting initrd concatenation by refactoring
the bootm code to make it easier to extend in a follow-up series.

No functional change intended.

Ahmad Fatoum (10):
  bootm: set image_data::initrd_res at a single place
  bootm: fit: split support into dedicated file
  bootm: uimage: split support into dedicated file
  filetype: introduce filetype_fit
  bootm: refactor for readability and extensibility
  memory: move release_sdram_region into header
  resource: make NULL in release_[sdram_]region a no-op
  common: elf: use release_region unconditionally
  memory: always print errors on request_sdram_region failure
  memory: drop now duplicate request_sdram_region error messages

 arch/arm/cpu/armv7r-mpu.c |   6 +-
 arch/arm/cpu/bootm-fip.c  |  11 +-
 arch/arm/cpu/mmu_32.c     |   4 +-
 arch/arm/lib32/bootm.c    |  13 +-
 arch/arm/lib32/bootz.c    |   7 +-
 common/Makefile           |   2 +
 common/bootm-fit.c        | 176 ++++++++++++++++++
 common/bootm-uimage.c     | 176 ++++++++++++++++++
 common/bootm.c            | 376 ++++++--------------------------------
 common/elf.c              |  11 +-
 common/filetype.c         |   1 +
 common/image-fit.c        |  11 +-
 common/memory.c           |  25 +--
 common/resource.c         |   2 +
 common/uimage.c           |  12 +-
 fs/pstore/ram_core.c      |   7 +-
 include/bootm-fit.h       |  70 +++++++
 include/bootm-uimage.h    |  57 ++++++
 include/filetype.h        |   7 +
 include/memory.h          |  45 ++++-
 lib/libfile.c             |   5 +-
 21 files changed, 625 insertions(+), 399 deletions(-)
 create mode 100644 common/bootm-fit.c
 create mode 100644 common/bootm-uimage.c
 create mode 100644 include/bootm-fit.h
 create mode 100644 include/bootm-uimage.h

-- 
2.47.3



