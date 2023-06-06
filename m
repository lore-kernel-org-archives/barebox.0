Delivery-date: Tue, 06 Jun 2023 16:54:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Y5L-00DA8z-GH
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 16:54:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Y5I-0007gh-FP
	for lore@pengutronix.de; Tue, 06 Jun 2023 16:54:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/zPvap4FoPnWcnDIdnVtgFhA+hea+AfSDprKQ8X4jR0=; b=dfZfhE/hSIBe2BL+IoxX2Wre7q
	8TpyGKP0bChKE6fQY6Ykmx7tvPHg6IpiwjSrpimV/g4UgHgx1JSXAFnb5dLCtbzxTvFdkQ9XeStiz
	vbAs/oJwzeejNhhLL5GLuZRxHC2Nn9Uv4UrihJIv9vctZTDIWAp7TkHCinGueH45+Lcq16xB2LcEy
	JHC8G/KUX+kDlC4csr96vh+iKDQllOst3s4eyoZBEPFxyj3tQqaegpo2AKQ10I5Tn1HT08L7eVyyO
	N47xMG9wmHKyM4TCYtfSF2/VcIjJWNxxQrnLI6KtFf96pu6X8w6N1aWO51G+NvHhtfRaMtJVZqFib
	qNO9+8Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Y4B-0026eW-0L;
	Tue, 06 Jun 2023 14:53:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Y47-0026cT-03
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 14:53:44 +0000
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1q6Y45-0007MP-Gc
	for barebox@lists.infradead.org; Tue, 06 Jun 2023 16:53:41 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 2E12B1D354C
	for <barebox@lists.infradead.org>; Tue,  6 Jun 2023 14:53:40 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id DF3121D3548;
	Tue,  6 Jun 2023 14:53:39 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id f4fed9d8;
	Tue, 6 Jun 2023 14:53:39 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 06 Jun 2023 16:53:24 +0200
Message-Id: <20230606-phytec-som-imx8mm-v2-0-8c9368c8b4f9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGRIf2QC/32OQQ6DIBREr2JY97dIU7Rd9R6NC8Gv/AVggBqM8
 e5FD9Dlm8nLzMYiBsLIXtXGAi4UybsC4lIxbXo3IdBQmAku7lxyCbNZE2qI3gLZ3FoLQj+5aOS
 oHq1mxVN9RFChd9ocpg80kbs5zOlo54Aj5XPx0xU2FJMP63lgqY/039ZSAwf11EKNDVeNlO8Z3
 fRNwTvK1wFZt+/7D963QazVAAAA
To: barebox@lists.infradead.org
X-Mailer: b4 0.13-dev-c6835
X-Developer-Signature: v=1; a=openpgp-sha256; l=2394; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=F25MC1q1X17dOS2cLAYS6FBzJhjAQamT5Td164tJhCk=;
 b=owEBbQGS/pANAwAKAb5QHEoqigToAcsmYgBkf0hlt7/cGQb6CjCk3cRrfVm9v4g3V8TCXp4JB
 1t15oZCC4qJATMEAAEKAB0WIQQOzYG9qPI0qV/1MlC+UBxKKooE6AUCZH9IZQAKCRC+UBxKKooE
 6D3WB/9zIM0qQANhJqHKu6m6xOCLWxhyI7TTIoOtfgd5NsqxgqYOUkZtiILvVIOGQf6P467dLN1
 0CTD2fTc9sKJQUxEaFj3sTqcFphX0MU9P5KC5zHzNihN+AxEo0m0eiRQ1EK+5ekjp28uqfBOR5F
 chn5KqwspFAtSFUN5aiWIub7wX6QMmlFerCjLssNLPNyl19VF3dyj2GtLSlh3zjg67XNztIoZar
 pkEo9qbp9PMa/jJeQjSr41100kLKPMNAh1AfW1JTrS6bIxCKbwwnTLDylWkF+i4DQOTQdBzY56t
 yJLvNoe5I3USG7g582fkNaLZkTYRRg69gV7VXP0uovzWydqG
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_075343_049975_A6EAA901 
X-CRM114-Status: GOOD (  12.99  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/3] ARM: i.MX8MM: add Phytec i.MX8 SoM support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series adds support for the Phytec i.MX8 SoM. It a minimal i2c
EEPROM read helper for the PBL and import + adopts the Phytec SOM
detection from u-boot. The Phytec SOM detection reads and parses the
EEPROM on the SOM to figure out the size of the populated RAM.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
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
      ARM: i.MX8MM: add Phytec i.MX8 SoM support

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/phytec-som-imx8mm/Makefile         |    4 +
 arch/arm/boards/phytec-som-imx8mm/board.c          |   40 +
 .../flash-header-imx8mm-phyboard-polis-rdk.imxcfg  |    7 +
 arch/arm/boards/phytec-som-imx8mm/lowlevel.c       |  130 ++
 arch/arm/boards/phytec-som-imx8mm/lowlevel.h       |    8 +
 arch/arm/boards/phytec-som-imx8mm/lpddr4-timing.c  | 1852 ++++++++++++++++++++
 arch/arm/dts/Makefile                              |    1 +
 arch/arm/dts/imx8mm-phyboard-polis-rdk.dts         |   60 +
 arch/arm/mach-imx/Kconfig                          |   48 +
 common/boards/Kconfig                              |    7 +
 common/boards/Makefile                             |    1 +
 common/boards/phytec/Makefile                      |    4 +
 common/boards/phytec/phytec-som-detection.c        |  209 +++
 common/boards/phytec/phytec-som-imx8m-detection.c  |  151 ++
 images/Makefile.imx                                |    5 +
 include/boards/phytec/phytec-som-detection.h       |   69 +
 include/boards/phytec/phytec-som-imx8m-detection.h |   19 +
 include/pbl/eeprom.h                               |   34 +
 19 files changed, 2650 insertions(+)
---
base-commit: d95b1da1ac49476565382e40bbeb56cd5ad29f4d
change-id: 20230606-phytec-som-imx8mm-2c90276fb58c

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>




