Delivery-date: Tue, 25 Mar 2025 17:04:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx6lq-0044iM-1y
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 17:04:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx6lp-0007DZ-GY
	for lore@pengutronix.de; Tue, 25 Mar 2025 17:04:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h461KiSan+p4I8jv5xA4UJMZMTsTno37N237Tk0xjo0=; b=chAtvfrLkPfo2MjhviTXa6NrBh
	bCmwyrldwc/GueKKHTUjEGNhcH5+TmMhYR8164v2wcIkayWRQUz2mmpO4XhwbCDsOdfTYm63rV8AI
	UbacoXZS92GIwB6WwLHhEB99kqT/AHfl46i4GVUzUXSNDTVuUCy0SKaebqCr0k8QGzRUYgtqaFm23
	xdphVOYdo6aRMEjYpTJR3DSnHie0bFpIf0cgbj4TcEKCmjlFUjOLSlfXD5dxZzefXv1jSKPW7iD+M
	zPTqx1i5n6Pw9HsTiRHV3mj4+7vrlbv7cBq2B0os1ByYw7HW0XyGOg03Ionl2XtZpMfSYjaOBmpj5
	5wQ4jxIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6lK-00000006QGw-3Drt;
	Tue, 25 Mar 2025 16:04:22 +0000
Received: from zdiv.net ([46.226.106.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6hN-00000006PZs-2Y71
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 16:00:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742918414;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=h461KiSan+p4I8jv5xA4UJMZMTsTno37N237Tk0xjo0=;
	b=VfI9XL5ayaVAZfGbN26HrPrekdd3+BQHbsEFkEnGESrfG96Ive/LgI15nrMQ4CGxk3OTkt
	CI00qI/55QTFuWTSGpACjBix4v6aw6MpXJ0BH/GvW3XKN40A3SspMksKrAufKByxdN+nXR
	S+Rp78BmEGj0kzcYaMxQyS4X7w4E7hYueBV46gMp5omkSWpguYmgzG9G8jkqf2fNfcS+An
	F/r6iI5v7BaSz4KZVI5engZSdxCtHBJ97gBORxfaXj3Slev1Sh/I42o4cK+jHO/DWYtkWW
	G1JJD5v6fHIHfYh3+9ANEGP6ECtfW9RzP5r0r931fcIsLD8Kafam1Yh1UGp55Q==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cc87:df5e:1bf7:9f4c])
	by zdiv.net (OpenSMTPD) with ESMTPSA id d607f3b6 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 25 Mar 2025 17:00:14 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue, 25 Mar 2025 17:00:08 +0100
Message-ID: <20250325160008.1076-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_090017_904247_DA0C4390 
X-CRM114-Status: UNSURE (   9.44  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC PATCH] fbconsole: add missing break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The cursor move CSI has nothing to do with the clear-screen CSI.
The existing fallthrough looks like a bug, add the missing break.

Fixes: 27f79c05ab ("video: implement framebuffer console")
Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---

 I am not 100% sure if this is a bug or not, it feels like it sould not
 fallthrough, an extra look would be nice.


 drivers/video/fbconsole.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 24592d00ed..7462e34778 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -576,6 +576,7 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 		priv->x = clamp(pos - 1, 0, (int) priv->cols - 1);
 
 		show_cursor(priv, priv->x, priv->y);
+		break;
 	case 'K':
 		pos = simple_strtoul(priv->csi, &end, 10);
 		video_invertchar(priv, priv->x, priv->y);
-- 
2.48.1



