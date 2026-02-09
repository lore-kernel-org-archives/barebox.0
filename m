Delivery-date: Mon, 09 Feb 2026 10:09:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNH9-00AV8J-22
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:09:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNH8-0005Ih-Jo
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:09:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=j9gTZ4CjjbFFcgo+6e/LiIwu7t0Uk+7PRyJ+uFuVmtg=; b=p2wpjfMAzYlaLvTlUTWW8wYxes
	NL/GOdXbVKVX05K6MiNgJgYG7W7pyKD3f3DPPBbJRQwY4TssI3fmpf9/ICcB89Bp9ZfWQurULFBoK
	8sJRLHNBkc4MbMV6J51jEbZPPINJ4he29hXQ7VEEiMHNRwNhjHqGKxwsPEuxCbK65Qow9pVdo8/1u
	bIcjyBpDACF+vQWysv9zJs4/wPvPXJIJN25PcmMSvzbdN51RvZH+1zzQYeboU8hjdkiRQwB2WXeD3
	L2KATVgphzHUr6O0mqX7jXOHscNyxHt7Ry3RqBvSpRHV70M0Wtspz16O64f+J1+z4MErZfIYzkTe7
	6o5EZeBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNGk-0000000F5ni-2qZQ;
	Mon, 09 Feb 2026 09:09:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNGf-0000000F5kW-2apn
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:09:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNGc-0004wQ-4p
	for barebox@lists.infradead.org; Mon, 09 Feb 2026 10:09:14 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon,  9 Feb 2026 10:08:50 +0100
Message-ID: <20260209090911.3561875-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_010917_674858_417D9186 
X-CRM114-Status: UNSURE (   9.28  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] blspec: sort entries according to specification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Boot entries generated from bootloader spec are currently sorted by the
order the files are read from the file system.

This is inadequate if we have multiple entries with different kernels
and we want to sort the newer kernels higher.

The UAPI.1 Boot Loader Specification defines an algorithm[1] to order the
entries that takes care of this, so implement it into barebox.

[1]: https://uapi-group.org/specifications/specs/boot_loader_specification/#sorting

Ahmad Fatoum (5):
  boot: aggregate bootentry provider entries one by one
  blspec: sort entries according to specification
  boot: give struct bootentry a path member
  commands: boot: support file path in boot -M for default entry
  test: self: add bootloader spec files test

 commands/boot.c                               | 62 +++++++++++++----
 common/Kconfig                                |  1 +
 common/blspec.c                               | 66 +++++++++++++++++--
 common/boot.c                                 | 42 ++++++++----
 include/asm-generic/bug.h                     |  7 ++
 include/boot.h                                |  3 +
 include/bselftest.h                           | 20 ++++++
 include/fnmatch.h                             |  9 +++
 test/self/Kconfig                             |  5 ++
 test/self/Makefile                            |  2 +
 test/self/blspec.c                            | 46 +++++++++++++
 .../data/test/boot/boot.sh                    |  3 +
 .../data/test/loader/entries/boarda.conf      |  6 ++
 .../data/test/loader/entries/boardb.conf      |  6 ++
 .../data/test/loader/entries/boardc.conf      |  6 ++
 .../data/test/loader/entries/boardd.conf      |  5 ++
 16 files changed, 260 insertions(+), 29 deletions(-)
 create mode 100644 test/self/blspec.c
 create mode 100755 test/self/defaultenv-blspec-test/data/test/boot/boot.sh
 create mode 100644 test/self/defaultenv-blspec-test/data/test/loader/entries/boarda.conf
 create mode 100644 test/self/defaultenv-blspec-test/data/test/loader/entries/boardb.conf
 create mode 100644 test/self/defaultenv-blspec-test/data/test/loader/entries/boardc.conf
 create mode 100644 test/self/defaultenv-blspec-test/data/test/loader/entries/boardd.conf

-- 
2.47.3



