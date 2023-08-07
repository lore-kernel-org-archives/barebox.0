Delivery-date: Mon, 07 Aug 2023 09:46:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSuwO-00AlQi-Uk
	for lore@lore.pengutronix.de; Mon, 07 Aug 2023 09:46:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSuwN-0003nA-53
	for lore@pengutronix.de; Mon, 07 Aug 2023 09:46:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zZYqKFsnKRwh6A1TFyV0PDi6TKy+b5qXR6Epg/6qTcM=; b=cca++oscWEaQQt3gPzGPE65nGe
	3Ux05T4IaXf0Htcm2y0Byoh9FgcLrgQENazdy4K8/LYRqBSsQfQ/HWpS10w5S4j8YOD2gHk9OXVx0
	xLiwSXnzNtC1R/JSyymsY6XgJJjLeuZdvSMgGc5etI97BP6eH5q6WdmQmaRS5kIoB3hXk+hyQr+ak
	zPgdwbURo1D9PvvGRDf4n7qGteHJNbFD9hwTufvpPyUqPakhXfx8hUG9A65En6ibfx1xPfDXNjnUD
	EdIUVoqt0jU851fn7IPK6WNZlx4wpkKLDLUrPIshBkscDFHPm7vC0wXXoor80Z6rWyf4rhGzj/+HF
	n31Dl5CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSuv9-00GNzW-1o;
	Mon, 07 Aug 2023 07:44:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSuv6-00GNyb-33
	for barebox@lists.infradead.org;
	Mon, 07 Aug 2023 07:44:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qSuv1-0003RH-4o; Mon, 07 Aug 2023 09:44:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qSuv0-001h71-Gn; Mon, 07 Aug 2023 09:44:46 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qSuv0-004QjV-0t;
	Mon, 07 Aug 2023 09:44:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Aug 2023 09:44:45 +0200
Message-Id: <20230807074445.1042385-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_004452_981599_FE4126B2 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX25: image: consult pkg-config for openssl cflags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For i.MX HABv3, we already ask pkg-config about the flags
to link the image generation utility against OpenSSL, but we assumed
that the headers would be found in the toolchain's default system header
search path. This may not always be the case, so explicitly ask
pkg-config about the CFLAGS as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index 9544974d523f..739641b47707 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -15,7 +15,7 @@ HOSTCFLAGS_imx-image.o = -I$(srctree) -I$(srctree)/include/mach
 HOSTCFLAGS_imx-usb-loader.o += -I$(srctree) -I$(srctree)/include/mach
 imx-usb-loader-target-userccflags += -I$(srctree) -I$(srctree)/include/mach
 ifdef CONFIG_ARCH_IMX_IMXIMAGE_SSL_SUPPORT
-HOSTCFLAGS_imx-image.o += -DIMXIMAGE_SSL_SUPPORT
+HOSTCFLAGS_imx-image.o += -DIMXIMAGE_SSL_SUPPORT `$(PKG_CONFIG) --cflags openssl`
 HOSTLDLIBS_imx-image  = `$(PKG_CONFIG) --libs openssl`
 endif
 
-- 
2.39.2



