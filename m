Delivery-date: Mon, 22 Nov 2021 09:55:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp57E-0003lK-NZ
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:55:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp57D-0002c9-Jj
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:55:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yy7WXhy5YJwkEpYcPwEVnXheXKsOTPzcatRpMkJFtx4=; b=DA9x8LS3K+Ql7+
	h+GcBC9zRLcTYsFZAMPWvQeXlZzqIEdRRO5w3DATu95KCI+Mlo82w2dnNSShY8qNQFopZ40yF282i
	2gDuIssbBkwnIFiv37q8IAmk21kUkKFz3nvlblIDyLoPgCcUYF0iD10JaS0U2Q7KB7cBFi8Yd5Kch
	NL0VQP+Y0roN7LfroVIo/SRbP2NjhYTF4Ravh8GnjAiD2dY4Bq4AjXOb7YKUkwPmZ4ADgUNv8ONpo
	6Ajesj1H5xQWBg38lgCoo8C/sE3GQ5kp6o5rB2x0uYAmvRNddnbtYj9tORMZuR0AkJRhepf6/9Nrv
	cign2y38HS8jQyDLwAyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp55R-00FP1X-Gp; Mon, 22 Nov 2021 08:54:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zS-00FLAS-Pk
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wV-GP; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00AtfK-ME; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:20 +0100
Message-Id: <20211122084732.2597109-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004754_881881_9498D401 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 18/30] lib: implement wcsnlen
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This will come in handy for implementing %ls in the follow up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/wchar.h | 2 ++
 lib/wchar.c     | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/include/wchar.h b/include/wchar.h
index fb9b127a8c04..392211039a61 100644
--- a/include/wchar.h
+++ b/include/wchar.h
@@ -17,6 +17,8 @@ char *strdup_wchar_to_char(const wchar_t *src);
 
 size_t wcslen(const wchar_t *s);
 
+size_t wcsnlen(const wchar_t *s, size_t maxlen);
+
 #define MB_CUR_MAX 4
 
 int mbtowc(wchar_t *pwc, const char *s, size_t n);
diff --git a/lib/wchar.c b/lib/wchar.c
index 3be228b5a77a..250538dd8511 100644
--- a/lib/wchar.c
+++ b/lib/wchar.c
@@ -28,6 +28,15 @@ size_t wcslen(const wchar_t *s)
 	return len;
 }
 
+size_t wcsnlen(const wchar_t * s, size_t count)
+{
+	const wchar_t *sc;
+
+	for (sc = s; count-- && *sc != L'\0'; ++sc)
+		/* nothing */;
+	return sc - s;
+}
+
 wchar_t *strdup_wchar(const wchar_t *src)
 {
 	int len = wcslen(src);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

