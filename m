Delivery-date: Wed, 31 May 2023 15:24:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Lou-004I6S-Gs
	for lore@lore.pengutronix.de; Wed, 31 May 2023 15:24:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Lor-0002ct-JF
	for lore@pengutronix.de; Wed, 31 May 2023 15:24:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lj50mQ/t2LhYurVZQ0nHhjoaO8lMifkcw/N13TIaIxc=; b=kkmqdsI79OJo6zJa/82Tn5Xexf
	5s9VNqSKoww2rLkB6x8Qg9T8Nbh12qKUh4INM1aGjxY9zbBk04qfoujkGC/Qz5G2x4MlMvF0bgGrO
	25HUDVN91L1sthMuKMcSaFQLARX0J7aGtzC4cCSxyx0knKRYJx+ToFDlalvsq7XE13MLMk6P8yGwD
	iFreH7cDoo75p0qVWG4nHwMWPHsH01jCnTjZzhEvmwvcK20y/Tbs61cgkfPnMuI9Xrvhyq+oejZns
	LxhW8ha3y33QaOoocYfAUXBUUwoMEpv3A41AoO4idKQpiEnCKO+xVX41jxeNmCWBONsZIG5PqEaYA
	7A7IKLCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Lni-00HX9G-0b;
	Wed, 31 May 2023 13:23:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Lne-00HX8S-2a
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 13:23:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4Lnb-0002TW-RF; Wed, 31 May 2023 15:23:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4Lnb-0047a4-60; Wed, 31 May 2023 15:23:35 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4Lna-0091uI-Ca; Wed, 31 May 2023 15:23:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 15:23:30 +0200
Message-Id: <20230531132331.2152268-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_062338_834215_CA8F8B50 
X-CRM114-Status: UNSURE (   9.83  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] commands: stat: print symlink destination when called without -L
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This aligns behavior with usual implementations of stat.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 368458cc54f8..311571ba3088 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -130,8 +130,6 @@ void stat_print(const char *filename, const struct stat *st)
 		case S_IFREG:    type = "regular file"; break;
 	}
 
-	printf("  File: %s\n", filename);
-
 	if (st->st_mode & S_IFCHR) {
 		char *path;
 
@@ -147,6 +145,21 @@ void stat_print(const char *filename, const struct stat *st)
 		}
 	}
 
+	printf("  File: %s", filename);
+
+	if (S_ISLNK(st->st_mode)) {
+		char realname[PATH_MAX] = {};
+		int ret;
+
+		ret = readlink(filename, realname, PATH_MAX - 1);
+		if (ret)
+			printf(" -> <readlink error %pe>", ERR_PTR(ret));
+		else
+			printf(" -> %s", realname);
+	}
+
+	printf("\n");
+
 	printf("  Size: %-20llu", st->st_size);
 	if (bdev)
 		printf("Blocks: %llu\tIO Block: %u\t",
-- 
2.39.2



