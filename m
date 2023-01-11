Delivery-date: Wed, 11 Jan 2023 09:01:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW30-008djL-Kx
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:01:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW2y-0008JG-Ni
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:01:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7CD51dy69JFAXDkgjauYEZB3QyysHyejvmgs58W2tnE=; b=WcCAtT6ITvDUjSnN7wnq0c+UBV
	f1b4pj8R764QAI5VoLt9sLdYHOKZfhZ9LTSmIaZ/SbcGlTQ06lVMBPYJcFuunHnv90LVZHhXJpoEw
	Tt4ioASdNXXTzVEteTs0W57FHnFqjNoWLyy9E/OiEuxsMRPx2JRKmZPK9/AShfkcazpP0Wqb0rQkT
	9f1Ouf7rqNVoHw7N7NWt6tp/RZ3hpKJKVii52yOK6BaBykTs5nRnSbhjk1MR5NqQZh9pnwNw2Apm7
	Fiw8xwDr1PAertrqfE4lMEkU8yPsSBz4hpE+KiL/n+NDXq9EoHF0K68bRbkFnkQqt5lIDALdpfoAj
	atk/bEGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1i-00ADZd-TC; Wed, 11 Jan 2023 08:00:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1T-00ADTI-IP
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:59:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1S-0007Y2-C5
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:59:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1R-005FcH-Ny
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:59:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1Q-003uWG-EH
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:59:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 11 Jan 2023 08:59:33 +0100
Message-Id: <20230111075940.922817-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235947_667236_F1F36FDB 
X-CRM114-Status: GOOD (  16.64  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] ARM: i.MX8M: add optional CAAM init in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While the CAAM is TrustZone aware, Linux and OP-TEE drivers are not
necessarily so:

  - Linux running in normal world will attempt to set up RNG
    via DECO, which can be restricted to secure world

  - (Some versions of) OP-TEE may depend on RNG being set up by BL2

While the proper solution would be to teach their drivers how to
instantiate the RNG via SHs, we'll want to support existing firmware, so
take the easy way out and just set up RNG4 SH0 and SH1 in barebox.

We already do that for the i.MX6, but the setup there happens in barebox
proper. For security reasons, we want to install OP-TEE as early as
possible while running the prebootloader, so we replicate the setup for
PBL. This has been tested with the i.MX8MM and i.MX8MN. On the i.MX8MN
in particular imx-optee used to hang for me while doing its crypto init,
because it assumed a setup RNG. This is resolved now by this series.

Note that barebox itself does not yet benefit from this setup and that
the barebox proper driver for CAAM is unaffected by this change.
I verified it continues to work on an i.MX6Q as this series had some
changes to the CAAM MMIO accessors.

Ahmad Fatoum (7):
  ARM: i.MX8M: bootrom: access OCRAM directly if running in EL3
  crypto: caam - sync 64-bit accessors with Linux
  crypto: caam - add job ring accessors from Linux
  crypto: caam - make command constants unsigned
  crypto: caam - implement early PBL init
  common: add new CONFIG_HAVE_OPTEE symbol
  ARM: i.MX8M: init CAAM when CONFIG_FSL_CAAM_RNG_PBL_INIT

 arch/arm/mach-imx/Kconfig                   |   1 +
 arch/arm/mach-imx/Makefile                  |   4 +-
 arch/arm/mach-imx/atf.c                     |  10 +
 arch/arm/mach-imx/bootrom-cmd.c             |  14 +-
 arch/arm/mach-imx/include/mach/imx8m-regs.h |   3 +
 arch/arm/mach-imx/include/mach/romapi.h     |   4 +
 arch/arm/mach-imx/romapi.c                  |  24 +-
 common/Kconfig                              |   7 +-
 drivers/crypto/Makefile                     |   2 +-
 drivers/crypto/caam/Kconfig                 |   3 +
 drivers/crypto/caam/Makefile                |   1 +
 drivers/crypto/caam/ctrl.c                  |   6 +
 drivers/crypto/caam/desc.h                  |  43 +-
 drivers/crypto/caam/detect.h                |  19 +
 drivers/crypto/caam/pbl-init.c              | 491 ++++++++++++++++++++
 drivers/crypto/caam/regs.h                  | 272 ++++++++---
 include/soc/fsl/caam.h                      |  17 +
 include/zero_page.h                         |   2 +-
 18 files changed, 834 insertions(+), 89 deletions(-)
 create mode 100644 drivers/crypto/caam/detect.h
 create mode 100644 drivers/crypto/caam/pbl-init.c
 create mode 100644 include/soc/fsl/caam.h

-- 
2.30.2



