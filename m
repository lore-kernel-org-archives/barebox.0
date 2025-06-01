Delivery-date: Sun, 01 Jun 2025 23:00:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLpnc-002jTr-0E
	for lore@lore.pengutronix.de;
	Sun, 01 Jun 2025 23:00:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLpnb-0000qe-AC
	for lore@pengutronix.de; Sun, 01 Jun 2025 23:00:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pYBmX4LTUKbbVBt5XB715H87ducwKqDMJgmfC5VElpM=; b=KIcmMeKWBi6jUEXYSyKXMIGOot
	ddMdTtA9TDzPO9wYJa/q624fTEUd5vsJl/TJuy3KWAzaCZ/tYfS4AqSKeYzW08pSrsskqpwB+5quu
	lgAvzGzsuC0UKsIk8Kna+xfP+Lj1BkgiUkOdJn/pcANAYRvZmMDcBqPzADXvTAJ8JY+oJypauZv0V
	l03CSKAJXadK0F3hNvSu+7qDITFk8wQ5jlFPyH/XxsfeIYL3oRMIPpVPTpN1bOkjw0FvJi8LP4P6j
	yUtAzAK1NZ1oZsrVp7I5RUM1kjHAl2Az4grn4QpSfEn/G54ozwC9XVuE1QcjrN9Ffmxmo42gHFvdz
	2XHmVhbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpmu-00000005xMf-0ICW;
	Sun, 01 Jun 2025 21:00:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpmp-00000005xIq-3NyS
	for barebox@lists.infradead.org;
	Sun, 01 Jun 2025 21:00:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLpmo-0000FO-I5; Sun, 01 Jun 2025 23:00:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  1 Jun 2025 23:00:00 +0200
Message-Id: <20250601210002.562733-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250601210002.562733-1-a.fatoum@barebox.org>
References: <20250601210002.562733-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_140007_849382_2B9D1109 
X-CRM114-Status: UNSURE (   8.51  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] fbconsole: add support for aixterm bright colors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already support the global bold/bright modifier, but there are also
inherently bright color codes, apparently first added for AIX.

Teach barebox about them.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index cd1950a644cc..b399c044be94 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -516,6 +516,10 @@ static void fbc_parse_colors(struct fbc_priv *priv)
 		case 49:
 			priv->bgcolor = BLACK;
 			break;
+		case 90 ... 97:
+			priv->flags |= ANSI_FLAG_BRIGHT;
+			priv->color = code - 90;
+			break;
 		}
 
 		if (*str != ';')
-- 
2.39.5



