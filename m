Delivery-date: Mon, 10 Jun 2024 14:39:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGeJF-003gnM-1G
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 14:39:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGeJE-0000hl-RG
	for lore@pengutronix.de; Mon, 10 Jun 2024 14:39:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1hAACphMqpQLyHBPjVKjfxBRFl3TIsXIRmUKDyKf/wY=; b=V6dNkyG5HMNgQd
	RndqhSeQfx2xcT35fgtzZpOa2u91cpFoILObQecFawXjXKESS0p9xV4EhUzYftxKSfLHgUk3VXySL
	NEGj/DblpLISuVPsli0Nncdpvz/u1fKvBK96GO7GMQciJ4Se5pv83RzVUkRECj8sv/7RrOSSKbXjQ
	H9LB5+Knw1LKw4iOslsxpI+sexzbTZnet6Hl3C1Dwt8lnd6oB/7xitUMgIviuNduNglrYJvxy9EpP
	MPWFGO404fY3MkGBp3tL8AeOfDHe6VokESyNK8hMsF6p8pjfKMjJTDomNMJwSdBoBh9m8Z5lEXCVv
	XtqQYrcKWCBfScUEhW9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeIe-000000051y8-2a1W;
	Mon, 10 Jun 2024 12:39:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeIb-000000051vm-1jsB
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 12:38:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGeIa-0000aJ-6f; Mon, 10 Jun 2024 14:38:56 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGeIZ-001J2B-QJ; Mon, 10 Jun 2024 14:38:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGeIZ-006p3z-2H;
	Mon, 10 Jun 2024 14:38:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 14:38:54 +0200
Message-Id: <20240610123854.1626248-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_053857_543310_CBA272DF 
X-CRM114-Status: GOOD (  10.78  )
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
Cc: Andreas Helmcke <ahelmcke@ela-soft.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] nandtest: fix wrong initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ecc_stats is not a pointer, so sizeof(*ecc_stats) is wrong. Use
sizeof(ecc_stats) to avoid showing invalid ecc values.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Andreas Helmcke <ahelmcke@ela-soft.com>
---
 commands/nandtest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index 4a7db9cc74..765785f091 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -210,7 +210,7 @@ static int do_nandtest(int argc, char *argv[])
 	markbad = 0;
 	fd = -1;
 
-	memset(ecc_stats, 0, sizeof(*ecc_stats));
+	memset(ecc_stats, 0, sizeof(ecc_stats));
 
 	while ((opt = getopt(argc, argv, "ms:i:o:l:tr")) > 0) {
 		switch (opt) {
-- 
2.39.2



