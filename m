Delivery-date: Fri, 06 Jun 2025 09:35:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNRcH-004IrZ-0b
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 09:35:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNRcG-0005VG-L3
	for lore@pengutronix.de; Fri, 06 Jun 2025 09:35:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=A1+2RHYnk/+7RMUSm8jH8Xb6gXUMbp4lEIrOvbOYomQ=; b=es4KD18Q0Drb11/W7+PfPpFkvH
	/hTW7mzCfsHbL9XGQRbo98qdzL/geZJMWz2NXCWvBWGY7RctOAz/hIVn0j6NjfDbSifIOPEbt5xjs
	JkWQmps+zn+RET8QRukZtBilggzFlUByOEMBrwf5RSwSwwwZ7+10Tad9BYFWrui5vRphLz+PvqOKn
	EMDAhNOko6uMQ9YqwCf+uGjfLqGJWXzaNP54hTpNj1EFBNzILs5aVHqkjAe2aoK/GajjeQ9us6iZP
	7R/WtIOGlc6PBAjjkQ6JWDtPeuuOm7K/CY/B7nnMMehAry8+fzVrNpWuk+iRsDU79dvT2GCfbEjLr
	qs8Cna9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNRbl-0000000HJdN-3RWP;
	Fri, 06 Jun 2025 07:35:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNRYO-0000000HJKh-2xb3
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 07:31:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNRYN-00037X-3f; Fri, 06 Jun 2025 09:31:51 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>
Date: Fri,  6 Jun 2025 09:29:35 +0200
Message-Id: <20250606072939.2082971-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_003152_749712_2DACD001 
X-CRM114-Status: GOOD (  10.33  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] firmware: qemu_fw_cfg: implement file system 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The character device we currently have is cumbersome to use.
The Linux way to access it at /sys/firmware/qemu_fw_cfg
is much nicer to use, so this series adds support for a similar
FS to barebox.

A very nice result of having file system access to the QEMU variables
in barebox is that we get a trivial way to pass data to barebox.
To make it even more convenient to use, this series enables overriding
individual files in the environment via the new mechanism, e.g.:

  pytest --env nv/boot.default=fit --env boot/fit=@boot.sh

v1 -> v2:
  - drop already upstream patches
  - drop truncate (Sascha)
  - make writing files besides "raw" an error (Sascha)
  - mount file system unconditionally, so environment can be read
    from it

Ahmad Fatoum (4):
  fs: add qemu_fw_cfg file system
  firmware: qemu_fw_cfg: register at device initcall level
  video: ramfb: use new qemu fw_cfg FS
  fs: qemu_fw_cfg: support populating environment via QEMU fw_cfg

 conftest.py                    |  22 ++
 defaultenv/defaultenv.c        |  22 ++
 drivers/firmware/qemu_fw_cfg.c |   2 +-
 drivers/video/Kconfig          |   2 +-
 drivers/video/ramfb.c          |  98 ++------
 fs/Kconfig                     |   7 +
 fs/Makefile                    |   1 +
 fs/qemu_fw_cfg.c               | 446 +++++++++++++++++++++++++++++++++
 include/envfs.h                |   5 +
 include/string.h               |   5 +
 10 files changed, 525 insertions(+), 85 deletions(-)
 create mode 100644 fs/qemu_fw_cfg.c

-- 
2.39.5



