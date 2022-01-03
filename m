Delivery-date: Mon, 03 Jan 2022 13:03:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M3g-009nvk-2P
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:03:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M3e-0004hT-8m
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:03:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aHA/WlLKvS2p0F2QW39vVSn/8VCqaYvByCKqvilghKk=; b=LzZ41B1wmMYYG1
	p6Drpd8hz8iFDjAlRViPLIZhAJv358PIEfvng4TDkKpAZep94QlPVE4lB1/eCAFl4iVdi+jh9Mf6k
	uUcb1VlKyOcOeMBgLDKkzPT0BP1rUsgbrBi2hxwIKXdJyHaOtR2d8uxu4+aRUN8LS0j1U01kJGfLv
	sKyGKtwBjt7Y+JtAPownHqM456w444CIlPPHpI6VV8ncX7OeC0DfVayqTNGHp7t9x8l35MIIb3agS
	YtpA7yAbHANoJ60HOIshlpqFntW8XfSrVaDLbqxwb3xsYAH7e7RGI0iuzXVF2SllTPWtHTj9mo9b4
	gGEzqYr87f+cwsd2MJrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M2W-008xJS-1v; Mon, 03 Jan 2022 12:02:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M2S-008xJ1-3s
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:02:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M2Q-0004db-VE; Mon, 03 Jan 2022 13:02:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M2Q-007Fl1-GK; Mon, 03 Jan 2022 13:02:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:02:05 +0100
Message-Id: <20220103120205.1728778-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040208_176334_7B6CC2DE 
X-CRM114-Status: UNSURE (   9.21  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] parseopt: drop unused, duplicate, parseopt_u16
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We always have sizeof(unsigned short) == sizeof(uint16_t), so
parseopt_u16() is exactly equivalent to parseopt_hu().

The former is unused anyway, so just drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/parseopt.h |  1 -
 lib/parseopt.c     | 31 -------------------------------
 2 files changed, 32 deletions(-)

diff --git a/include/parseopt.h b/include/parseopt.h
index 5a40bdc219fe..a944c3655f77 100644
--- a/include/parseopt.h
+++ b/include/parseopt.h
@@ -6,7 +6,6 @@ void parseopt_llu_suffix(const char *options, const char *opt,
 
 void parseopt_b(const char *options, const char *opt, bool *val);
 void parseopt_hu(const char *options, const char *opt, unsigned short *val);
-void parseopt_u16(const char *options, const char *opt, uint16_t *val);
 void parseopt_str(const char *options, const char *opt, char **val);
 
 #endif /* __PARSEOPT_H__ */
diff --git a/lib/parseopt.c b/lib/parseopt.c
index 70983066d952..d0a27d8bf372 100644
--- a/lib/parseopt.c
+++ b/lib/parseopt.c
@@ -59,37 +59,6 @@ again:
 		*val = v;
 }
 
-void parseopt_u16(const char *options, const char *opt, uint16_t *val)
-{
-	const char *start;
-	size_t optlen = strlen(opt);
-	ulong v;
-	char *endp;
-
-again:
-	start = strstr(options, opt);
-
-	if (!start)
-		return;
-
-	if (start > options && start[-1] != ',') {
-		options = start;
-		goto again;
-	}
-
-	if (start[optlen] != '=') {
-		options = start;
-		goto again;
-	}
-
-	v = simple_strtoul(start + optlen + 1, &endp, 0);
-	if (v > U16_MAX)
-		return;
-
-	if (*endp == ',' || *endp == '\0')
-		*val = v;
-}
-
 void parseopt_str(const char *options, const char *opt, char **val)
 {
 	const char *start;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

