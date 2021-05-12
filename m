Delivery-date: Wed, 12 May 2021 07:45:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghgd-0005KV-KU
	for lore@lore.pengutronix.de; Wed, 12 May 2021 07:45:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghgc-00061Q-VU
	for lore@pengutronix.de; Wed, 12 May 2021 07:45:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VFUAfzP9VnHgrPO8O1niGXfXYYpmt8F6+LIoHqJRFXw=; b=U6qgKj982YLerE
	aOenwmNv0zvj/6tuoNzWWgbAOHoIWg6u8QjBX1adxg5/9RAYJXFaSUr81Peni9yLzh/5vfKOET02e
	9Cb+PHEionW0KQGVSu5t0W9/55dmgKf/zjbMuBNsZjbVhYRu7cPEX9n3WjWrUHdX0WSZ7zRhf5Zzu
	S8mriouQy7oPJM34T847/7OuLiRn50W/hNOgbGZuKc87/8M/Jo4zJWdCVhmbt0ZY4agLPBLA3gRyL
	3YQKIvPSTHC3ANdNvQbY3NIJWJovo4CEBkyC9e3YnlqIYkRTt5SmRNEhw+9vzJA86CrVG6VvTXo0w
	FqA4FPut3zI9WIvuOgpQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lghft-0026HA-II; Wed, 12 May 2021 05:44:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghfp-0026Gw-JA
 for barebox@desiato.infradead.org; Wed, 12 May 2021 05:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=tKp7h51jujGcO6w/amKapk5VYU5GrwMpZAdYXfgMIIk=; b=Qqyib0oeYhl0hFlcqyOKyU1uPC
 SwlNtx8MzyERyUdJ45jrGn72ju57N98+M0uRxhYznurINS2wHQZn8HPQC+L53aQdD0fYa6xBJG2d5
 lQQKXWA6fmlBiAF/7LMx9Sc8GKsNtMfKQp1Se5MTYTqfhB+qjhbjBFa/08MFdliDyw2yuDjBBuNio
 0j1YLTTzNOP/WJQK4c9PfIXksUzwBpGbP3M5v355RrKSuAlGtwU1wyEtxFjTlZoJZs8S+ha+gnNtq
 5OVQfcadacDqT1dturw8cxJSO271+bFDErHUHQ9tCqZO6hpdjJX2NzeoE00vJWG8h0xN/E/VYBRih
 hPrDb4mw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghfn-00A7wZ-8z
 for barebox@lists.infradead.org; Wed, 12 May 2021 05:44:44 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghfl-0005tj-6n; Wed, 12 May 2021 07:44:41 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghfk-00019m-Sz; Wed, 12 May 2021 07:44:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 12 May 2021 07:44:40 +0200
Message-Id: <20210512054440.2479-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_224443_331829_49EE273E 
X-CRM114-Status: GOOD (  11.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] readline_simple: Fix compiler warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

char is an unsigned type. To test the getchar() return value against
negative values we have to use a signed type. Use int instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/readline_simple.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/readline_simple.c b/lib/readline_simple.c
index fcdbca41a9..2e52bfc2a0 100644
--- a/lib/readline_simple.c
+++ b/lib/readline_simple.c
@@ -44,7 +44,7 @@ int readline (const char *prompt, char *line, int len)
 	int	n = 0;				/* buffer index		*/
 	int	plen = 0;			/* prompt length	*/
 	int	col;				/* output column cnt	*/
-	char	c;
+	int	c;
 
 	/* print prompt */
 	if (prompt) {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

