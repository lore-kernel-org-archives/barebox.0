Delivery-date: Tue, 09 Sep 2025 18:02:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0o7-0017e6-0o
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 18:02:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0o6-0007oa-Gy
	for lore@pengutronix.de; Tue, 09 Sep 2025 18:02:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vAiG/IygvgTLI+zUJflLgiR9Q9GQ99Y50ouFvnXssvk=; b=tsFncwN3ZVGYtV/vOl/az3hQos
	oW6Z6j+sK/d59CI6e/gX/enCyfaaIpAAQrYSOYrU1wNhoFRlLpl14MWJSyogUpJssVXQwnQ+CykBi
	Dd5j9UBFfJgiNql/ZJ04NFAUlXWqmiBRszIHZLLc17z0yYqWIMhStu1dX1ZAbPlH6H84qrbjFdZcc
	lJScXQIMHgwySGB9AyxMgfQvcd3SAm4UC18MXYWwcXdoLNxWeN/NTus+OHt3Ff2rnnG/WDF2r4LNd
	s1f4Li8x8Xg6ASAzcsHOT5ey5C6yFcZ1N2lpen2ZdQsXawuFGRiIbKW/8ItmMIA2HLJL3bXE9362E
	eQAPn2iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0nb-00000008NjH-0do1;
	Tue, 09 Sep 2025 16:02:27 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvyFc-00000007KIU-0tVl
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 13:19:14 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-b043a33b060so885940666b.1
        for <barebox@lists.infradead.org>; Tue, 09 Sep 2025 06:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757423950; x=1758028750; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vAiG/IygvgTLI+zUJflLgiR9Q9GQ99Y50ouFvnXssvk=;
        b=FsQbZG9bv25AAOnUlCzQEJBLzATl5qk1zbI71PZ+q+GV15QWPSNjHWTl+3nSGH0Bc/
         pZol8+Ss5J9w35Q6QJA5k6+MMyCxCNm0twXZSftME7FJoYLEBlJw4lp8fnUJmeZs8ACq
         ouUwYRCaQ1eSQDf12BQO2FAbgUgjVUWUazmDdJk6Tnuea7GHfyZYlkKyIxFJbPyE15T7
         XLLiZs/4LAu2FPBXhSP4uETGOOEGZvViN9E/sppR1SyYZzKwNM/iQIwQcb39DVDPl3fj
         mZvtjUsdBO/uNlASGyihn5XNZh4rs7Qwfj+LpMsHX4SWA2yGZTwAedZUOjupZHKoD0nT
         CUzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757423950; x=1758028750;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vAiG/IygvgTLI+zUJflLgiR9Q9GQ99Y50ouFvnXssvk=;
        b=D9Ay6K6Nv7gzX5rAmQt3axjY5AB4ikPzhwPexo3aznareqgxZf1LNA+CD/xNaezU6k
         nr0r2whL8CRjNjMkbzrz5DMJjc1Fvp+/YZtSx2mnfGmneF9b5sJi6/yZKwmnh+oczXAQ
         nrWYuVoVBxXd3H7ga26QkEeOcM81LE1+N9ky1sHNGwQxUYVBWvzctj4jL3P63nO45XGN
         B6lrgHDxIUOxmI3XZrtK8bupJB3mnT8Pj87xS2uTjeJUUBvGTFxcS5XaMNCuxObNTTwN
         oJy3TM9ZNgsBfeD9y7h9BMRnIJ/yL+9azHeTS4XJJkZFMFvt1/qZlSwF32GXw5Jtp8wf
         UiQA==
X-Gm-Message-State: AOJu0Yz5QZCjtehTJ9Z2HCFbqtZTxIFS5rwlKechObZjrRHzLQU2KM7a
	Ag8FxihOFGamzv+RdSttaDVTne6gOJsa2cCcv1OhyC3WyfLSe0eZuvaZLZ7aMSPWHl/pYqdnmnT
	LMdal
X-Gm-Gg: ASbGncvVXmuPrVtoaJv4ztLeHzdHX444ZDMNB3JS/gexRvdlGXEdK+X3uYM67hunz95
	YsB+QxDohERJea9ENbUIxqkQ2oc1qqerSj9rX1rsWx2eqo2i7YXyRfWbuOpid621ZnkzzyOb+GU
	37ZIa+kKJCkI8BQI79Ei3aAIW5aAqUrTsUNw1u8QDcnv3hI15Wb1hS3kyzt2zV/0Wm3PqK2fC22
	Ca1A54Sq6Sf5avDbOR/FlnU/A88/gc8xi7ssZIavvQFWufjyUfoh6ZVcc0xTwXuo+jDY9IsF3A7
	qsaWEMOZom5tEghjFAX2kdN9eGOiwgTwiTXsd3n11oTLCe2H3k0/PWk1pwy2VavnxzwTrXUSDAG
	b9Sqc/saYOFfj9+6XdKQ5BX6Lxy5h3HoMz0igck4yXLUetWaFB75tqcJz/1+CCudygA==
