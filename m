Delivery-date: Fri, 19 May 2023 12:02:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwwd-006Xpq-O1
	for lore@lore.pengutronix.de; Fri, 19 May 2023 12:02:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwwb-0004NC-DF
	for lore@pengutronix.de; Fri, 19 May 2023 12:02:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8qEN/A1XNo+AOp3b456D7YVrZRKvTrTftM/6bNWwg4Y=; b=d1DINFiB7o2gyhteyJwKtkru2v
	37M5bqPx5nz+JECmRi4qihkOG722K4EUlh/iamFqSQ0v2m/Des0gxnBGZyXvb0E6XpKX0NOLSxE8C
	QPlrC2BGB93wrDFunP7V1Khh+ozhm6JOS+SXgvR4rN2qEYffxml9Uy89FpQIGj+vvC9JNRZa9LjVL
	46RaqmQq0e1fUISC6+f3aZzC6bTbqjs+zNWPac/0x7JyIg0qzWuCbn8Tdup6c7eV1qGEMUkeBQ0Bu
	wv6ot5Y/lNtVEXTYzmiOls1e+31rF/FTrpfe8POjOk8avI/Z1o4V/Pr//VGbz6Gpp2NA1NbugefBr
	dYxwGfHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvY-00Fp2Z-2z;
	Fri, 19 May 2023 10:01:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvW-00Fp15-14
	for barebox@bombadil.infradead.org;
	Fri, 19 May 2023 10:01:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8qEN/A1XNo+AOp3b456D7YVrZRKvTrTftM/6bNWwg4Y=; b=oOBzw/WhlpRAXZ3VQGo3mi8Vs3
	F+vQDVrw2zkGSLIquPspoGgJGmA9/EgCIPKihibU/agZz+x1iXYz4q592o7WxzIBgnzZGT87eI580
	YaVxepGj6+MsjF8JI5cd6zeXlg6WzU+MMiKxsg1b6MAFpW2g59iY5rhrZVsEkx05pDcVaBq9RWkea
	5OzfTs5TWEE8W6J9cRMeIdtNzANdWZUZpsJDqs1NpFHzmM2W3m4ljusI7XE3zDm6WWTcCrJf/6XzS
	NSMCQnWLryjBijtqtycjLRkjgVW1+mZCQ+70PeWGqfKMgUnQ7UdZPRhK/klPqaC4wOFoJ2Xw/nlaF
	u5Po9oeQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvT-00FqzW-1d
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 10:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvL-0003qZ-1p; Fri, 19 May 2023 12:01:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvK-001HU5-CV; Fri, 19 May 2023 12:01:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvJ-009vVV-8o; Fri, 19 May 2023 12:01:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 May 2023 12:01:18 +0200
Message-Id: <20230519100120.2365970-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
References: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_110131_655064_69B0C3CB 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 4/6] commands: of_dump: remove duplicate error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_read_file will already print to log on failures, so we need not print
a second message in of_dump on error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 commands/of_dump.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/commands/of_dump.c b/commands/of_dump.c
index 87a0b1ba535c..f8e7280fd9f2 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -72,11 +72,8 @@ static int do_of_dump(int argc, char *argv[])
 
 	if (dtbfile) {
 		root = of_read_file(dtbfile);
-		if (IS_ERR(root)) {
-			printf("Cannot open %s: %pe\n", dtbfile, root);
-			ret = PTR_ERR(root);
-			goto out;
-		}
+		if (IS_ERR(root))
+			return PTR_ERR(root);
 
 		of_free = root;
 	} else {
-- 
2.39.2



