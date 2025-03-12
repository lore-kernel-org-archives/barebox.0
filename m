Delivery-date: Wed, 12 Mar 2025 14:06:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnD-00D89n-07
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 14:06:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnA-000214-25
	for lore@pengutronix.de; Wed, 12 Mar 2025 14:06:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=81rGG9mvovlOwJYORxwOxpaKG1yVDc1FAdCoVlI8L4I=; b=wcbgsU6FXmmrED4RUT+Z6r6DO0
	OtcSQxzM+R6ErJFIZFK36cUyuSs44O/4+Sq5RBwCNWuHTsGqXn/rz/rgKekTjV5t79U+xjHay0Ymu
	yBxzz8kmx+Bvy95ZneH5DgboinRwhbbNE/PTk5sAEmv9g+7R0vGr7dL0lKC9IOvbRPxqvUicRkHqJ
	mnN7eHwwO/cPmOariZwPh1zwhNo8jcHc2+zshP2rEM+B47dTF8pVsJZAH4SJA/VR6JOXOqAPjo/2v
	ptJuapjTD4Iz5Og7DtmuAq96PMlgkhmZ71LeLTDH6m5d8PxitSJMf3YT5AFfOYMEOxK4gs9v0nIZq
	2tX0vG2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLmc-00000008Upf-2A1W;
	Wed, 12 Mar 2025 13:06:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsL0W-00000008NQg-0rXH
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 12:16:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-0003sJ-Tr; Wed, 12 Mar 2025 13:16:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-005M8Y-1w;
	Wed, 12 Mar 2025 13:16:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-00AdfG-1b;
	Wed, 12 Mar 2025 13:16:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Mar 2025 13:16:15 +0100
Message-Id: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA970WcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDY0Mj3aKC3CTdZLM0Y2ODNCPL5CRDJaDSgqLUtMwKsDHRsbW1AGJzNBl
 WAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741781778; l=2303;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=bbTS+aLoHPPAnSevQ6sxAOJWZWwZV0vYD+khHtPuqZw=;
 b=0t8mpxNG9i44RjJ+fGqB3HrqB/zUraojW2xvKSItw5pa+CJczj4VNV23PZny7j7bvbJIL0OyL
 9OmclNS+EmAB4HxdoPUpLTEdQJS+nTT1JoZeyVjTnnBZJAMzhyzax1l
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_051620_254633_AB73EE3D 
X-CRM114-Status: GOOD (  10.58  )
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
Subject: [PATCH 0/9] Add RPMB support
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
Sascha Hauer (9):
      mci: implement mci_set_blockcount()
      mci: export some functions for RPMB support
      mci: detect RPMB partitions
      mci: add RPMB support
      tee: optee: probe successfully even when no devices are found
      tee: optee: implement shared mem alloc/free RPC commands
      tee: optee: implement RPMB support
      tee: optee: implement AVB named persistent values support
      commands: add avb_pvalue command

 commands/Kconfig                  |  13 +++
 commands/Makefile                 |   1 +
 commands/avb_pvalue.c             | 138 +++++++++++++++++++++++++
 drivers/mci/Kconfig               |   3 +
 drivers/mci/Makefile              |   1 +
 drivers/mci/mci-core.c            |  73 +++++++++++++-
 drivers/mci/rpmb.c                | 206 ++++++++++++++++++++++++++++++++++++++
 drivers/tee/optee/Kconfig         |   9 ++
 drivers/tee/optee/Makefile        |   2 +
 drivers/tee/optee/avb.c           | 189 ++++++++++++++++++++++++++++++++++
 drivers/tee/optee/device.c        |   1 +
 drivers/tee/optee/optee_private.h |  13 +++
 drivers/tee/optee/optee_rpc_cmd.h | 144 ++++++++++++++++++++++++++
 drivers/tee/optee/rpc.c           |  63 +++++++++++-
 drivers/tee/optee/rpmb.c          | 128 +++++++++++++++++++++++
 drivers/tee/optee/smc_abi.c       |  26 +++--
 drivers/tee/tee_shm.c             |   1 +
 include/linux/tee_drv.h           |   1 +
 include/mci.h                     |  17 +++-
 include/tee/avb.h                 |   9 ++
 20 files changed, 1021 insertions(+), 17 deletions(-)
---
base-commit: a9a50228674d01adc8d7a49d1ab0e7e894c25fe8
change-id: 20250312-rpmb-c6f330f29cb1

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



