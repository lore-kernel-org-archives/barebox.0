Delivery-date: Thu, 21 Aug 2025 19:52:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T4-0032cM-2U
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 19:52:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T3-0005tY-Eg
	for lore@pengutronix.de; Thu, 21 Aug 2025 19:52:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T0pTNrnrAG1KfYHKZW0iM6j8D4o31Pa5lPQN7iokr0c=; b=zu2FgamQuEqegfS8DTegboX+7D
	v5j6xyyuNqTPpwf90OUtk2khbj/HIjCYZ1OoeR4YF6idFNPvK2UmNWxULyUdumLvV9K7GSF/2xt+S
	thU3+E4CNfde7tQtQA0z4jnmkMosPYq9oFu9thdh9AID2rd9N0T5lj9uhO1qqCTKCjkSoiNMOTPo7
	nMSSSnii+42wbP5IM9wLKgsYS3orP4iqKqUspVnmcWWTYJ22d1qs3WuzRKh1uQ+Lu8o3GkdweVA58
	82ASMTcN/4+zt404FDqFu98DVKEwcJviCx09cfjX5y8BvIBSQV9v8osn/+pgmGGSvtC5HutRo8yXE
	t5+ygFRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up9SP-000000006sG-2qTM;
	Thu, 21 Aug 2025 17:52:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5Ba-0000000H1aE-3743
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 13:18:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-0008Vc-G9; Thu, 21 Aug 2025 15:18:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-001Q3G-0p;
	Thu, 21 Aug 2025 15:18:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-00HHYe-0a;
	Thu, 21 Aug 2025 15:18:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Aug 2025 15:18:23 +0200
Message-Id: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ8cp2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDCyND3ezUyrzE3NRiXUvTJBPjREvLVItkUyWg8oKi1LTMCrBR0bG1tQA
 oc1Z3WgAAAA==
X-Change-ID: 20250821-keynames-95b43a99e8c5
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755782311; l=4455;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CYD4DI/eCalEPnyOjE8ekBvAd0w5qrttIGQ1kiU4AZA=;
 b=YeFS5Jy2DdrgL+bl3loljJCkdpjOXxpl6DgxjyKYJl3MLl9sUHWuLIy9K1FumsFKNbVNlB2RE
 EFmXzz9tNfOA3y7f4FwgMGwNROcO/ggYZm7kMRBG3Bhfczvu6gBDqIZ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_061834_783637_B308AF71 
X-CRM114-Status: GOOD (  14.64  )
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
Subject: [PATCH 0/6] crypto: keys: Some work for public keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Traditionally we included public keys in form of dts snippets generated
by U-Boot mkImage and compiled into the barebox device trees. We can now
include public keys directly as C structs from the public key PEM files
or PKCS#11 uris which is easier to integrate. Nevertheless the dts
snippet way is still present which makes the configuration slightly
confusing. Remove this old way for good to make configuration easier
and to get rid of some maintenance burden.

Another point tackled in this series is that we can compile multiple
keys into the binary, but the user is left without a clue which key
is finally used. This series adds a sha256 hash over the public keys
to struct public_key which can be printed along the key to identify it.

Finally Pengutronix created a set of well known development keys for
convenient testing of secure boot chains. This series adds a new option
to compile the public key parts into the barebox binary with a single
knob. With this images signed with these keys can esaily be tested
without the need of a BSP or adding the paths to the keys into Kconfig.

Finally the output of the FIT image code is improved. It has become very
verbose when used with FIT images containing multiple device tree
overlays. The information is now hidden behind the verbose option which
can be activated with bootm -v or global.bootm.verbose=1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (6):
      crypto: drop BOOTM_FITIMAGE_PUBKEY
      crypto: Allow to include development keys in build
      crypto: include public key hashes
      commands: add keys command
      fit: consistently pass around fit_handle
      fit: improve diagnostics

 Documentation/user/security.rst                    |  5 ++
 arch/arm/dts/imx6dl-phytec-pbab01.dts              |  3 --
 arch/arm/dts/imx6dl-phytec-phyboard-subra.dts      |  3 --
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    |  3 --
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts |  3 --
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts |  3 --
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    |  3 --
 arch/arm/dts/imx6q-phytec-pbab01.dts               |  3 --
 arch/arm/dts/imx6q-phytec-phyboard-alcor.dts       |  3 --
 arch/arm/dts/imx6q-phytec-phyboard-subra.dts       |  3 --
 arch/arm/dts/imx6q-phytec-phycard.dts              |  4 --
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     |  3 --
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts     |  3 --
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts    |  3 --
 arch/arm/dts/imx6s-phytec-pbab01.dts               |  3 --
 arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts    |  3 --
 arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts    |  3 --
 arch/arm/dts/imx6ul-tqma6ul-common.dtsi            |  4 --
 arch/arm/dts/imx6ul-webasto-ccbv2.dts              |  4 --
 arch/arm/dts/imx6ul-webasto-marvel.dts             |  4 --
 arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts   |  3 --
 .../arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts |  3 --
 arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts   |  3 --
 arch/arm/dts/stm32mp133c-mect1s.dts                |  4 --
 arch/arm/dts/stm32mp133c-prihmb.dts                |  4 --
 arch/arm/dts/stm32mp151c-plyaqm.dts                |  4 --
 commands/Kconfig                                   |  7 +++
 commands/Makefile                                  |  1 +
 commands/keys.c                                    | 30 +++++++++++
 common/Kconfig                                     | 32 ------------
 common/boards/qemu-virt/fitimage-pubkey.dts        |  4 --
 common/image-fit.c                                 | 40 ++++++++++-----
 crypto/Kconfig                                     |  7 +--
 crypto/Makefile                                    |  9 ++++
 crypto/fit-4096-development.crt                    | 33 ++++++++++++
 crypto/fit-ecdsa-development.crt                   | 13 +++++
 crypto/public-keys.c                               |  6 ++-
 include/crypto/public_key.h                        |  2 +
 scripts/Makefile.lib                               | 12 -----
 scripts/keytoc.c                                   | 59 ++++++++++++++++++++++
 40 files changed, 194 insertions(+), 148 deletions(-)
---
base-commit: 525ccfb5ac381c06898e6403e12ec8c34c42c0f8
change-id: 20250821-keynames-95b43a99e8c5

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



