Delivery-date: Wed, 19 Oct 2022 15:53:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol9Vk-000kwI-75
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 15:53:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol9Vg-0003ct-V0
	for lore@pengutronix.de; Wed, 19 Oct 2022 15:53:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K0tmj7AtUtV+YrU7Fg9+lDTZNF8ExOUZyMiqW2uOB18=; b=J2Np6y3LH8rczkl07RHlDCQQyh
	zo4oKxS8CrTqhHsjh4ZzlIwrK62F0eqTR1atVu163oYJGtam5fQbCqvDEAG9HXUJXKNksou9WmZwL
	zZbHbWDd2IaZsUyra4I4qd4kcQA2+m3BPffoM1KTEt/jZGcXmLdmQh2Fez7tUjMx2IwDrHppoc7Pi
	D/Cf+NSFzp5x+DSdqD1AYRnkhyFov4CxNF+97Mmt+9q95WtfX/flEiZ+Hn+13u4yrdUJZDm774nvA
	voAuspCFvouhEBsmrm/MVRCs98G4qD1SEwRmvmu3U2joqRp9d2vm3KXqqO/fyFRXbtRMmVSF4zI6W
	/86+pDhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9U9-002JnE-JG; Wed, 19 Oct 2022 13:51:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9U4-002Jkt-Do
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 13:51:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1ol9U0-0003UV-Ak; Wed, 19 Oct 2022 15:51:44 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1ol9Tz-0008ER-KD; Wed, 19 Oct 2022 15:51:43 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1ol9Ty-0095JY-NI; Wed, 19 Oct 2022 15:51:42 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 19 Oct 2022 15:51:40 +0200
Message-Id: <20221019135140.79821-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1362; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=0P/M8tZcwhT6ZvHxgaVR5z1w9R2tMABb21ckdp5qS1s=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBjUADptxicD3215Waelioc8Ld7Xg0FRCMylcTDh/rR gkfW/i2JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCY1AA6QAKCRDB/BR4rcrsCcw9B/ 4/sCOxgAo+1eBUVZf/nClhIlXvT8qW9WlNA4RId3NPLVbkZkaDpBTOhr4izLR1aXdnP+kPfMhkrKxl JVNEmDysAkJQVvsMa2YkXQZfack5E7Gnm0p/3m+BUC6jwnjyc4yhquH97xWhFkuXbZsEN6fNejSJwS SBCim0NUuqZy29uwzcJ2ocI/CjHfIoPIB8KCt5WcLtMolOQhVBqRKw4Lv0n2bSAjBNlUb83B4Q+CfJ o45qmbyBAquVTRGkuBrHvx4vXzH4wLPv6ndPeKFYu2s7XA06h7FDh/TZEGFgLygMPWhbVcIWzOfM/H 79h+F3w6Ro/JUT/0SNr3CWUkOTrxWF
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_065148_478790_73BDADD1 
X-CRM114-Status: GOOD (  10.26  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: boards: i.MX8MP-EVK: Fix two doc bugs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The bl31 binary must be put in the firmware/ subdirectory to be properly
picked up. And building the full imx_v8_defconfig requires some more DDR
PHY firmware files, so disable all other machines.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 Documentation/boards/imx/nxp-imx8mp-evk.rst | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/boards/imx/nxp-imx8mp-evk.rst
index 1074992f2f88..dcedf882c6d2 100644
--- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst
@@ -47,7 +47,7 @@ Get TF-A from https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/ and
 checkout version v2.7::
 
   make PLAT=imx8mp bl31
-  cp build/imx8mp/release/bl31.bin ${barebox_srctree}/imx8mp-bl31.bin
+  cp build/imx8mp/release/bl31.bin ${barebox_srctree}/firmware/imx8mp-bl31.bin
 
 .. warning:: It is important to use a version >= v2.7 else your system
    might not boot.
@@ -58,6 +58,7 @@ Build Barebox
 i.MX8MP-EVK support is contained in the imx_v8_defconfig to build it use::
 
   make imx_v8_defconfig
+  make menuconfig # disable all machines under "System Type" but "NXP i.MX8MP EVK Board"
   make
 
 Boot Configuration

base-commit: 3e01858983aafb424b5ad10f11997af8cba99a5d
-- 
2.37.2



