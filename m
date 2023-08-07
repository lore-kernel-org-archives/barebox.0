Delivery-date: Mon, 07 Aug 2023 09:21:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSuY1-00Ak2E-Pd
	for lore@lore.pengutronix.de; Mon, 07 Aug 2023 09:21:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSuY0-0000fq-0r
	for lore@pengutronix.de; Mon, 07 Aug 2023 09:21:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V3GYdRQDXjtXVnWwPtHEA4qjfF/Pl9O7d02yrlu+5JM=; b=jHgH4JMFq4pCU7xWnTfPg6jVH7
	TviVa3Odir+MKRTnK0z5+71s5d07fQjWSXX8OItr1crKHHZZl2Lh2dK/TTVSadZ6WIupjLYbqKQWB
	L7TDdXIFg9ZlpltvBdQBYzH6pp8o13cFpLi7BNSCB5KNiTFvi2CO5aMiYsjifPu8O5nRipsfWw3Rj
	Th7wdvyfb/PTZY6ePJk/cbwv4Z0pC/pCUAU3QzHGpItHSFLYsdKan3xv+ytyAZ/iEth/KFnGIsFS4
	wwSoI7EZXA5YSGNqQSKBxr3b7zifc9FeYuXCZOMOlg2d2BHF1CiJSDo7e3eTbaTBe71CfiByIcC5A
	kS9RdFOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSuWq-00GLxI-0m;
	Mon, 07 Aug 2023 07:19:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSuWk-00GLwD-2s
	for barebox@lists.infradead.org;
	Mon, 07 Aug 2023 07:19:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qSuWj-0000OR-Jk; Mon, 07 Aug 2023 09:19:41 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qSuWi-001h1x-Vc; Mon, 07 Aug 2023 09:19:40 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qSuWi-00G4NI-9H; Mon, 07 Aug 2023 09:19:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Aug 2023 09:19:39 +0200
Message-Id: <20230807071939.3830023-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_001946_087615_D2D0DBFA 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] scripts: fix pkg-config use for mksimage hosttool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mxsimage needs openssl but doesn't set the cflags accordingly.
This is no problem most of the time as `pkg-config --cflags openssl`
is often empty. Sometimes it's not, how the last patch revealed, so
set HOSTCFLAGS_mxsimage.o correctly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/Makefile b/scripts/Makefile
index 0ad166af9d..749990a527 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -31,6 +31,7 @@ hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
 HOSTCFLAGS_rkimage.o = `pkg-config --cflags openssl`
 HOSTLDLIBS_rkimage = `pkg-config --libs openssl`
 KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
+HOSTCFLAGS_mxsimage.o = `pkg-config --cflags openssl`
 HOSTLDLIBS_mxsimage  = `pkg-config --libs openssl`
 HOSTCFLAGS_omap3-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLDLIBS_omap3-usb-loader  = `pkg-config --libs libusb-1.0`
-- 
2.39.2



