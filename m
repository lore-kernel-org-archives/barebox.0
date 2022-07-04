Delivery-date: Mon, 04 Jul 2022 16:28:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8N3t-005byQ-W5
	for lore@lore.pengutronix.de; Mon, 04 Jul 2022 16:28:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8N3v-0007B5-Im
	for lore@pengutronix.de; Mon, 04 Jul 2022 16:28:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kuT84g4awsVm1S31ZWK1+nqEI0SE/Y3IwiOVI0+jV7I=; b=FM1fu5vupAPBZtBvJrTiZBjQ87
	xyjfrJaWBX7pg9CBhbSjlIxchxMiq2pN+XcQ9N5k8LXnw/lf5D2y5PnFPC2bOekgzoDqSzLSM2R2P
	2iKGpV/oWOd8XKQBIeS4sNOFrIdKWq6giIbeFtEmFWrIkTX/V8I0+TImS1nN9iCDSDDRANz6by7RG
	YKDIiMFHrIsE7naNPPKWTbgXaK9EEVyHnz4MiFaWvcRGxYTcq5ZkKpTd3Uwt3sUpWETvxJRJfSGZt
	aWOpWvOGCTobM2WWEey7jbgLNttML2mqhjTt8H3pyGapu+0L84ipshMJLQDjpRS5F/mYAtq8B248y
	g6eUl26g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8N2c-009S3V-04; Mon, 04 Jul 2022 14:27:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8N2X-009S2X-V4
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 14:27:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o8N2W-00074L-Io
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 16:27:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o8N2S-004ODN-Bl
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 16:27:03 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o8N2V-001xfu-5e
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 16:27:03 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  4 Jul 2022 16:27:00 +0200
Message-Id: <20220704142700.467654-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_072706_067863_0ACDFD36 
X-CRM114-Status: GOOD (  12.08  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] ARM: i.MX8MP: adapt atf bl31 base addr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The usptream TF-A was shifting around the base address from version to
version. But finally with upstream TF-A v2.7 it is correctly set to
0x970000. This change was done since the first official silicon has an
SRAM size of 576KB where as the tapeout version A1 (pre-silicion) had
only 512KB.

The upstream TF-A has adapt it in verion v2.5 so the BL31 blob is at the
end of the SRAM. Unfortunately they had (accidental) reverted back to
0x960000 in v2.6. They noticed that and changed (again) back to 0x970000.
with v2.7.

This commit also adapts the documentation for the i.MX8MP-EVK to
reference the upstream TF-A. The new warning should point out that we
strongly recommended to use versions from v2.7 onwards, due to the
version mess explained above.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:

v2:
- fix commit message ger/eng mixup and mention tapeout version A1

 Documentation/boards/imx/nxp-imx8mp-evk.rst | 11 +++++++----
 arch/arm/mach-imx/include/mach/atf.h        |  2 +-
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/boards/imx/nxp-imx8mp-evk.rst
index 366c1de500..1074992f2f 100644
--- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst
@@ -40,15 +40,18 @@ As a last step of this process those files need to be placed in
 	      firmware/${f}; \
   done
 
-Get and Build the ARM Trusted firmware
---------------------------------------
+Get and Build the Trusted Firmware A
+------------------------------------
 
-Get ATF from https://source.codeaurora.org/external/imx/imx-atf, branch
-imx_5.4.3_2.0.0::
+Get TF-A from https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/ and
+checkout version v2.7::
 
   make PLAT=imx8mp bl31
   cp build/imx8mp/release/bl31.bin ${barebox_srctree}/imx8mp-bl31.bin
 
+.. warning:: It is important to use a version >= v2.7 else your system
+   might not boot.
+
 Build Barebox
 -------------
 
diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
index 09396f4646..bc400ddbad 100644
--- a/arch/arm/mach-imx/include/mach/atf.h
+++ b/arch/arm/mach-imx/include/mach/atf.h
@@ -10,7 +10,7 @@
 
 #define MX8MM_ATF_BL31_BASE_ADDR	0x00920000
 #define MX8MN_ATF_BL31_BASE_ADDR	0x00960000
-#define MX8MP_ATF_BL31_BASE_ADDR	0x00960000
+#define MX8MP_ATF_BL31_BASE_ADDR	0x00970000
 #define MX8MQ_ATF_BL31_BASE_ADDR	0x00910000
 #define MX8M_ATF_BL33_BASE_ADDR		0x40200000
 #define MX8MM_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
-- 
2.30.2



