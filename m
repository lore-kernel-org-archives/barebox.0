Delivery-date: Fri, 05 Jan 2024 14:11:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLjz2-004jf1-1B
	for lore@lore.pengutronix.de;
	Fri, 05 Jan 2024 14:11:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLjz1-0004a0-PU
	for lore@pengutronix.de; Fri, 05 Jan 2024 14:11:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SEBEnwJq33yS5319Y9m8iXxsnGR/cHC1hO+6mlCbjmw=; b=Jx6BSLg+KUyu7f7KnGsOVWvg30
	xlv/qHkI/16bo3F7XARQe6gtbR6U5p4oZ1f6Xa8wkZURy9hi2j3YK8BqxktCBMv/ctjzmJnQJ1w3e
	qgCN/vikL4pRw8MHA8q5XUP9KKmg26LIN3NttSwB8J1yNCClxEM7ToqOd96r9j9dpTi2w+ky076ab
	6gBaICoB5zRI0wCTXf3i/9kxfRe5rfhmH+WW9WZMmttljmnC6kJaF6iXjDIYI2MS9t719UOqdljbE
	BhXBU0JvpJboowuEomoa8chO26kuBLiHMhiaYkqpocTVjQMF7EYb91m53Eoux64ii8DmsTYDuS0L+
	4q1si6pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLjxl-00GvSv-29;
	Fri, 05 Jan 2024 13:10:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLjxi-00GvPn-0C
	for barebox@lists.infradead.org;
	Fri, 05 Jan 2024 13:10:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLjxa-00040x-JC; Fri, 05 Jan 2024 14:10:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLjxa-000az8-6B; Fri, 05 Jan 2024 14:10:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLjxa-005Zbn-0K;
	Fri, 05 Jan 2024 14:10:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Jan 2024 14:10:00 +0100
Message-Id: <20240105131000.1328500-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_051010_095546_FEAFCD3A 
X-CRM114-Status: UNSURE (   9.99  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] rsatoc: fix typo in usage string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The commit introducing help text for the individual options,
inadvertently modified the usage string. Revert that single line.

Fixes: 94a2b2b28738 ("rsatoc: support generating standalone keys unreferenced by FIT keyring")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/rsatoc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index 6d10dca4169c..d5943d4a1154 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -509,7 +509,7 @@ int main(int argc, char *argv[])
 	}
 
 	if (optind == argc) {
-		fprintf(stderr, "Usage: %s [-ods]  OUTFIE<key_name_hint>:<crt> ...\n", argv[0]);
+		fprintf(stderr, "Usage: %s [-ods] <key_name_hint>:<crt> ...\n", argv[0]);
 		fprintf(stderr, "\t-o FILE\twrite output into FILE instead of stdout\n");
 		fprintf(stderr, "\t-d\tgenerate device tree snippet instead of C code\n");
 		fprintf(stderr, "\t-s\tgenerate standalone key outside FIT image keyring\n");
-- 
2.39.2



