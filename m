Delivery-date: Mon, 03 Jul 2023 20:56:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGOj9-00Du2r-Rc
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 20:56:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGOj7-0001nV-Gc
	for lore@pengutronix.de; Mon, 03 Jul 2023 20:56:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2tY0T4pYJU+1ztSik1lShkNtGFIj1JRYjskYuJ4Xv5I=; b=U1nAmmG7BK8BHo6wuZBAB22OY9
	f/b1PDZ5U3D1JBh3gYt7qWv4ynBj3ZG45RYmk+CQqfrBE4ljZj49FEk12F+p4G83jJc2mb3ErJjwx
	2H2aZhA4sPQDrwlXGdHU36d3pGwq37b23HyQT4xknfHA7WliGYT14wMXHBuBubFpK8tn1vcoGD6t+
	7+XW6m9JDT4h+Npi7ZBlsLbo46g/HlJMaoJgpJ1l5IPkiKHBVAjxZVBAmCnvJJQN9jj4p7WS992Yn
	XJwfwmTmPoTz3I84Urto9LEBA0nBwLNt6Kt+jCcotz6FIzHKCHJH0+I5MwVcvPmVlRLn5aVo63Zpl
	GMSeplbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGOho-00BFJw-01;
	Mon, 03 Jul 2023 18:55:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGOhl-00BFJW-1M
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 18:55:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qGOhh-0001RO-VK; Mon, 03 Jul 2023 20:55:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qGOhh-00BrfJ-B0; Mon, 03 Jul 2023 20:55:17 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qGOhg-004oaN-2y;
	Mon, 03 Jul 2023 20:55:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jul 2023 20:55:15 +0200
Message-Id: <20230703185515.1146362-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_115521_481127_8D163F91 
X-CRM114-Status: GOOD (  11.93  )
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
Subject: [PATCH v2] firmware: use portable newline escape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We want to print `\n' literally into the *.gen.S file, so gas turns it
into a literal new line character. Depending on shell, the current
scheme might not work:

  $ dash -c echo\ '\\\\n'
  \n
  $ bash -c echo\ '\\\\n'
  \\n

Fix this by using printf instead. This fixes a cosmetic issue of non-escaped
`\n' making it into the missing section when building without bash, e.g. on
NixOS.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - use printf instead of echo with single quotes as the later behaves
    differently between bash and dash. Edited commit message
    appropriately.
---
 firmware/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index d7f35853a404..5853950dfe4e 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -62,7 +62,7 @@ filechk_fwbin = { \
 	echo "\#ifdef __PBL__"					;\
 	echo "    .section .missing_fw,\"a\""			;\
 	echo "_fwname_$(FWSTR):"				;\
-	echo ".ascii \"firmware/$(FWNAME)\\\\n\""		;\
+	printf '.ascii "%s"\n' 'firmware/$(FWNAME)\n'		;\
 	echo "\#endif" 						;\
 }
 
-- 
2.39.2



