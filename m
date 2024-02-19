Delivery-date: Mon, 19 Feb 2024 09:32:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4d-00E4AK-36
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:32:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4c-0003XJ-VX
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:32:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bOdvHySfYoggKqUo3oW/yL8pLyLqyRONtR5GQGdTEL0=; b=M7n/u8ggs0NWnH82yyVSn8AQGi
	5J/E4B/qbyGRqZ3BFzBplDzDV/nbkuSi0R1BblkvQDC/so6OEX4xNJVA1/Gcc/d2FQr9rUdHzmJPl
	kAZLr72yEV62c8FEuJ1uKkiLqKi7rI6fSvLPDPU+zVQQhQjbzzbLX42YAhS+6+bW3MJ3A0MLOgRaA
	x2p+REqT6FUS2F9GKw2nIIq4Mza6Wwtn1V5BMd3B1IEZMHPZl78nzNcKaBpap4ezHMlFW4wPfetud
	oM9Lu6iokHWKCnWTJI6DOITXrlyWdnDxIu1x4mmKEzfp4v5B+uLSXCb519JbeZSzIl3ddFO9jnfpd
	3V2/t1jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3z-00000009acE-0wf7;
	Mon, 19 Feb 2024 08:31:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3v-00000009aZF-22Sx
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:31:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-000302-7W; Mon, 19 Feb 2024 09:31:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3t-001bkl-R5; Mon, 19 Feb 2024 09:31:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3t-00CNCk-2N;
	Mon, 19 Feb 2024 09:31:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:28 +0100
Message-Id: <20240219083140.2713047-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003143_554840_D0083C2C 
X-CRM114-Status: GOOD (  14.05  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/12] Partition table manipulation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds support for changing partition tables. There is both a
C API and a new command to create partition tables, to create partitions
or to delete partitions. Both MSDOS and GPT tables are supported,
although MSDOS currently lacks support for logical partitions which is
left as a future exercise.

The partition manipulation command mimics GNU Parted which has a quite
convenient API for use in scripts. Some examples for the command are:

Print a partition table:

$ parted mmc0 print

create a new partition table:

$ parted mmc0 mklabel gpt

create a new partition table and add a partition beginning at offset
1MiB ending at offset 128MiB:

$ parted mmc0 mklabel gpt mkpart rootfs ext4 1MiB 128MiB

The same, using KiB as unit and printing the result at the end:

$ parted mmc0 unit KiB mklabel gpt mkpart rootfs ext4 1024 131072 print

Original GNU Parted has several heuristics to adjust a new partition's
borders between existing partitions. These have all been left out so
far. Also toggling a bootable flag is not yet implemented. So there are
still things to do, but I think this is enough to be useful already.

Sascha

Sascha Hauer (12):
  partitions: dos: save indention level
  partition: allocate struct partition_desc in parser
  partition: allocate struct partition in parser
  partition: efi: keep raw data
  uuid: implement random uuid/guid
  linux/sizes.h: add more defines
  partition: add PARTITION_LINUX_DATA_GUID define
  partitions: move parser.h to include/partitions.h
  partitions: implement partition manipulation support
  partitions: dos: implement partition manipulation support
  partitions: efi: implement partition manipulation support
  commands: add parted

 commands/Kconfig           |  21 +++
 commands/Makefile          |   2 +-
 commands/parted.c          | 374 +++++++++++++++++++++++++++++++++++++
 common/Kconfig             |   3 +
 common/partitions.c        | 167 ++++++++++++++---
 common/partitions/Kconfig  |   1 +
 common/partitions/dos.c    | 331 ++++++++++++++++++++++++++++----
 common/partitions/efi.c    | 297 ++++++++++++++++++++++++++++-
 common/partitions/parser.h |  43 -----
 include/efi/partition.h    |   3 +
 include/linux/sizes.h      |  12 ++
 include/partitions.h       |  67 +++++++
 lib/uuid.c                 |  30 +++
 13 files changed, 1229 insertions(+), 122 deletions(-)
 create mode 100644 commands/parted.c
 delete mode 100644 common/partitions/parser.h
 create mode 100644 include/partitions.h

-- 
2.39.2



