Delivery-date: Wed, 19 Mar 2025 16:44:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbE-001Vi1-1s
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 16:44:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbC-00044t-CQ
	for lore@pengutronix.de; Wed, 19 Mar 2025 16:44:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FiHgbL+1G5hte7cZkgZzWEVIDxK0dcbMZ8He//03Tao=; b=RrBbkA9364YzBn
	5HesGwyj/USI+jv778b6sZ7fRyxtPHtxQuD6RfVzFo4yr7DnymWIQzd7NR96QQYxrL+5BWiUo4a3J
	ssNj+rpyH9t09caGd2dyuS0inbP3VdhaV5Moc/V0pDlOOLRab10cY3scYp/JEUpb9YJPyGvNm2PCs
	Ifd8atxCV98X2bmo+1QxFn3GAXqueuEfLMGPFOQLkEKLaMKk4R5AKrQCZHQyDG54xSClQym/FvN4W
	uJkkq1IKypAkubAdhuu+hUNbNtHGk5YxtV+mXuy9olgi0dOgj2c9jq99599KUcTq1VKQ0LkAIrK45
	4iRbAjOm2txB2DPuw+kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvae-00000009QYU-2xjx;
	Wed, 19 Mar 2025 15:44:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvNm-00000009OA4-1pRC
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 15:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNl-0000z3-4W; Wed, 19 Mar 2025 16:31:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-000cAd-1F;
	Wed, 19 Mar 2025 16:31:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-00Awy1-2L;
	Wed, 19 Mar 2025 16:31:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2025 16:30:51 +0100
Message-Id: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACvj2mcC/13MQQ6CMBCF4auQWVvTzkSjrrwHYQFlCrOwJS02G
 NK7W1m6/F9evh0SR+EEj2aHyFmSBF8DTw3YufcTKxlrA2q8aDKo4vIalL06Iu3wbgcD9bpEdrI
 dTNvVniWtIX4ONZvf+gdko7SqgCG6YU+Ongv76b3G4GU7jwxdKeULTiRkUZ0AAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742398260; l=2733;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Hja7gRWvf/3WSJKGgqD8zdbVE4kjcbho2EwtqGk9m3Y=;
 b=romFG1cYunM6bR1el4z6aRy+r+CwMPKqVvQ5uIOXSdDm5mYWTGfEaAMwOsHciIGgIB5zHInPW
 /5EQXR2M2nDCrufIQCgHvBsIZTH4N+ggJf3TOCdMSu/+y7T7iQObqI6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_083102_476636_8A42E526 
X-CRM114-Status: GOOD (  12.45  )
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
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/10] Add RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds the necessary pieces to provide OP-TEE access to RPMB
partitions under barebox.

With this OP-TEE can issue RPMB requests to barebox and barebox will
answer them accordingly.

OP-TEE will only access the RPMB when triggered by barebox. For this
purpose I implemented access to the Android Verified Boot (AVB) variable
store. This is implemented in U-Boot as well and the code is loosely
based on it. The variables can be read/written using the newly
introduced avb_pvalue command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- Use mmc of alias to translate OP-TEE dev_id into barebox mmc device
- Always copy mmc request to aligned address
- check mmc response for proper alignment
- Warn when we encounter an unimplemented OP-TEE RPC request
- Link to v1: https://lore.kernel.org/r/20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de

---
Sascha Hauer (10):
      mci: implement mci_set_blockcount()
      mci: export some functions for RPMB support
      mci: detect RPMB partitions
      mci: add RPMB support
      tee: optee: probe successfully even when no devices are found
      tee: optee: implement shared mem alloc/free RPC commands
      tee: optee: implement RPMB support
      tee: optee: implement AVB named persistent values support
      commands: add avb_pvalue command
      ARM: omap: remove unused file

 commands/Kconfig                  |  13 +++
 commands/Makefile                 |   1 +
 commands/avb_pvalue.c             | 138 +++++++++++++++++++++++++
 drivers/mci/Kconfig               |   3 +
 drivers/mci/Makefile              |   1 +
 drivers/mci/mci-core.c            |  70 +++++++++++--
 drivers/mci/rpmb.c                | 210 ++++++++++++++++++++++++++++++++++++++
 drivers/tee/optee/Kconfig         |   9 ++
 drivers/tee/optee/Makefile        |   2 +
 drivers/tee/optee/avb.c           | 189 ++++++++++++++++++++++++++++++++++
 drivers/tee/optee/device.c        |   1 +
 drivers/tee/optee/optee_private.h |  13 +++
 drivers/tee/optee/optee_rpc_cmd.h | 144 ++++++++++++++++++++++++++
 drivers/tee/optee/rpc.c           |  64 +++++++++++-
 drivers/tee/optee/rpmb.c          | 121 ++++++++++++++++++++++
 drivers/tee/optee/smc_abi.c       |  26 +++--
 drivers/tee/tee_shm.c             |   1 +
 include/linux/tee_drv.h           |   1 +
 include/mach/omap/omap4-devices.h |  93 -----------------
 include/mci.h                     |  19 +++-
 include/tee/avb.h                 |   9 ++
 21 files changed, 1014 insertions(+), 114 deletions(-)
---
base-commit: ca25df4baad4569efabbebcd79ab4aee7ed226ff
change-id: 20250312-rpmb-c6f330f29cb1

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



