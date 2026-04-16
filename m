Delivery-date: Thu, 16 Apr 2026 11:49:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLJ-00Cm55-2a
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 11:49:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLI-0001K1-91
	for lore@pengutronix.de; Thu, 16 Apr 2026 11:49:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6CIJJuX25nIKFSUrmZ/dh+j9m65/WPQI83FkEko+Aow=; b=wSq62pLzwtsWcc
	qSTtLdnjHd0e7r7kBe/++LatHVlTv4L7JUDAbPO8O7Xdv4dihK95+7DMhiYtYZbE/7YIxrEmi5v9t
	HYPY3fPpbTTTHuXYfLf5PlCQWCXt0x1mdpIoO5nCwoNuGAlhvw5f8x4D8rtEPfcqXuWnL7gB5Ys87
	pSHl8hSX0806WL5FVwGaIIyHP4rpleMG9TNVultC+e9Ul5YkzUSszY2xTQhhtSLy1G2+xS7GyjOwQ
	vsKu/HW2gnSVN3KDaPh+slawdHzs3o/HL8Z1O9apGskkYedJRVXrmcz4h5utRy49c+B9o8pC1Y8qe
	LvwBburAWlcfqHzdq6rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKg-00000002GSh-3qYN;
	Thu, 16 Apr 2026 09:48:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKa-00000002GO6-3ZuL
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 09:48:20 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDJKX-0000o5-19; Thu, 16 Apr 2026 11:48:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 11:48:04 +0200
Message-Id: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFSw4GkC/x3MSwqAMAwA0atI1ga02oJeRVzEmtaAPxoQQby7x
 eVbzDygnIQV+uKBxJeoHHtGXRbgF9ojo8zZYCrjqrZ2qIcPZySkKCvfFnVOtCEbak3nGjuRh9y
 eiYPc/3cY3/cDcGY+w2cAAAA=
X-Change-ID: 20260416-socfpga-agilex5-sdram-e2a429635bac
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_024816_976654_D174A616 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] arm: socfpga: agilex5: rework low level code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The available SDRAM on an Agilex 5 system isn't fixed, but may change
based on the system configuration. If inline ECC is enabled, 1/8 of the
SDRAM is used for checksums. The memory reserved for the TF-A is also
not usable by barebox. Thus, using hard-coded memory limits is not
sufficient even on a board level.

Rework the Agilex 5 low level code to respect the memory configuration
by reading the available memory from the firewall configuration. The
rework also allows moving the entry code from board-specific code to SoC
specific code.

Patch 1 and 2 clean the TF-A loading as preparation.

Patch 3 to 6 clean and fix the setup and read back of the firewall
configuration.

Patch 7 switches the Arrow AXE5-Eagle development board from fixed
memory limits to the memory limits from the firewall configuration.

Patches 8 and 9 extract the now reusable lowlevel code from the
board-specific code.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (9):
      arm: socfpga: agilex5: cleanup TF-A loading
      arm: socfgpa: agilex5: remove unused memsize
      arm: socfpga: agilex5: configure firewall with base and size
      arm: socfpga: agilex5: fix read of memory limit
      arm: socfpga: agilex5: fix SDRAM size calculation
      arm: socfpga: agilex5: remove unused declarations
      arm: socfpga: agilex5: read SDRAM limits from firewall
      arm: socfpga: agilex5: add agilex5_barebox_entry
      arm: socfpga: agilex5: add explicit unreachable after TF-A load

 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 30 +--------------
 arch/arm/mach-socfpga/agilex5-sdram.c       | 27 ++++++-------
 arch/arm/mach-socfpga/atf.c                 | 59 ++++++++++++++++++++++++-----
 include/mach/socfpga/generic.h              |  2 +-
 include/mach/socfpga/soc64-sdram.h          | 36 +++++++++---------
 5 files changed, 82 insertions(+), 72 deletions(-)
---
base-commit: 2f83a1e9e4ecf9f2fe1948550801c27a60769d2b
change-id: 20260416-socfpga-agilex5-sdram-e2a429635bac

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



