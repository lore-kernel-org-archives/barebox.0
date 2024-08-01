Delivery-date: Thu, 01 Aug 2024 08:03:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOuj-0052KY-0i
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 08:03:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOuh-0001o4-JX
	for lore@pengutronix.de; Thu, 01 Aug 2024 08:03:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WXaIGGl5WHu1AHw/eRHGTAYFbKt/xVgd5sQDYCicTCQ=; b=4rXnQx7cuqeZJWTP/esnnxS+JK
	NTr4JirYRdZfaZuDDhqunq5rzkDcMjxaqnAeMO2/eS48X5t+l4ZrtxogKmeASJgyHaJGeC3E932p/
	yPuvdiTguuLG93xV4hd+fLATQ3K73Z56rKEDM67t9qCJgfSeNdH6qlcK77AFCDGNJydOffz955d8m
	YqDyiBL1w1lg57DwIeGokvr+jw9mVsBkfg3Igh+Ps1YraFZtEhNlp+3p50WZ06Z3+3F7sIBWd5aTo
	KMEUyuFmElB2+iLYcR3dsbIqinWMEfHhiXTFpzjt+A29NPkwNfwCC/bj4hJ9Rr53WCs4/l9MhnTL4
	bUKZP1jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOuC-00000003qYh-252h;
	Thu, 01 Aug 2024 06:03:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu8-00000003qUm-0UhB
	for barebox@bombadil.infradead.org;
	Thu, 01 Aug 2024 06:03:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WXaIGGl5WHu1AHw/eRHGTAYFbKt/xVgd5sQDYCicTCQ=; b=L5Kb5PmsOvANfn5iGSwX2OSILz
	OVWrntb5N5CTGVvyr4+toRBeyUk8zG8vBK6CUpLYK37yoK1lskoAW9VF8uD9vC2ZciD3Hs0UWBbRX
	QSATgGiXMteL5ptqqG5zkuEFCtRH7xyGdOQN/iSyj49tizN+zgdoc1DyTW/MgAQlXrI/+n2iu+XF3
	svChs25JkESn7g0UIEs4NnQ+qOUsoBb1AXl8MCOx7YgOdu1LqVtY3o/B52qlgbzyo+T6mv25fiV4u
	quYzds2ivajuNRcQI0reOmtlu7JWVZnYvy2FE6qcUiowhd/isIAycjiohpV+yKZuLmKWjoSsgB+9w
	6m84IE8A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu3-00000005NP7-0vVy
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 06:03:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOu0-0001J6-3b; Thu, 01 Aug 2024 08:03:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOtz-003hXG-N9; Thu, 01 Aug 2024 08:03:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-00DNum-2x;
	Thu, 01 Aug 2024 07:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:28 +0200
Message-Id: <20240801055737.3190132-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_070307_631121_73FD1E86 
X-CRM114-Status: GOOD (  11.47  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/19] rsatoc: check error value of gen_key()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

exit with an error in case gen_key() fails, otherwise errors go through
unnoticed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rsatoc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index c7bc4ba843..27f0afe61f 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -471,7 +471,7 @@ static int gen_key(const char *keyname, const char *path)
 int main(int argc, char *argv[])
 {
 	char *path, *keyname;
-	int i, opt;
+	int i, opt, ret;
 	char *outfile = NULL;
 
 	outfilep = stdout;
@@ -542,7 +542,9 @@ int main(int argc, char *argv[])
 			}
 		}
 
-		gen_key(keyname, path);
+		ret = gen_key(keyname, path);
+		if (ret)
+			exit(1);
 	}
 
 	if (dts) {
-- 
2.39.2



