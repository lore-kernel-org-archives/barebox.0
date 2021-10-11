Delivery-date: Mon, 11 Oct 2021 16:24:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZwDs-00067f-O9
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 16:24:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZwDr-00079K-I8
	for lore@pengutronix.de; Mon, 11 Oct 2021 16:24:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pFSl4+baiDwd+NqDl9bXtY0wek9MSbvU/vL+JYfqy+c=; b=4Ybd2owp/FDlzG
	5PCpZyBmLzbN7/BtMgHoJu30yPneQCgY/s6COkRlU5uI8kJfTKuIecmhmuNhDAei4/RlL2CDude54
	aZzo4+DNeyyDbZK2aQu/szyPzRTi0IbwqgdunDPjejEl3RklfQukiykDd/r6foubQ1wn6tFPHwebQ
	Pev8hImty5kTxnNvYyGpqowOSoXrieMUcRAPPiUEncsy/92h6leEhdV11uwYcOMjOfrlT315f56je
	cQ/BHHyorIZp034zOE3VP57w5FM5Xlvj2y6ZWwCUFtOted0cQF/C4sH0ejv5FQMHMHjSNdP+q2CWN
	9y6RxPLLl84IHnLKveBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZwCB-009kyQ-E5; Mon, 11 Oct 2021 14:22:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZwC6-009kx5-Ob
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 14:22:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mZwC3-00072r-IL; Mon, 11 Oct 2021 16:22:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mZwC3-0006jh-9t; Mon, 11 Oct 2021 16:22:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Oct 2021 16:22:15 +0200
Message-Id: <20211011142215.25846-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_072222_818127_40A10BD5 
X-CRM114-Status: GOOD (  10.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Rockchip: fix path to rkbin firmware in documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like in the two lines following it, the rk3568_bl31_v1.24.elf
firmware's top level directory is bin/.

Checked against 7d631e0d5b2d ("rk3568: bl31: update version to v1.24").

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/rockchip.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index 9c1b8ef200dd..d52d979cbf2a 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -59,7 +59,7 @@ The build process needs three binary files which have to be copied from the
 `rkbin https://github.com/rockchip-linux/rkbin` repository to the barebox source tree:
 
 .. code-block:: sh
-  cp $RKBIN/rk35/rk3568_bl31_v1.24.elf firmware/rk3568-bl31.bin
+  cp $RKBIN/bin/rk35/rk3568_bl31_v1.24.elf firmware/rk3568-bl31.bin
   cp $RKBIN/bin/rk35/rk3568_bl32_v1.05.bin firmware/rk3568-op-tee.bin
   cp $RKBIN/bin/rk35/rk3568_ddr_1560MHz_v1.08.bin arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

