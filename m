Delivery-date: Wed, 13 Jul 2022 12:10:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZKa-005vqw-SG
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 12:10:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZKY-0002gL-01
	for lore@pengutronix.de; Wed, 13 Jul 2022 12:10:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7AOtK7TEi+/21okQtFA5e7gPbSHpckYp7UKNZgVy/so=; b=bFl5XoPZIZ7O+4enz4qLZDyMgq
	iXlljkOjL4/D83h4msIbAh4ixkt3IOSTZ5Isoi/SnXf04MNE7T6tREW/cuOmO2CJ7Uu2crILGugcp
	9haJzpcc9zlTcPuoUrqxizI7FpRn0ldIGr9ce2EVoPRWpUbpy83gSfKCJiR5mNfKFsqgJBILdAM4D
	yGeIbF9EiQNPzLYxAFRmmGwqrbL8pJOiPvlYbrEwH3nH+CS3hqOeln5BrB4UycScVsxHsCKygsftg
	4q2WAL7kIrbZ1bZF8uC+m3DI/NFXgcidxVPifOx2yZRHHZcXNBHsBM1PYW9o79sqZuV9aiP+UJSR1
	vp/TJjFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZJG-002aCx-NH; Wed, 13 Jul 2022 10:09:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZJ8-002a75-Hr
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 10:09:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ7-0002Fx-5L
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 12:09:25 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ6-000gVg-Du
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 12:09:24 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ5-008ChN-Rk
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 12:09:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Jul 2022 12:09:17 +0200
Message-Id: <20220713100922.1880282-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_030926_614376_D62AF8A6 
X-CRM114-Status: GOOD (  12.85  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/5] lib: zstd: allow use in PBL and shell
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, zstd use was only possible from squashfs and ubifs.
Give it an update and add the necessary hooks to have it usable
everywhere where LZO and friends can be used. zstd would've
been a good default for barebox proper compression, but unfortunately,
the decompressor going into the PBL would be quite big:

                        lz4    lzo    gzip   xz     zstd   uncompressed
thumb2 barebox proper   671K   614K   544K   456K   531K   1022K
thumb2 barebox PBL       10K    10K    18K    17K    41K   9K   
RIoTboard FDT            12K    11K     9K     7K     8K   39K
total thumb2 image      693K   635K   571K   480K   580K   974K

So, don't touch the defaults for now.

Series applies on top of
https://lore.barebox.org/barebox/20220713095730.1878941-1-a.fatoum@pengutronix.de/T/#t

