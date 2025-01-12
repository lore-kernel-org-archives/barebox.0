Delivery-date: Sun, 12 Jan 2025 09:22:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtFG-0007T1-37
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:22:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtFG-0006Pp-Ei
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:22:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FuuU+BH7znN7gSq9kZ3wCu/6X+i4cliUZ/FRQ9PYIpE=; b=gB2h+tq/BNcBpe06GmTd4WK4ih
	HtyjlUiHfTiQo7myRMLnYR5Zsw77xJutBDYliKR7nwFnCDfb+KECEFs/57lvZi+bMNr/T2iJn904d
	I9ORy8NesLM93nc3UNjDHvVCwJQLddb3WirPisorup5Nh6Aw+6cPXFE9lzwuTPRAqBbCUS3aL0fZv
	QAYgPsyg3x2oe0KB6icoUIrpzoXo3TTZxPd0OLUWOQb27xcG80ppbw4qf2IEhLh9SbBSoSHi33Lpj
	kK3xC8jZ3Wy4AR18zi4BpnAfi0UqRqYsyGX6oYxpogxPdFv7hBtzBH7/44+HVlxCZ+0K2o47HCDzx
	IElyXU8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtEe-00000002JQc-1p1n;
	Sun, 12 Jan 2025 08:22:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtDi-00000002JL6-32JX
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:21:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtDe-0006Fo-Ot; Sun, 12 Jan 2025 09:21:14 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtDe-0003I4-0E;
	Sun, 12 Jan 2025 09:21:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtDf-001Jah-0h;
	Sun, 12 Jan 2025 09:21:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:21:13 +0100
Message-Id: <20250112082113.313620-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112082113.313620-1-a.fatoum@pengutronix.de>
References: <20250112082113.313620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_002118_762108_43A41136 
X-CRM114-Status: GOOD (  11.16  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] fixup! fs: replace FILE.size by f_inode.i_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This was missed the first time, because it was .size instead of ->size.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/smhfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/smhfs.c b/fs/smhfs.c
index b32f7422ee48..ed98cd247bd8 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -116,7 +116,7 @@ static int smhfs_stat(struct device __always_unused *dev,
 
 	if (smhfs_open(NULL, &file, filename) == 0) {
 		s->st_mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
-		s->st_size = file.size;
+		s->st_size = file.f_size;
 	}
 	smhfs_close(NULL, &file);
 
-- 
2.39.5



