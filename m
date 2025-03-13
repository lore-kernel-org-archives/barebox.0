Delivery-date: Thu, 13 Mar 2025 11:18:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfds-00DWfi-1z
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 11:18:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdq-0006ow-2P
	for lore@pengutronix.de; Thu, 13 Mar 2025 11:18:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SH1gG9i8FcBiLhx/pHqu7W19DAjB1XS3uccTK8XHq5s=; b=c6R03xOmnmLYgJP6qLz+ITw+Op
	EGjKjPW8+KANsZ3hov0ik6Lu6POFP57zx2JwDU+56+v7v022PvIeAX3aDq4VUGpq+obTP3E5nRpK5
	P53fvJ4aif7DA5RG8TJMfgNg+u55S3mrz0exkdnk19+vljZqd3Ha1b9iawxnuWa0vi7sugNhX2p5Z
	EBAtsjnlkfovPN7CQ05oK0EQQDmBLLgNbEC6IY6GI8jVwdhN9k4Odo72YOhOQGtWL8pYcM9hCMTk0
	hrwd/ruxWRfseWMMke4Uq6dR7AlILYvnOWgQvhnQsCIo02efdHjMSRbtAmy/XSDOycB8AgxnUPB5g
	6d86qn6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfd9-0000000AplN-1e6B;
	Thu, 13 Mar 2025 10:17:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfd6-0000000Apky-3Fvy
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 10:17:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd5-0006Fy-2n; Thu, 13 Mar 2025 11:17:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd3-005WBU-2p;
	Thu, 13 Mar 2025 11:17:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd3-00Gch5-2T;
	Thu, 13 Mar 2025 11:17:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>
Date: Thu, 13 Mar 2025 11:17:17 +0100
Message-Id: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_031732_854205_F9F4F96F 
X-CRM114-Status: GOOD (  11.86  )
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
Subject: [PATCH 00/11] firmware: qemu_fw_cfg: implement file system
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

Ahmad Fatoum (11):
  video: ramfb: fix frame buffer screen size
  firmware: qemu_fw_cfg: drop duplicate definitions
  firmware: qemu_fw_cfg: add support for seeking
  firmware: qemu_fw_cfg: rename from /dev/fw_cfg0 to /dev/fw_cfg
  fs: add qemu_fw_cfg file system
  firmware: qemu_fw_cfg: register at device initcall level
  video: ramfb: use new qemu fw_cfg FS
  libfile: give copy_file a flags parameter
  libfile: pass copy_file flags through copy_recursive
  libfile: add support for not clobbering files in copy_file
  fs: qemu_fw_cfg: support populating environment via QEMU fw_cfg

 commands/Kconfig               |   4 +-
 commands/cp.c                  |  18 +-
 commands/defaultenv.c          |   2 +-
 commands/tftp.c                |   2 +-
 common/fastboot.c              |   2 +-
 conftest.py                    |  22 ++
 defaultenv/defaultenv.c        |  22 ++
 drivers/firmware/qemu_fw_cfg.c |  63 +++--
 drivers/video/Kconfig          |   2 +-
 drivers/video/ramfb.c          | 116 ++++------
 fs/Kconfig                     |   7 +
 fs/Makefile                    |   1 +
 fs/qemu_fw_cfg.c               | 404 +++++++++++++++++++++++++++++++++
 include/envfs.h                |   5 +
 include/libfile.h              |   8 +-
 include/string.h               |   5 +
 lib/libfile.c                  |  43 +++-
 17 files changed, 592 insertions(+), 134 deletions(-)
 create mode 100644 fs/qemu_fw_cfg.c

-- 
2.39.5



