Delivery-date: Tue, 17 Oct 2023 16:54:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTI-00BscO-1A
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:54:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTF-0003T5-3t
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:54:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lNwQklDP+1PRu5xkyb04Q3f68Vg8WGLSg0WEVQ+nTSk=; b=36uI8fO1wGdK57yoE4iiq1vJJf
	+tWMvjDW2+TsvUpQqqjOSlCid0yDl9gOHeqe4OxAkU8kAOUCky9tsDGPEzUbHvq1Jhg5unn68tqnS
	xGEgsB/crL/m9TzBVu66JAZJeMjDNEVM7UPbpwLrNa4eyPRp7Laorhoj9kSJd0fnGqsTZFYDeR3g2
	LLpc0TAJFGQIMhjIVa+4ctaQ52aBoOnouwBh3o/pp2UlFDr9KcYAdEZyQ1N4kRLlV8ejFIfCce674
	KX8VDIo5WrSuCC6ueqshxMcGZGyLMSmBcftH2dVv7hkZwOTAYvZ4D1OfbNotWWZJp8+jLtvQALCNE
	Qj+IQWrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslRq-00CeXf-2x;
	Tue, 17 Oct 2023 14:53:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ2-00CcLs-0Q
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:43 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-9D
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:02 +0200
Message-Id: <20231017145131.3069283-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_075138_231108_70A01F0C 
X-CRM114-Status: GOOD (  16.50  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/29] i.MX8M HAB Fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi all,

unfortunately with the addition of the FlexSPI image support I broke
the HAB support for i.MX8M devices because I didn't honored the new CSF
location. This PR will fix this for the MMC/SD/USB boot case.

Additional the PR adds the support to HAB boot the system from a QSPI
NOR as well. For the FlexSPI HAB boot a 2nd CSF slot/area is added to
keep the very user-friendly single-image approach.

Before reviewing Patch13 and onwards I do recommend to look at Patch26
first to get an overview of the final result.

Patch1-7:
Cleanup the hab command code and image artifacts and enable it support
for all i.MX8M devices.

Patch8-9:
Add the signing support to the Makefile.imx and convert the i.MX8M rules
to use the new macro to cleanup the code.

Patch10-12:
Prepare i.MX8M*-EVKs to be able to build signed images.

Patch13-14:
Add support for multiple CSF slots.

Patch15-23:
Fix the HAB support for MMC/SD card first and add/fix the HAB support
for FlexSPI images.

Patch24:
Make it possible to pass CST command line paramters via environment.
This is very useful for new CST versions which do support PKCS11
out-of-the box if the user specify the backend via '-b pkcs11'.

Patch25-26:
Documentation patches to become an overview of the FlexSPI HAB single
image implementation.

Testers are very welcome :)

Marco Felsch (20):
  i.MX: HAB: remove unused init() hook
  ARM: i.MX8M: add flexspi-imx8m{m,p}-cfg.h header
  ARM: boards: i.MX8M: make use of new flexspi-imx8m{m,p}-cfg.h header
  ARM: lds: introduce HAB_CSF_LEN define for the hab_csf section
  ARM: lds: add support for a 2nd CSF area
  scripts: imx: force flexspi and hab option order
  scripts: imx: move flexspi_image() into header
  scripts: imx: fix i.MX8M CSF header placement
  scripts: imx: add imx8m_get_offset_size helper
  scripts: imx-image: header_v2: add CSF slots
  scripts: imx-image: hab_sign: refactor function
  scripts: imx: replace static string allocation
  scripts: imx: add hab_qspi support
  scripts: imx: add helper to write CSF Blocks command
  scripts: imx: fix HAB for FlexSPI boot
  scripts: imx-image: add missing close()
  scripts: imx-image: add support for CST_EXTRA_CMDLINE_OPTIONS
  ARM: i.MX: add hab qspi support if enabled
  Documentation: boards: imx: replace i.MX8MQ with i.MX8M
  Documentation: boards: imx: add FlexSPI sub-section

Rouven Czerwinski (9):
  kbuild: clean start*_*.{p,ps}imximg files
  i.MX: HABv4: fix event status comparison
  i.MX: HABv4: fix i.MX8MQ device lockdown
  i.MX: HABv4: extend support to i.MX8M SoCs
  i.MX: HABv4: retrieve HAB ROM version for i.MX8M
  ARM: i.MX: allow HAB for i.MX8M family
  ARM: i.MX: introduce build_imx8m_habv4img
  ARM: i.MX: convert i.MX8M to helper
  ARM: boards: i.MX8M: add HAB image support

 Documentation/boards/imx.rst                  |  86 ++++++++++-
 .../flash-header-imx8mm-evk.imxcfg            |   4 +-
 .../flash-header-imx8mn-evk.imxcfg            |   4 +-
 .../flash-header-imx8mp-evk.imxcfg            |   4 +-
 arch/arm/lib/pbl.lds.S                        |   8 +-
 arch/arm/mach-imx/Kconfig                     |  10 +-
 drivers/hab/hab.c                             |  65 ++++++---
 drivers/hab/habv4.c                           |  40 +++--
 images/Makefile                               |   3 +-
 images/Makefile.imx                           | 110 +++++---------
 include/mach/imx/flexspi-imx8mm-cfg.h         |   8 +
 include/mach/imx/flexspi-imx8mp-cfg.h         |   8 +
 include/mach/imx/habv4-imx8-gencsf.h          |   3 +
 include/mach/imx/imx-header.h                 |   4 +-
 include/mach/imx/ocotp-fusemap.h              |   3 +
 scripts/imx/imx-image.c                       |  65 +++++----
 scripts/imx/imx.c                             | 137 +++++++++++++++---
 scripts/imx/imx.h                             |  13 ++
 18 files changed, 413 insertions(+), 162 deletions(-)
 create mode 100644 include/mach/imx/flexspi-imx8mm-cfg.h
 create mode 100644 include/mach/imx/flexspi-imx8mp-cfg.h

-- 
2.39.2



