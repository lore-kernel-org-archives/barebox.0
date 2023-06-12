Delivery-date: Mon, 12 Jun 2023 14:33:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gk2-003pGW-2h
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:33:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gjz-0002Qu-Kv
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:33:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KDAyFruQA+1ekE/IcRi22p4AqOoW6zkcUn3DeeEw1WA=; b=nz6OHTdygPQroq9XkcWO678xK2
	tn8v8Dwpx0JvwAjRlyByty08mjfnTaPC+fsaX5l56mCeT8uYlal+EVOMPr6sxYLx2jEzkU8ZdroyE
	lnc6DtrA8WAp6aSwY2HG5TxfLOpvMyPV7gwQEul4jkI5ugttfN7l/8uIYxdOtVIC63hkDaBv0j/TK
	NfbAa/uqE6YIjXJEcT5ea2TzW4SPqRfI0gMAYxeTKxQiPweqFQqukNXFc7kN2IBjhWTdxOxJqoqA/
	tLTlLHsKvheymM0EQuOXodotOULZClTLhCiAJgR5ClXZISBzF0bt+Gzlq1mrBdXEtkIuAEf1mfOk2
	3aYbiUAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gix-0041gd-2Y;
	Mon, 12 Jun 2023 12:32:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8giq-0041bs-0h
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:32:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gip-0002Bj-0P; Mon, 12 Jun 2023 14:32:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gio-006syR-CZ; Mon, 12 Jun 2023 14:32:34 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gin-00D1Ce-42; Mon, 12 Jun 2023 14:32:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 12 Jun 2023 14:32:30 +0200
Message-Id: <20230612123232.3071957-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612123232.3071957-1-s.hauer@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_053236_252914_DA0DE220 
X-CRM114-Status: GOOD (  12.28  )
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
Subject: [PATCH 3/5] dmesg: allow loglevels specified as numbers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In Linux dmesg loglevels can be specified as strings or as numbers.
Do likewise in barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dmesg.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 2a36710b98..00e5a159e0 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -13,6 +13,16 @@
 
 static int str_to_loglevel(const char *str)
 {
+	int ret;
+	unsigned long level;
+
+	ret = kstrtoul(str, 10, &level);
+	if (!ret) {
+		if (level > MSG_VDEBUG)
+			goto unknown;
+		return level;
+	}
+
 	if (!strcmp(str, "vdebug"))
 		return MSG_VDEBUG;
 	if (!strcmp(str, "debug"))
@@ -31,7 +41,7 @@ static int str_to_loglevel(const char *str)
 		return MSG_ALERT;
 	if (!strcmp(str, "emerg"))
 		return MSG_EMERG;
-
+unknown:
 	printf("dmesg: unknown loglevel %s\n", str);
 
 	return -EINVAL;
-- 
2.39.2



