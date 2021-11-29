Delivery-date: Mon, 29 Nov 2021 12:11:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mreZa-0004V2-3M
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 12:11:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mreZZ-00049A-9l
	for lore@pengutronix.de; Mon, 29 Nov 2021 12:11:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpAtd245H8W0PaktT81LRStnjjW2i8zYTQwDTO93nV0=; b=b+KiLWQQ05SBfQ
	v/Qj4cU2uc+OGiuqjJbbFc65ZfknqsuTP6rtvif61GgTxx6aAwI5uPG8vKD2TP+mY/AmC9ZQxUBYk
	7Yph+NWMUBld6k1YosduafqcwLjg4IrEs9waYWD/DUHTusQdSYSgNTL13lRcxnyIs2eCqNpbBbgZw
	f5fhyhsToKIUfEoLPdP0iPDEme8QXpWPkUTblk2c8olr6WzGa3i/9r42xXnjAPfoCtozOC+XcIefz
	pad861/ge+PuGdC3x2uyY1sFXiPoqem+NV1JpPukyyjmL6E9AO4dXh8NA6c3fpH0+YEaKT61mFrgk
	MOK+sCGCZ2P5wQbw5BvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mreYN-000VcX-Kx; Mon, 29 Nov 2021 11:10:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mreYI-000Vbm-VK
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 11:10:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mreYF-0003m8-V1; Mon, 29 Nov 2021 12:10:27 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mreYF-00ClUw-G8; Mon, 29 Nov 2021 12:10:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 29 Nov 2021 12:10:26 +0100
Message-Id: <20211129111026.3041991-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211129105244.3032203-1-o.rempel@pengutronix.de>
References: <20211129105244.3032203-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_031031_028151_17DB7383 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! nvmem: bsec.c: add optional permanent write support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With Oleksij's patches, this no longer holds true. MAC is read from OTP
and a device parameter now controls whether write goes to OTP or shadow
RAM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 1bb477a9972f..7b1ebe1d689d 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -63,8 +63,7 @@ config STM32_BSEC
 	depends on ARCH_STM32MP
 	depends on OFDEVICE
 	help
-	  This adds support for the STM32 OTP controller. Reads and writes
-	  to will go to the shadow RAM, not the OTP fuses themselvers.
+	  This adds support for the STM32 OTP controller.
 
 config STM32_BSEC_WRITE
 	bool
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

