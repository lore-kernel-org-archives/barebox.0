Delivery-date: Wed, 18 Aug 2021 14:22:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKa8-0005YP-FE
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 14:22:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKa1-0004vK-RL
	for lore@pengutronix.de; Wed, 18 Aug 2021 14:22:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDUR3rHDHjN0Mad9ZpUQgi1phaCkU4Ug+SCWYY17wio=; b=3D8cGk4hk3Sscj
	dGyvdAoiXl6HU4lcXCymoDzwue/et7hNdmsUzbNKItQhKPZnJ7rPMy/CjF1yHCYIXNeTbwK6RG676
	k9/EnsymitFKKZBaQRiTVDuRU0uc7xvleqEG5a2iWRNHO9d4+QX4SrS8tlnAEQFfm1guZ8Asuxwlu
	jrzA8VacNxm5YsOoSKQBsyxC8QR4rFWzxifeXqEXtfcGgwMRAHMFuVFJ3Gcbj3pdDVDToyHdq0aZQ
	cVNBfdsHrMcQU3U0HimA4PQgaWSLsAa3tC+WsQxHFoS1ToWe/+MqiQ0k4gQdvdaACdzK3LZg5GK/D
	Z89V58gyZF1OKzy9W+kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKYC-005ThY-ME; Wed, 18 Aug 2021 12:20:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKXy-005Tbm-VM
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 12:19:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXs-0004Jl-LX; Wed, 18 Aug 2021 14:19:48 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXr-0006nj-HD; Wed, 18 Aug 2021 14:19:47 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 18 Aug 2021 14:19:40 +0200
Message-Id: <20210818121945.26089-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818121945.26089-1-o.rempel@pengutronix.de>
References: <20210818121945.26089-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_051955_115776_33D517B6 
X-CRM114-Status: GOOD (  12.88  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/6] ARM: boards: protonic-imx6: Run usb boot entry instead
 of bare device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Robin van der Gracht <robin@protonic.nl>

There is a usb boot script in the enviromnent. Bare device boots work well
with bootspec but we decided to not use that anymore.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 6eb31a4bc4..e7938ac0fd 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -340,7 +340,7 @@ static void prt_imx6_check_usb_boot(void *data)
 
 	second_word++;
 	if (strncmp(second_word, "usb", 3) == 0) {
-		bootsrc = usbdisk;
+		bootsrc = "usb";
 	} else if (strncmp(second_word, "recovery", 8) == 0) {
 		bootsrc = "recovery";
 	} else {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

