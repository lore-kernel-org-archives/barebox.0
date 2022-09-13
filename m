Delivery-date: Tue, 13 Sep 2022 14:51:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OM-003gNn-Ko
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 14:51:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OL-0007rr-BK
	for lore@pengutronix.de; Tue, 13 Sep 2022 14:51:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WZAvlLtvufS2+V760Q3hsxoZnf4YqhcQDIkcHnN9dJ4=; b=npePPGJlKhQYewZgyit9xMLAJf
	D5TEg/GUXGk9tzqIlQgEOXsAVV+UhaYuPhM9I0+T/N/OtznQKRBhM+88IJkV0iOYfvO+IY1+9IimU
	oEAnjPEIHbQqsDPLmXD9bJt1YDe0CkzLC+wH2eDZlzlD7lTno81QWOzeBws+4+Dq1G3apIXgwN8Pd
	XQFbu3oUfAJAk9KBRW2mW5LZL9i0OZbHT/pGkQy0gjuNXUjnBOKQU8ZKQJ/FK2shyuzJDjPBrjwbA
	gzGvVBbCVKmc+V/OsnKDq4fRbVfDM9sXzMByXkkvWqb/6cZLsloCBm8/qL48KFN75LpZXTBAC6rEQ
	4dmlE99A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5Mm-00ADIp-He; Tue, 13 Sep 2022 12:50:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5MX-00ADAP-0v
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 12:50:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MT-0007Kl-76
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:57 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MT-000VCZ-U4
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:56 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MR-005fmb-IR
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 13 Sep 2022 14:49:48 +0200
Message-Id: <20220913124954.1346533-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_055001_127787_DE1B4B44 
X-CRM114-Status: GOOD (  12.94  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] RISC-V Allwinner D1 Support 2nd Stage Support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

this small series adds the basic support for the Allwinner sun20i D1
Nezsha board. It is very limited only serial is supported right now.

Patches 1-4 can be applied independently.

Patch 5 may need some more attention since Ahmad told me in person that
not all softcores implementing the vendorid register. Please see the
patch notes on this patch.

Patch 6 adds the support for the D1 board and a detailed description how
to build and flash a bootable image.

Marco Felsch (6):
  RISC-V: cache: fix local_flush_icache_all enabling
  RISC-V: add riscv_vendor_id() support
  RISC-V: import vendorid list from linux
  RISC-V: use m/sscratch registers for barebox_riscv_pbl_flags
  RISC-V: implement cache-management errata for T-Head SoCs
  RISC-V: add Allwinner Sun20i D1 Nezha support

 Documentation/boards/riscv.rst            | 102 +++++++++++++++++
 arch/riscv/Kconfig.socs                   |  16 +++
 arch/riscv/boards/Makefile                |   1 +
 arch/riscv/boards/allwinner-d1/Makefile   |   3 +
 arch/riscv/boards/allwinner-d1/lowlevel.c |  12 ++
 arch/riscv/boot/entry.c                   |   3 +-
 arch/riscv/boot/entry.h                   |   6 +-
 arch/riscv/boot/start.c                   |  13 +--
 arch/riscv/boot/uncompress.c              |   8 +-
 arch/riscv/configs/sun20i_defconfig       | 130 ++++++++++++++++++++++
 arch/riscv/include/asm/cache.h            |  23 +++-
 arch/riscv/include/asm/debug_ll.h         |   5 +
 arch/riscv/include/asm/system.h           |  71 +++++++++---
 arch/riscv/include/asm/vendorid_list.h    |  11 ++
 common/Kconfig                            |   5 +
 images/Makefile.riscv                     |   4 +
 16 files changed, 380 insertions(+), 33 deletions(-)
 create mode 100644 arch/riscv/boards/allwinner-d1/Makefile
 create mode 100644 arch/riscv/boards/allwinner-d1/lowlevel.c
 create mode 100644 arch/riscv/configs/sun20i_defconfig
 create mode 100644 arch/riscv/include/asm/vendorid_list.h

-- 
2.30.2



