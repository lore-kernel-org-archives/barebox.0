Delivery-date: Wed, 09 Aug 2023 09:27:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTdbY-00DTgJ-HC
	for lore@lore.pengutronix.de; Wed, 09 Aug 2023 09:27:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTdbW-0005ju-Iq
	for lore@pengutronix.de; Wed, 09 Aug 2023 09:27:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V2gqiEDB0KSxiQRIWF21LWvuXkl9Lm0yxdwx68dXgNQ=; b=uvtQbuc4WGHfTl
	blQq1TwdmJYNCKhJ2GRAuZ3ngprJclkzVp2N1q9mzVav32/d7L0kKG/AZlCuqUtat4WKS3wL1j9Qe
	iDuk+WqzxV4beaRpgC/bCfr6zfYnSMN++uOfQHdis1uijMqtT3JoPZq9c4fRp0GyuZpklCWs9/hu4
	mEDDpbzBbwbDS4xYIPLHbf1XBV+eVTguoOmP2uaZ47U26hpDu/FwzEQD1gUeWwNUbmNeYsmGQAa6m
	glMMGGPyIq1Ap2wInuAF1RCdsKV1aDgmjgWEDNG7UlLffGb8aRVQEH7W5PBHgaLYkZ2nFe+ob2CIX
	UkjNAf9/J5B+YLCCuQRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTdaH-004G5H-24;
	Wed, 09 Aug 2023 07:26:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTdaE-004G3z-0O
	for barebox@lists.infradead.org;
	Wed, 09 Aug 2023 07:26:19 +0000
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1qTdaC-0005M3-NZ
	for barebox@lists.infradead.org; Wed, 09 Aug 2023 09:26:16 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 0EE1020777B
	for <barebox@lists.infradead.org>; Wed,  9 Aug 2023 07:26:16 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id C8C12207778;
	Wed,  9 Aug 2023 07:26:15 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 967df4aa;
	Wed, 9 Aug 2023 07:26:15 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 09 Aug 2023 09:26:03 +0200
Message-Id: <20230809-phytec-som-imx8mm-v4-0-b9d4759582d8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIs/02QC/4XOwW6DMAwG4Fepcl624HQh9NT3qHrAqQM+kKCEI
 lDFuzf0ssOq7fjb+j/7ITIlpixOh4dINHPmGEo4fhyE69vQkeRbyQIUaGWUkWO/TuRkjoPkYbH
 DIME1Cmrj8ds6UXrYZpKY2uD6vRkTdxy+Ai3Tvh0TeV5eFy/XknvOU0zr64G52qd/3ZorqSQ2D
 tDXCmtjziOF7j6lGHj5vJHYyRn+ZaAw1jXaWGfx6Ju3jP5hrIJ3jC6MtoCaKk8efzPbtj0B50W
 vGWMBAAA=
To: barebox@lists.infradead.org
X-Mailer: b4 0.13-dev-83828
X-Developer-Signature: v=1; a=openpgp-sha256; l=2892; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=TYJ4id62+Pi8NDRxGWSGOFV8ACKoonRDFTSs60bbFjw=;
 b=owEBbQGS/pANAwAKAb5QHEoqigToAcsmYgBk0z+MElU7rtN7JE5aSzJEkKEwWtb2VwwSlHCAp
 tM18uLU0syJATMEAAEKAB0WIQQOzYG9qPI0qV/1MlC+UBxKKooE6AUCZNM/jAAKCRC+UBxKKooE
 6CWTCACNyTA+Bm+3F/xWT2b6jl/MRyYFAvd5BQrf8X1zR6OAq3CiVaYBFis5EGV9t1vvc7SUXrR
 SgDfPaQniqXGsqjFVmfypnFNTn1ztkejNfRq/1tbTMEPLTtr9/Bs7+TaJnN3W4ZUMlfFGm2ngR2
 qx4u7hhfM0qH+F3IT/kxm2anycnS2Rxc3LS56TFqTwUQY/TmuDZA6zVGaEm7pGX2zR3R5ZGm/ru
 Mh9qacgCkFjvO6vEHa3ZurCH6/p9blfgEXXyKO4zxc23pXf/hDqdZXf3VVY/R8WpyHgFp2yXBjD
 1Yh8Pa93fycGSaQ4+ESLWtWE2JNvhVvBZwtl2F791CZrZvoF
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_002618_162855_67B18A33 
X-CRM114-Status: GOOD (  15.05  )
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
Cc: afa@pengutronix.de, kernel@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 0/3] ARM: i.MX8MM: add Phytec i.MX8 SoM support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series adds support for the Phytec i.MX8 SoM. It comes with a
minimal i2c EEPROM read helper for the PBL and imports + adopts the
Phytec SOM detection from u-boot. The Phytec SOM detection reads and
parses the EEPROM on the SOM to figure out the size of the populated
RAM.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
Changes in v4:
- rebased to current next
- actually the same as v3, but send to barebox mailing list

Changes in v3:
- phyboard_polis_rdk_ddr_init():
  - introduce PHYTEC_IMX8M_DDR_* for different RAM sizes
  - get rid of CONFIG_PHYCORE_IMX8MM_RAM_SIZE_* and build always all
    images
  - clean up printing of error messages
- lpddr4-timing: adopt to coding style
- Link to v2: https://lore.pengutronix.de/20230606-phytec-som-imx8mm-v2-0-8c9368c8b4f9@pengutronix.de

Changes in v2:
- make several pointers to "struct phytec_eeprom" const
- phytec_print_som_info(): use printf() instead of pr_cont()
- let phytec_imx8m_detect() return int instead of u8
- fix typo in phytec_get_imx8m_spi()'s comment
- rename struct phytec_api0_data::pad -> __pad
- move include/phytec-som-* to include/boards/phytec
- Link to v1: https://lore.barebox.org/20230606-phytec-som-imx8mm-v1-0-b9c2bf70b766@pengutronix.de

---
Marc Kleine-Budde (3):
      i2c: add <pbl/eeprom.h> for PBL use
      common: board: phytec: import SoM detection for imx8m based SoM from u-boot
      ARM: i.MX8MM: add Phytec i.MX8MM SoM support

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/phytec-som-imx8mm/Makefile         |    4 +
 arch/arm/boards/phytec-som-imx8mm/board.c          |   40 +
 .../flash-header-imx8mm-phyboard-polis-rdk.imxcfg  |    7 +
 arch/arm/boards/phytec-som-imx8mm/lowlevel.c       |  138 ++
 arch/arm/boards/phytec-som-imx8mm/lowlevel.h       |    8 +
 arch/arm/boards/phytec-som-imx8mm/lpddr4-timing.c  | 1850 ++++++++++++++++++++
 arch/arm/dts/Makefile                              |    1 +
 arch/arm/dts/imx8mm-phyboard-polis-rdk.dts         |  131 ++
 arch/arm/mach-imx/Kconfig                          |   13 +
 common/boards/Kconfig                              |    7 +
 common/boards/Makefile                             |    1 +
 common/boards/phytec/Makefile                      |    5 +
 common/boards/phytec/phytec-som-detection.c        |  209 +++
 common/boards/phytec/phytec-som-imx8m-detection.c  |  151 ++
 images/Makefile.imx                                |   20 +
 include/boards/phytec/phytec-som-detection.h       |   69 +
 include/boards/phytec/phytec-som-imx8m-detection.h |   26 +
 include/pbl/eeprom.h                               |   34 +
 19 files changed, 2715 insertions(+)
---
base-commit: 824533a0027a626b43b5a7dacab4cf875cc019f4
change-id: 20230606-phytec-som-imx8mm-2c90276fb58c

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>




