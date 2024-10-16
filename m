Delivery-date: Wed, 16 Oct 2024 11:02:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvP-004zyj-2s
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:02:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvP-0005jR-6x
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:02:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UbzhvhViYVnFAcsJFkze2QdTAYx43iTFOIruGtsAPHQ=; b=B96EYolNnqkAUR3/xFePDljTvZ
	7vOJhg/FFOIiuVNLe84VSmXamO94e05nKlkHCITq4p+LUMauyvBexAjxRPaZkeGX3MmlYXFD3G3lW
	rkRvtxYQlKZ4VCIAE4rz2Ulz9SHm5dJU25liN0eMl7dvMokw26mHoPvftg8+g/+oyC4UrZx4y4Iwi
	jHxAh2PxiS8GkZimnf3R6hB9Kj7prLokh0fbW75BO0sYVN/hJkne5tw54SfAY8TH91JSyD6YWyFXJ
	2GK3dYlUfDDlt1jMvuRKvBmf/MzKoNrmVXKE9NVoYKFvu7/BEmNZb7vQTgNmMgEQQ8MiEvHXiEG6f
	nhNZM+eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zup-0000000B9Eh-01Zj;
	Wed, 16 Oct 2024 09:01:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zui-0000000B9Ak-1ngJ
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:01:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-0005LX-7l
	for barebox@lists.infradead.org; Wed, 16 Oct 2024 11:01:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-002EME-Mz
	for barebox@lists.infradead.org; Wed, 16 Oct 2024 11:01:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-00GdhR-21
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 11:01:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 16 Oct 2024 11:01:37 +0200
Message-Id: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_020152_539565_DA1A0EA7 
X-CRM114-Status: UNSURE (   9.42  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/13] Remove dependency on ld --gc-section in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We depend on -ffunction-sections -fdata-sections at a lot of places and
fail the link without due to undefined references. This is especially
needed for obj-pbl-y code as the files usually have other functions
depending on barebox proper infrastructure, but that is never called.

This works so far, but breaks for two things: LTO and using PBL on
sandbox. Both I have not managed to get the linker not to complain about
the undefined references in the ultimately unreferenced code.

Therefore, let's solve this a different way: Adjust the relevant headers
to define stubs when built for sandbox.

This has the nice side effect of compile testing the stubs during PBL
build, so forgotten semicolons are more likely to be noticed during
development instead of CI run.


Ahmad Fatoum (13):
  kconfig: add IS_PROPER helper
  lib: random: add stubs for PBL
  bootsource: stub out when in PBL
  crypto: provide crypto_memneq for PBL
  cdev: stub out cdev_read/write for PBL
  libfile: stub out file descriptor API for PBL
  environment: stub out environment API for PBL
  of: stub out live tree API when using PBL
  errno: stub out perror/strerror API when built for PBL
  xfuncs: stub out API when built for PBL
  stdio: stub out basprintf and friends when built for PBL
  memory: stub out request_barebox_region for PBL
  malloc: add PBL stubs

 common/bootsource.c     |  2 +-
 crypto/Makefile         |  2 +-
 include/driver.h        | 24 ++++++++++++--
 include/environment.h   |  2 +-
 include/errno.h         | 10 ++++++
 include/fcntl.h         |  8 +++++
 include/libfile.h       |  7 ++++
 include/linux/kconfig.h | 10 ++++++
 include/linux/string.h  |  7 ++++
 include/malloc.h        | 37 +++++++++++++++++++++
 include/memory.h        | 10 ++++++
 include/of.h            |  2 +-
 include/stdio.h         | 24 ++++++++++++--
 include/stdlib.h        | 19 ++++++++++-
 include/unistd.h        | 72 +++++++++++++++++++++++++++++++++++++++++
 include/xfuncs.h        | 19 +++++++++++
 16 files changed, 246 insertions(+), 9 deletions(-)

-- 
2.39.5



