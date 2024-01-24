Delivery-date: Wed, 24 Jan 2024 14:49:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSdcp-00GGTC-0e
	for lore@lore.pengutronix.de;
	Wed, 24 Jan 2024 14:49:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSdcp-0006Tg-Ui
	for lore@pengutronix.de; Wed, 24 Jan 2024 14:49:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XTXtLwJJEbNkRL/rQF15uTKF4xB3psG+z11Vqab09P0=; b=LOiBeLiTcD2+ZeM8NU/fLEsytN
	rC2Oevb9ILiPJP2wwg6mwq4oKGrT62/o+ZMPerdSz+d2sAvsNVKOezMvciX65LetuoWqlx5gKO1Ui
	3sb9CMR+ayzGFj6ZMg98LvVfg32l4eSeEafP+dVDiJq0j3NB5/ZkJSpKm/KZ+NI+hTDStr3fnKTWg
	HTZTECjmj/QnInPexE8rJY5fO03oK2PPyVNxJ0JswkC6N31mN76ip9fEpd30HsqnXKHMiQty4LMYN
	mbAEnm6he56z2ngXDiMU1RLa/z/zSjNpShAoBpAa//bepWT/pZ/+QQ9p5+xhUMdyacigMtJZpIP/q
	ByhBihOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdbd-003WMe-0X;
	Wed, 24 Jan 2024 13:47:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdbY-003WJy-0i
	for barebox@lists.infradead.org;
	Wed, 24 Jan 2024 13:47:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rSdbS-0006By-JI
	for barebox@lists.infradead.org; Wed, 24 Jan 2024 14:47:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 24 Jan 2024 14:47:38 +0100
Message-Id: <20240124134738.133782-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240124134738.133782-1-m.felsch@pengutronix.de>
References: <20240124134738.133782-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_054748_263740_0CA18876 
X-CRM114-Status: UNSURE (   7.46  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] uncompress: add detected file type debug print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This can be useful for developers.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 lib/uncompress.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/uncompress.c b/lib/uncompress.c
index e7a3ffde823e..48e8173501c6 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -97,6 +97,8 @@ int uncompress(unsigned char *inbuf, int len,
 		ft = file_detect_type(uncompress_buf, 32);
 	}
 
+	pr_debug("Filetype detected: %s\n", file_type_to_string(ft));
+
 	switch (ft) {
 #ifdef CONFIG_BZLIB
 	case filetype_bzip2:
-- 
2.39.2



