Delivery-date: Mon, 25 Nov 2024 16:20:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFatW-000FlR-15
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:20:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFatW-0001ne-9o
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:20:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8DRzyxAzpC23FTfbAIOVRj3UESowfZbUtNIrHw7Pbwc=; b=eE/1kmSlDBFq6xlMY9vjacBIOb
	fHkbo2yc/owHALZ1r5teyZLBi6vubMzsyUAvRyxV2zlhSi+EdRr1kyZ6RqeRjFKWi9kJYWZjxXMqg
	gOz9/Th3bkppLus2vYMP0Mjs9u/3bzdHfanjT5RYZxvyS/J3qNt/LmmESzSj92tZiBArNGUDnDFQy
	fBF772L+9mX0fiC+msIVnCVFfyntuvRf4DFucCuqLYIwb3l3w8k9YU5bCEG8tVO7B1G/WX3NxAjLq
	OS4PtybzFxWJal1DVbWa2lBu4Two+w7fdwLD7RdhOf1KVNl6H4ij/U8XAfm45xJ6QOe+a/fauzyZB
	RBxfMUnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFat3-00000008S6O-38J3;
	Mon, 25 Nov 2024 15:20:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFat0-00000008S4F-35Rd
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:20:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasz-0001VK-F4
	for barebox@lists.infradead.org; Mon, 25 Nov 2024 16:20:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasy-0006Ok-1e
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 16:20:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasy-0020Cn-1r
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 16:20:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 25 Nov 2024 16:20:19 +0100
Message-Id: <20241125152024.477375-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072026_769747_DC7B47FE 
X-CRM114-Status: UNSURE (   7.49  )
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
Subject: [PATCH 0/5] malloc: add options to zero-initialize buffers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TO further harden barebox against attackers, add options to zero
registers on function exit, buffers on malloc and after free as well as
local variables.

Additionally, TLSF already has sanity checks, which are promoted to
panics with CONFIG_BUG_ON_DATA_CORRUPTION enabled.

Ahmad Fatoum (5):
  dlmalloc: add aliases with dl as prefix
  hardening: support zeroing all malloc buffers by default
  hardening: support initializing stack variables by default
  kbuild: support register zeroing on function exit
  tlsf: panic in asserts if CONFIG_BUG_ON_DATA_CORRUPTION=y

 Makefile              |  17 ++++++
 common/calloc.c       |   7 +--
 common/dlmalloc.c     |  73 +++++++++++++----------
 common/tlsf.c         |   6 ++
 include/dlmalloc.h    |  15 +++++
 include/malloc.h      |  10 ++++
 include/tlsf.h        |   2 +
 lib/Kconfig.hardening | 133 ++++++++++++++++++++++++++++++++++++++++++
 8 files changed, 227 insertions(+), 36 deletions(-)
 create mode 100644 include/dlmalloc.h

-- 
2.39.5



