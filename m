Delivery-date: Thu, 07 Nov 2024 09:46:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAC-005rBR-17
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 09:46:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAD-0007AZ-0s
	for lore@pengutronix.de; Thu, 07 Nov 2024 09:46:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5elyb39cpu0zY2pFN4izO05/Umlgg+CO7c8o86TZu6c=; b=JWXHMqP5hCRcQt4rC3yaFCxsMv
	UeH4acQNORNFgmllT6eEVciO0VZkq9ATkqKdOQ5UOjQ+uJTiAJks0BgvZfRQxxRtHBBntCFI/n2ch
	ALn5aOdOWwi8CT5Kgd69ajNe9hioS++gk+GjupFDxL21wUDIxbXSXZhnIA02uB5qnoSxFBXITepET
	P9hGaVFF3QplemPyCDcv7Hzi74LavxpX9+R9X6UEEDKaYjX9cF5tGC5jcjTQaoIdbZLKSbH732Z0X
	TjlNQaRCWACu8jJI7YZUw74e3J1JH30eMIcBECf+fn9kWSlvPCURxolEkWzs0jDgyUDLW0UllhEpv
	9W+//B/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yA2-00000006AyG-48HO;
	Thu, 07 Nov 2024 08:46:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8wrg-00000005yX9-0KN9
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 07:23:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-0007zm-Gy; Thu, 07 Nov 2024 08:23:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-002QOx-0v;
	Thu, 07 Nov 2024 08:23:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-006rNQ-0j;
	Thu, 07 Nov 2024 08:23:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 Nov 2024 08:23:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241107-fs-tftp-v1-3-39d7e1cff418@pengutronix.de>
References: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
In-Reply-To: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730964212; l=627;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0e/dXB6248eV6nxZ+Qylr+3Xu79XfUJNycTKgNSsFzo=;
 b=OOGAazabmOoq6duRCTLpgc+EMcBi3LpWh9+/DZ+wLe2ix0kE7uYdbDz59fIhjG/PdaJbSB7D4
 ElrKOj6qzH/A0iiEN5M7WObwPlaAcVwb+HEoCpPILCYetY08rwvh0vw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_232336_158950_1847902D 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] fs: kill invalid dentries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When a dentry becomes invalid we can safely kill it and free the
associated memory. This fixes a memory leakage in the tftp and nfs
code as these regularly declare a dentry as invalid.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/fs.c b/fs/fs.c
index f24962d2a6..a9d2cc7088 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1577,6 +1577,7 @@ static struct dentry *lookup_dcache(const struct qstr *name,
 			if (!error)
 				d_invalidate(dentry);
 			dput(dentry);
+			dentry_kill(dentry);
 			return ERR_PTR(error);
 		}
 	}

-- 
2.39.5



