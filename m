Delivery-date: Tue, 06 Jun 2023 12:51:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6UHx-00Cwoc-Gl
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 12:51:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6UHu-00040M-Ip
	for lore@pengutronix.de; Tue, 06 Jun 2023 12:51:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h86fneX9a8UgvN3ehZV3SF2bIa4rjEiGVmg9wyjic+8=; b=WqtlgeksdCxBgJpRzSvN5Lvdki
	+nC2RaYYBv6NkRoZXS+ti7JL7OVMhliw4E4QENnpjMhiBpCG9VDCp5/q44lxXXxf7PPAubLdU8AII
	qwNhLesqsJMWHuHsU6mF0jfAlPuGCUyUFbEq7ZI4LDxz3YjfG2+zPgI/H4RIYvaeSRHmPeMSLLkNr
	wxxB4Ks+mI9Zc8Qmm5a6LURE1cZsQa/fIkgRz4QyQ3uR5RGfB57RHPncbtcUFteCkR+DJpBi2UhfO
	ai4oMH79YYvlixL0X3twCVnBFGZ7Q/ezx68h9AUUOo/VDt984e8f2uXFi0JuAfA/59RGiHNpHCbR8
	yqzNnvjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6UGi-001LPH-0s;
	Tue, 06 Jun 2023 10:50:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6UGe-001LLH-06
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 10:50:25 +0000
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1q6UGY-0003Sn-7z
	for barebox@lists.infradead.org; Tue, 06 Jun 2023 12:50:18 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id DE8A61D31D5
	for <barebox@lists.infradead.org>; Tue,  6 Jun 2023 10:50:16 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 9A34A1D31D1;
	Tue,  6 Jun 2023 10:50:16 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id b6686d3b;
	Tue, 6 Jun 2023 10:50:16 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 06 Jun 2023 12:50:01 +0200
Message-Id: <20230606-phytec-som-imx8mm-v1-0-b9c2bf70b766@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFkPf2QC/x2NQQrDIBAAvxL23KXWUpv2K6EHtZu4BzW4oRhC/
 h7T4zAMs4FQYRJ4dxsU+rFwTg1ulw58sGki5G9j0ErflVEG57Au5FFyRI61jxG1fyn9NKN79B5
 a56wQumKTD2eZC0+cronqctq50Mj1fxw++34AxTzGHYEAAAA=
To: barebox@lists.infradead.org
X-Mailer: b4 0.13-dev-c6835
X-Developer-Signature: v=1; a=openpgp-sha256; l=1948; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=6thlDgm4Rz7/V9l7cTWibYuGjlqMB4RKiZ6KptFk/to=;
 b=owGbwMvMwMW4L0DGS6uL5QXjabUkhpR6/qgyh4mVatWeDvd1eTlS78VnmPJfV85mn6p+8Sy7S
 hinuWwnozELAyMXg6yYIgvf2ca9Kz6ZrIz/ahQAM4iVCWQKAxenAEzknAr7/+ibv38dSHO12/fv
 Gk/Z1h31wc1zo+yP6jnm+H8x7d6y3kvdbGJswuQLOyQX5q6ut/8hu82JrZLxuY9ycOwRU/UrU0+
 fs1vB/0o+7MkmzxTbRXYKrXGdb9ZUBUz7Z3Drm7r6q+i//JtDjiedUf63V0kv/RC/RbRFx8a0/o
 YTgjGP7oYe3KPK3psU7rfqhcZcvX33nWSKZ5TPdDHfd+ycRHELc9nJvb9K/a82LZ0xJ8Qt2coiI
 F/jq9vxRMb9yVPd9tqc2bIqwJ0192vrSS617Tr7FJMv3op/sfMm6464+zrhc1/uOx0ZdtlBJ8KP
 4eYU+Q4TFYYVdgltl1oYa/VeZs8vdFd49UP6ko2F+oTJAA==
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_035024_068144_90E50CF2 
X-CRM114-Status: GOOD (  10.90  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] ARM: i.MX8MM: add Phytec i.MX8 SoM support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series adds support for the Phytec i.MX8 SoM. It a minimal i2c
EEPROM read helper for the PBL and import + adopts the Phytec SOM
detection from u-boot. The Phytec SOM detection reads and parses the
EEPROM on the SOM to figure out the size of the populated RAM.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
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
 include/pbl/eeprom.h                               |   34 +
 include/phytec-som-detection.h                     |   69 +
 include/phytec-som-imx8m-detection.h               |   19 +
 19 files changed, 2650 insertions(+)
---
base-commit: e7a35fb8e6f74d03fc8bed997c025d0eee2b88e0
change-id: 20230606-phytec-som-imx8mm-2c90276fb58c

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>




