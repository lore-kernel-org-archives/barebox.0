Delivery-date: Fri, 17 Apr 2026 10:44:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeoh-00D7vB-03
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 10:44:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeog-00046L-8N
	for lore@pengutronix.de; Fri, 17 Apr 2026 10:44:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zVIL6o0g/IvxkHDf197YvTkU5B/nToZ7grQF+vffv6E=; b=RRKGqnn3Trcl5K
	Mp0sPl/L/cQBXup7+IkzaCeeS+2LbpDbtxkqI8CwriPD9TOqk8q2ddY8O2ZCXLqnTzk9xqY25SCA+
	uri4lbkEWi8gztACSwxhjJKKxmsAzZDx3GEhsVbjTU0vJCc/mLmt1wzAWF9Aus8bWMYpLcFgnLyaR
	gzK1WKzh1d6PR2gTXHoeN7euDF9fnmamsbzbgkJHrTitWVsmUlbI/raUKJkVHbCoWfvgWl8SQqVGs
	WMVMtW9j6duCLmKhjQ7XHC9lIkSWOGNRoze3BXzmrvg0F+pVNOF3383dn1nuTlLJgkPkj7LBb7+uG
	J7GJXv8O2VaypkflUSWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeoH-00000003hQW-1S3f;
	Fri, 17 Apr 2026 08:44:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeoF-00000003hQ6-15e9
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 08:44:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeoD-0003xy-Iz; Fri, 17 Apr 2026 10:44:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeoD-005os3-0p;
	Fri, 17 Apr 2026 10:44:17 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeoD-00000000ZfI-0cr9;
	Fri, 17 Apr 2026 10:44:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 17 Apr 2026 10:44:14 +0200
Message-ID: <20260417084414.137087-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_014419_298361_A5AEE988 
X-CRM114-Status: UNSURE (   9.30  )
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
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
Subject: [PATCH] fs: avoid setting root or rootopts to literal string "<NULL>"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

linux.bootargs.root and linux.bootards.rootopts might be unspecified in
which case dev_get_param() returns a literal "<NULL>" string. Avoid
setting root and rootopts to that string.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 6a73a5baa2..0c53881a92 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1251,8 +1251,14 @@ void fsdev_get_linux_root_options(struct fs_device *fsdev,
 				  const char **root, const char **rootopts)
 {
 	if (fsdev) {
-		*root = dev_get_param(&fsdev->dev, "linux.bootargs.root");
-		*rootopts = dev_get_param(&fsdev->dev, "linux.bootargs.rootopts");
+		const char *s;
+
+		s = dev_get_param(&fsdev->dev, "linux.bootargs.root");
+		if (s)
+			*root = s;
+		s = dev_get_param(&fsdev->dev, "linux.bootargs.rootopts");
+		if (s)
+			*rootopts = s;
 	}
 }
 
-- 
2.47.3