Ahmad Fatoum (5):
  lib: zstd: adopt Linux directory structure
  lib: zstd: sync with Linux
  decompressor: define macros for non-PBL case as well
  ARM: cpu: uncompress: increase early malloc pool to 256K
  lib: uncompress: add general zstd support

 arch/arm/include/asm/barebox-arm.h            |    2 +-
 common/bootm.c                                |    8 +
 common/filetype.c                             |    4 +
 fs/squashfs/zstd_wrapper.c                    |    4 +-
 fs/ubifs/ubifs.c                              |    4 +-
 include/filetype.h                            |    2 +
 include/linux/decompress/mm.h                 |   11 +-
 include/linux/decompress/unzstd.h             |   11 +
 include/linux/limits.h                        |    1 +
 include/linux/zstd.h                          | 1252 ++------
 include/linux/zstd_errors.h                   |   77 +
 include/linux/zstd_lib.h                      | 2432 ++++++++++++++++
 lib/Makefile                                  |    1 +
 lib/decompress_unzstd.c                       |  351 +++
 lib/uncompress.c                              |    6 +
 lib/zstd/Makefile                             |   27 +-
 lib/zstd/bitstream.h                          |  374 ---
 lib/zstd/common/bitstream.h                   |  437 +++
 lib/zstd/common/compiler.h                    |  177 ++
 lib/zstd/common/cpu.h                         |  194 ++
 lib/zstd/common/debug.c                       |   24 +
 lib/zstd/common/debug.h                       |  101 +
 lib/zstd/common/entropy_common.c              |  357 +++
 lib/zstd/common/error_private.c               |   56 +
 lib/zstd/common/error_private.h               |   69 +
 lib/zstd/common/fse.h                         |  710 +++++
 lib/zstd/common/fse_decompress.c              |  390 +++
 lib/zstd/common/huf.h                         |  356 +++
 lib/zstd/common/mem.h                         |  259 ++
 lib/zstd/common/zstd_common.c                 |   83 +
 lib/zstd/common/zstd_deps.h                   |  125 +
 lib/zstd/common/zstd_internal.h               |  450 +++
 lib/zstd/decompress.c                         | 2528 -----------------
 lib/zstd/decompress/huf_decompress.c          | 1206 ++++++++
 lib/zstd/decompress/zstd_ddict.c              |  241 ++
 lib/zstd/decompress/zstd_ddict.h              |   44 +
 lib/zstd/decompress/zstd_decompress.c         | 2085 ++++++++++++++
 lib/zstd/decompress/zstd_decompress_block.c   | 1540 ++++++++++
 lib/zstd/decompress/zstd_decompress_block.h   |   62 +
 .../decompress/zstd_decompress_internal.h     |  202 ++
 lib/zstd/decompress_sources.h                 |   28 +
 lib/zstd/entropy_common.c                     |  243 --
 lib/zstd/error_private.h                      |   53 -
 lib/zstd/fse.h                                |  575 ----
 lib/zstd/fse_decompress.c                     |  332 ---
 lib/zstd/huf.h                                |  212 --
 lib/zstd/huf_decompress.c                     |  960 -------
 lib/zstd/mem.h                                |  151 -
 lib/zstd/zstd_common.c                        |   75 -
 lib/zstd/zstd_decompress_module.c             |  105 +
 lib/zstd/zstd_internal.h                      |  263 --
 lib/zstd/zstd_opt.h                           | 1014 -------
 pbl/Kconfig                                   |    4 +
 pbl/decomp.c                                  |    4 +
 scripts/Makefile.lib                          |   29 +
 55 files changed, 12538 insertions(+), 7773 deletions(-)
 create mode 100644 include/linux/decompress/unzstd.h
 create mode 100644 include/linux/zstd_errors.h
 create mode 100644 include/linux/zstd_lib.h
 create mode 100644 lib/decompress_unzstd.c
 delete mode 100644 lib/zstd/bitstream.h
 create mode 100644 lib/zstd/common/bitstream.h
 create mode 100644 lib/zstd/common/compiler.h
 create mode 100644 lib/zstd/common/cpu.h
 create mode 100644 lib/zstd/common/debug.c
 create mode 100644 lib/zstd/common/debug.h
 create mode 100644 lib/zstd/common/entropy_common.c
 create mode 100644 lib/zstd/common/error_private.c
 create mode 100644 lib/zstd/common/error_private.h
 create mode 100644 lib/zstd/common/fse.h
 create mode 100644 lib/zstd/common/fse_decompress.c
 create mode 100644 lib/zstd/common/huf.h
 create mode 100644 lib/zstd/common/mem.h
 create mode 100644 lib/zstd/common/zstd_common.c
 create mode 100644 lib/zstd/common/zstd_deps.h
 create mode 100644 lib/zstd/common/zstd_internal.h
 delete mode 100644 lib/zstd/decompress.c
 create mode 100644 lib/zstd/decompress/huf_decompress.c
 create mode 100644 lib/zstd/decompress/zstd_ddict.c
 create mode 100644 lib/zstd/decompress/zstd_ddict.h
 create mode 100644 lib/zstd/decompress/zstd_decompress.c
 create mode 100644 lib/zstd/decompress/zstd_decompress_block.c
 create mode 100644 lib/zstd/decompress/zstd_decompress_block.h
 create mode 100644 lib/zstd/decompress/zstd_decompress_internal.h
 create mode 100644 lib/zstd/decompress_sources.h
 delete mode 100644 lib/zstd/entropy_common.c
 delete mode 100644 lib/zstd/error_private.h
 delete mode 100644 lib/zstd/fse.h
 delete mode 100644 lib/zstd/fse_decompress.c
 delete mode 100644 lib/zstd/huf.h
 delete mode 100644 lib/zstd/huf_decompress.c
 delete mode 100644 lib/zstd/mem.h
 delete mode 100644 lib/zstd/zstd_common.c
 create mode 100644 lib/zstd/zstd_decompress_module.c
 delete mode 100644 lib/zstd/zstd_internal.h
 delete mode 100644 lib/zstd/zstd_opt.h

-- 
2.30.2



