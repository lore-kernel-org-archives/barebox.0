Delivery-date: Tue, 11 Jun 2024 08:58:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSD-0046xI-2C
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 08:58:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSC-0005TK-TW
	for lore@pengutronix.de; Tue, 11 Jun 2024 08:58:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QoTjyjhWrJDlukLUUxjn1pZ5ao4ob28CliJhw33ppVw=; b=xPgGh12oJFZ3CwoiurIrD8t/6Q
	gm3e9MmDcnKd/d3FGBrZ+zaIyOUVNyJ/1W2/fgq6pIv7t7qpwEuIOBuKDiHUJeP+XC+zTtqQxrTDc
	o6K0+S/uh57aNPl2vBHRcIw45/SQkHLq3uYyOkNoaog+zlX3cwG5JmFNsjt+iNp4eYJZz90IwNqNC
	d+CLYMjdE1avfmp/N9INFgCAy7gDyXMM+HJ0+a9NrA2Kx8E2Pc+gxPemZuTxT9LMovVvVdXciEsPK
	bunUcMLwRsiry+bEPtbQBE5cYWMtTRSCTtb9areWZlX+Pwgqft8B1yyNhXnGDiTP+zLgKL93CFVRn
	mb1pY72A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvRe-00000007mE7-211U;
	Tue, 11 Jun 2024 06:57:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvRZ-00000007mBl-381L
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:57:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-0005Jz-Rl; Tue, 11 Jun 2024 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-001U8X-FJ; Tue, 11 Jun 2024 08:57:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-00CAKW-1D;
	Tue, 11 Jun 2024 08:57:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:57:16 +0200
Message-Id: <20240611065718.2899625-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611065718.2899625-1-a.fatoum@pengutronix.de>
References: <20240611065718.2899625-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235721_901088_BAB729F0 
X-CRM114-Status: UNSURE (   9.45  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/4] lib: wchar: guard against NULL in strdup_wchar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

strdup(NULL) returns NULL, so the wchar_t-Variants should behave
the same way.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/wchar.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/lib/wchar.c b/lib/wchar.c
index 250538dd8511..49e946a09424 100644
--- a/lib/wchar.c
+++ b/lib/wchar.c
@@ -39,9 +39,13 @@ size_t wcsnlen(const wchar_t * s, size_t count)
 
 wchar_t *strdup_wchar(const wchar_t *src)
 {
-	int len = wcslen(src);
+	int len;
 	wchar_t *tmp, *dst;
 
+	if (!src)
+		return NULL;
+
+	len = wcslen(src);
 	if (!(dst = malloc((len + 1) * sizeof(wchar_t))))
 		return NULL;
 
@@ -97,8 +101,9 @@ wchar_t *strcpy_char_to_wchar(wchar_t *dst, const char *src)
 
 wchar_t *strdup_char_to_wchar(const char *src)
 {
-	wchar_t *dst = malloc((strlen(src) + 1) * sizeof(wchar_t));
+	wchar_t *dst;
 
+	dst = src ? malloc((strlen(src) + 1) * sizeof(wchar_t)) : NULL;
 	if (!dst)
 		return NULL;
 
@@ -109,8 +114,9 @@ wchar_t *strdup_char_to_wchar(const char *src)
 
 char *strdup_wchar_to_char(const wchar_t *src)
 {
-	char *dst = malloc((wcslen(src) + 1));
+	char *dst;
 
+	dst = src ? malloc((wcslen(src) + 1)) : NULL;
 	if (!dst)
 		return NULL;
 
-- 
2.39.2