X-Google-Smtp-Source: AGHT+IFlHUZErBxNr25gthIhaHn020ysu6WJaoq4xPy+togxDUKf4d32AMWp5PsplPFAo42FavloVg==
X-Received: by 2002:a17:907:97d0:b0:b04:4147:9f81 with SMTP id a640c23a62f3a-b04b14243a7mr1188598566b.21.1757423950061;
        Tue, 09 Sep 2025 06:19:10 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04279a59ffsm2131074366b.60.2025.09.09.06.19.09
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:19:09 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Tue,  9 Sep 2025 15:18:35 +0200
Message-ID: <20250909131843.2260573-3-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250909131843.2260573-1-tobias@waldekranz.com>
References: <20250909131843.2260573-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_061912_252454_8CAC5528 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/7] vsprintf: Add rasprintf(): the reallocing string printf family
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Generates the formatted version of the input and appends it to an
existing dynamically allocated string, growing it as necessary using
realloc().

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/stdio.h  | 10 ++++++++++
 include/xfuncs.h |  4 ++++
 lib/vsprintf.c   | 35 +++++++++++++++++++++++++++++++++++
 lib/xfuncs.c     | 24 ++++++++++++++++++++++++
 4 files changed, 73 insertions(+)

diff --git a/include/stdio.h b/include/stdio.h
index cecb97ea1a..f3e430b3b3 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -21,6 +21,8 @@ int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 int asprintf(char **strp, const char *fmt, ...) __printf(2, 3);
 char *bvasprintf(const char *fmt, va_list ap);
 int vasprintf(char **strp, const char *fmt, va_list ap);
+int vrasprintf(char **strp, const char *fmt, va_list ap);
+int rasprintf(char **strp, const char *fmt, ...) __printf(2, 3);
 #else
 static inline __printf(2, 3) int asprintf(char **strp, const char *fmt, ...)
 {
@@ -34,6 +36,14 @@ static inline int vasprintf(char **strp, const char *fmt, va_list ap)
 {
 	return -1;
 }
+static inline int vrasprintf(char **strp, const char *fmt, va_list ap)
+{
+	return -1;
+}
+static inline __printf(2, 3) int rasprintf(char **strp, const char *fmt, ...)
+{
+	return -1;
+}
 #endif
 
 #define basprintf xasprintf
diff --git a/include/xfuncs.h b/include/xfuncs.h
index eb4050f489..2cc2048bd5 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -19,6 +19,8 @@ void* xmemalign(size_t alignment, size_t bytes) __xalloc_size(2);
 void* xmemdup(const void *orig, size_t size) __returns_nonnull;
 char *xasprintf(const char *fmt, ...) __printf(1, 2) __returns_nonnull;
 char *xvasprintf(const char *fmt, va_list ap) __returns_nonnull;
+char *xvrasprintf(char *str, const char *fmt, va_list ap) __returns_nonnull;
+char *xrasprintf(char *str, const char *fmt, ...) __printf(2, 3) __returns_nonnull;
 
 wchar_t *xstrdup_wchar(const wchar_t *src);
 wchar_t *xstrdup_char_to_wchar(const char *src);
@@ -35,6 +37,8 @@ static inline void* xmemalign(size_t alignment, size_t bytes) { BUG(); }
 static inline void* xmemdup(const void *orig, size_t size) { BUG(); }
 static inline __printf(1, 2) char *xasprintf(const char *fmt, ...) { BUG(); }
 static inline char *xvasprintf(const char *fmt, va_list ap) { BUG(); }
+static inline char *xvrasprintf(char *str, const char *fmt, va_list ap) { BUG(); }
+static inline __printf(2, 3) char *xrasprintf(char *str, const char *fmt, ...) { BUG(); }
 
 static inline wchar_t *xstrdup_wchar(const wchar_t *src) { BUG(); }
 static inline wchar_t *xstrdup_char_to_wchar(const char *src) { BUG(); }
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 409a8f02de..c7295c1067 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -1005,3 +1005,38 @@ int asprintf(char **strp, const char *fmt, ...)
 	return len;
 }
 EXPORT_SYMBOL(asprintf);
+
+int vrasprintf(char **strp, const char *fmt, va_list ap)
+{
+	int fmtlen, inlen = *strp ? strlen(*strp) : 0;
+	va_list aq;
+	char *p;
+
+	va_copy(aq, ap);
+	fmtlen = vsnprintf(NULL, 0, fmt, aq);
+	va_end(aq);
+
+	p = realloc(*strp, inlen + fmtlen + 1);
+	if (!p)
+		return -1;
+
+	vsnprintf(&p[inlen], fmtlen + 1, fmt, ap);
+
+	*strp = p;
+
+	return inlen + fmtlen;
+}
+EXPORT_SYMBOL(vrasprintf);
+
+int rasprintf(char **strp, const char *fmt, ...)
+{
+	va_list ap;
+	int len;
+
+	va_start(ap, fmt);
+	len = vrasprintf(strp, fmt, ap);
+	va_end(ap);
+
+	return len;
+}
+EXPORT_SYMBOL(rasprintf);
diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index d4beecddf5..4c69451305 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -144,6 +144,30 @@ char *xasprintf(const char *fmt, ...)
 }
 EXPORT_SYMBOL(xasprintf);
 
+char *xvrasprintf(char *str, const char *fmt, va_list ap)
+{
+	int len;
+
+	len = vrasprintf(&str, fmt, ap);
+	if (len < 0)
+		enomem_panic(0);
+
+	return str;
+}
+EXPORT_SYMBOL(xvrasprintf);
+
+char *xrasprintf(char *str, const char *fmt, ...)
+{
+	va_list ap;
+
+	va_start(ap, fmt);
+	str = xvrasprintf(str, fmt, ap);
+	va_end(ap);
+
+	return str;
+}
+EXPORT_SYMBOL(xrasprintf);
+
 wchar_t *xstrdup_wchar(const wchar_t *s)
 {
 	wchar_t *p;
-- 
2.43.0



