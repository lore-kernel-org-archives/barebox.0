Delivery-date: Thu, 14 Jul 2022 09:29:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtI4-007Jby-B4
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtI0-0002T9-6u
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nWK58/vxrHb8/Z7XbjH1iYkK864psg+nqqHzXQtSgNg=; b=JKaonIws4/tazxj+0APGv/LH72
	ocA3loAoG9sNTVNGUgmCW2ZCf4Uis0Rdu+MluYOzt1MZ7sLqI546DrjZHphckY7/XaP09dJLI3eAT
	tkpPLR1qefuafpPEyIXxiEqNffYqOHNK6lUAfyl9Ms8xg1TeBi6cDK9A5wSrzdmOM2s8rECvTY3ny
	VRD5Qgc2Ul1elsVPDztwEmkAzjAodBXUhkJsRw2xnk+vD3r6LLhUZDXiDqgyZvHmw+sAKiJ+e4uDf
	w0qTcAEZsEGqhFytmnMcFadp73le+2+BeWyAYliux68OKjbk2QEP/y4Ww9JNNyXdmG9+puA6JaTPv
	6WHbE6cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtGa-00BoyE-5L; Thu, 14 Jul 2022 07:28:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFy-00BoVp-4e
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFu-0001hq-SA; Thu, 14 Jul 2022 09:27:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFu-000rqv-52; Thu, 14 Jul 2022 09:27:26 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1W4-E9; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:20 +0200
Message-Id: <20220714072722.2863571-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_407482_F27CCF98 
X-CRM114-Status: GOOD (  12.78  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/12] imx-usb-loader: simplify read_memory()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In read_memory() we transfer at maximum 64 bytes, so the returned number
of actually sent bytes will never be greater than 64 and we can drop the
corresponding checks. Then it is checked if there are really 64 bytes
transferred. We don't do this elsewhere, so drop it here as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index f4f13d5cc7..44ad7e3f0f 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -619,17 +619,10 @@ static int read_memory(unsigned addr, void *dest, unsigned cnt)
 					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3], cnt, rem);
 			break;
 		}
-		if ((last_trans > rem) || (last_trans > 64)) {
-			if ((last_trans == 64) && (rem < 64)) {
-				/* Last transfer is expected to be too large for HID */
-			} else {
-				printf("err: %02x %02x %02x %02x cnt=%u rem=%d last_trans=%i\n",
-						tmp[0], tmp[1], tmp[2], tmp[3], cnt, rem, last_trans);
-			}
+
+		if (last_trans > rem)
 			last_trans = rem;
-			if (last_trans > 64)
-				last_trans = 64;
-		}
+
 		memcpy(dest, tmp, last_trans);
 		dest += last_trans;
 		rem -= last_trans;
-- 
2.30.2



