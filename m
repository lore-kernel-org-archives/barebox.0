Delivery-date: Wed, 14 Jan 2026 11:13:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfxsj-001COd-0a
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 11:13:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfxsi-0000sd-7a
	for lore@pengutronix.de; Wed, 14 Jan 2026 11:13:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=saclNMAxXWF9reMri+4e1R09w1cU13RXOlai20nRpI8=; b=Hs7mJE0efiICHi6MRioxVaPUc8
	2wcislz8WxtrP/cYuOiCx56t8wVIbXwkxrc1Yb8Qg3xhbYX4kCeWinu/cdD0iEKc/QsAWN5DF/QH5
	PZBKHW/sjd2hjx/cC/VDcnAFslntg/UqEUlKTPJpISPZZuV8DSXq6XmN4QjinN+YIJgJLOFETre7F
	H8IYN5YwjXMLPsOuWMUVcHwdkowbj7rAWBqnGqBr2sbt4fUkI4ZGkuHmE10pGrxxp3WoBqraMaJ11
	oHaFma3yX+ZOeegGpL77427sd4H8AzmJTlGFULHMXQYVL3kMZqh+6AgW2ettAoaMrUOhbXsOr3Mpr
	RKfa3cgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxsE-00000008jAH-2hrr;
	Wed, 14 Jan 2026 10:13:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxsB-00000008j8w-0PXc
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 10:13:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxs9-0000fz-Ch; Wed, 14 Jan 2026 11:13:05 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxs9-000ZWx-2f;
	Wed, 14 Jan 2026 11:13:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxs9-00000000TYG-3989;
	Wed, 14 Jan 2026 11:13:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jan 2026 11:13:02 +0100
Message-ID: <20260114101304.113538-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260114101304.113538-1-a.fatoum@pengutronix.de>
References: <20260114101304.113538-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_021307_132912_E5A2D085 
X-CRM114-Status: GOOD (  11.03  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] lib: cmdlinepart: support RO both in lower and upper case
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The help text of the addpart command lists RO as being uppercase,
but the code expects it to be lower-case.

Resolve this by supporting either case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/cmdlinepart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
index 3e8c415c7ea6..16fa4605d822 100644
--- a/lib/cmdlinepart.c
+++ b/lib/cmdlinepart.c
@@ -74,7 +74,7 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 
 	partstr = end;
 
-	if (*partstr == 'r' && *(partstr + 1) == 'o') {
+	if (!strncasecmp(partstr, "ro", 2)) {
 		flags |= DEVFS_PARTITION_READONLY;
 		end = (char *)(partstr + 2);
 	}
-- 
2.47.3



