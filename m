Delivery-date: Thu, 28 Aug 2025 19:29:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRU-005WSx-25
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 19:29:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRT-0005t8-DI
	for lore@pengutronix.de; Thu, 28 Aug 2025 19:29:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7HtqapWv3vtoS5N70q+LgOe5UpJ9s0WKWDCbY1c2x7I=; b=NqmDMu8vE1LNPt2C0ocJrwelDJ
	5PcDpP1wNpA01DG22eVU9+DWIZu/A6ap7IaapJRmHlOGjePwqHM/9reUR0J/FsyBkohAaArUEItl4
	rh1nBlgBsYUPmCD/JthEn8RJMoHoNB3BBUlDV1jGr8UjTM5iq/3YwYpMu0bR+Qn2Ib/X+LpCbQOB0
	XMeWhNUf7cAqs6jIROR3xci1G53CI01G0f8RAroT62k3eQIeR6txmtQQN1pjArtOum8WvuG+7OWfd
	BimPik07m9Z66KHq35JeN8+rKDtid8wnSqliJc6Gzzg7oyYN1a7Eel9/Ae5kW8vTuywDezuYB8mW5
	Del8oSnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgQx-00000002Wbo-28IQ;
	Thu, 28 Aug 2025 17:29:11 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ureDK-000000022gE-35Ko
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 15:07:00 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-61a8c134533so2011127a12.3
        for <barebox@lists.infradead.org>; Thu, 28 Aug 2025 08:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756393617; x=1756998417; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7HtqapWv3vtoS5N70q+LgOe5UpJ9s0WKWDCbY1c2x7I=;
        b=zp1br0v7/mfBjdgVtB/ZQ4oOOJecnB7DZlLYWvQNIqYYYuVZ4BNCgSxmm4XOH4idqr
         K9IzIZr8Hl1sqvl4QVmi/9b3IWyY8NwsJ2dBLm0Y8FelBEvGUTyrvpki1VlsXsiYf4Gf
         Q9k1bWxfGjSvy1wL3VMYdOp9g8TC1ITdU/Gs1bpV2njOspIqKk+bjmgQ0MkYKJNW4NSp
         ea5znxf1wjVwkICbUhLvsy7QCk2GimRTBYP1A51M7HMbftuQ5QVr3MCMb9bbIJg1yjLL
         CVIYZPPwtCwCaAQ0YQDW6Yds1kaB/Ahxt94OiWcDkfDxtpSIeAv5WRvbmU0lC439ln34
         FSEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756393617; x=1756998417;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7HtqapWv3vtoS5N70q+LgOe5UpJ9s0WKWDCbY1c2x7I=;
        b=JBvKO+Hu3DHanQ7OhxwDVBaJvt5oII8KbU/c510DvWLs2+/y+ZzD3Z213tCEnJXTv9
         l/yokcLPtEhdxIzkN8xzUIUxAk+l7A5SyTa1fiLrv4/8xKDj+4/BbbGttRDmJtE5BKkF
         gnJETl1IIlsss4pfFOx8SVbgwsLulAs7Qw4sxgHSk+fqEReAC+bjGX7yMWSuYk3H1OKg
         xmXQSprSNPMzxBDDEzaPoPUqFOlOxfx1r5fEI6blnfSIw6eqO3mKBg+cpLNG82LlN+Hw
         EnPDldhgNqq/uIEFJ7c6rDjmMPccAHDc87Y/yotS4TeodvM/kE+FCFE6wMR3nnDCTDC2
         oO9A==
X-Gm-Message-State: AOJu0YzUvAy0qZ0qGDC7OB5a9Q8GGPEX2e3gaZb06h2Yen1Rqa1MWT+a
	2tmnDVuD5VUbeLhtQSP0ZDlh6O3pD4cGRhGYSzQLUmxzMAqkvMom2nemKTUZr8xqL22Y6YOI0uu
	XkjxR
X-Gm-Gg: ASbGncutvsdPORlR0zpnGnSQz4og2BvUC39pZE3WK7CBDTmfTS+A1anTr6YtzAxnz+M
	Jyo0FSBNGSEuSGTi/jICkmw2V5w2gX4FcCHdQTHdzhquOKvCd3qoPTo2zj+cQr9nmGhSs/6eaQ1
	g7gEhpU9vDQhvMp/kl9i5bQvzN6MkBA4tW/V0Sv8JMbNiaRRWGAsHdX5BCmoFnnVsPT2JPz7PnB
	oxcK7Ca+dBYcXCrW2ReG8IpP9CksCRK1SiPkiIlTGuJU9FYoTVBP2PO3UBfXCsXHFknQ8xiuh3W
	xZlGnrfu5VvY+QSEGqzsl5NDIllpobw2lSza14fK21UkS4t/LqURf+rU5NEpomuxKCpL8utkkVY
	FDguXVNiIny4Gw+KgdZGtbrBAPgQ/MYabb3clEc6RzrpLTZkIntD98wGLgfsESlhY/VFhEPAKNU
	Uy
X-Google-Smtp-Source: AGHT+IFpmMLQdU9zPoxZaroYGP3DwtGIdzSpvLiUGzeKeuULRZQorztnMfm5fY9bIl2gFSy6T6bpcA==
X-Received: by 2002:a05:6402:23d5:b0:618:1606:92ba with SMTP id 4fb4d7f45d1cf-61c1b70ad32mr19814941a12.28.1756393616570;
        Thu, 28 Aug 2025 08:06:56 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61c78e49c90sm7371038a12.45.2025.08.28.08.06.55
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 08:06:56 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Aug 2025 17:05:26 +0200
Message-ID: <20250828150637.2222474-2-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250828150637.2222474-1-tobias@waldekranz.com>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_080658_780842_B753B240 
X-CRM114-Status: GOOD (  16.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] string: add strtok/strtokv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an implementation of libc's standard strtok(3), which is useful
for tokenizing strings.

Also, add a version that will collect all tokens from a string into an
array, which is useful in situations where you need to know how many
tokens there are, and when a token's relative position in the order is
significant.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/string.h |  2 ++
 lib/string.c     | 66 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 68 insertions(+)

diff --git a/include/string.h b/include/string.h
index 71affe48b6..c8df8540d8 100644
--- a/include/string.h
+++ b/include/string.h
@@ -8,6 +8,8 @@
 void *mempcpy(void *dest, const void *src, size_t count);
 int strtobool(const char *str, int *val);
 char *strsep_unescaped(char **, const char *, char *);
+char *strtok(char *str, const char *delim);
+int strtokv(char *str, const char *delim, char ***vecp);
 char *stpcpy(char *dest, const char *src);
 bool strends(const char *str, const char *postfix);
 
diff --git a/lib/string.c b/lib/string.c
index 73637cd971..be7e65eb45 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -593,6 +593,72 @@ char *strsep_unescaped(char **s, const char *ct, char *delim)
         return sbegin;
 }
 
+/**
+ * strtok - extract tokens from string
+ * @str:	string to split
+ * @delim:	set of delimiter characters
+ *
+ * The strtok() function breaks up a string into zero or more nonempty
+ * tokens.  On the first call, the string to be parsed should be
+ * specified in @str.  In each subsequent call that should parse the
+ * same string, @str must be NULL.
+ *
+ * @delim specifies a set of bytes that delimit the tokens in the
+ * string.
+ *
+ * Each call to strtok() returns a pointer to a string containing the
+ * next token.  This is done by replacing the first delimiter with a
+ * NUL character, the operation is thus destructive to the string. If
+ * no more tokens are found, strtok() returns NULL.
+ */
+char *strtok(char *str, const char *delim)
+{
+	static char *cursor;
+
+	if (str)
+		cursor = str;
+
+	if (!cursor)
+		return NULL;
+
+	cursor += strspn(cursor, delim);
+	if (*cursor == '\0') {
+		cursor = NULL;
+		return NULL;
+	}
+
+	return strsep(&cursor, delim);
+}
+EXPORT_SYMBOL(strtok);
+
+/**
+ * strtokv - split string into array of tokens based on a delimiter set
+ * @str:	string to split
+ * @delim:	set of delimiter characters
+ * @vecp:	array of tokens
+ *
+ * Split @str into tokens delimited by @delim, using strtok(), and
+ * store the allocated token array in @vecp, which the caller is
+ * responsible for freeing.
+ *
+ * Return: The number of tokens in the array.
+ */
+int strtokv(char *str, const char *delim, char ***vecp)
+{
+	char *tok, **vec = NULL;
+	int cnt = 0;
+
+
+	for (tok = strtok(str, delim); tok; tok = strtok(NULL, delim)) {
+		vec = xrealloc(vec, (cnt + 1) * sizeof(*vec));
+		vec[cnt++] = tok;
+	}
+
+	*vecp = vec;
+	return cnt;
+}
+EXPORT_SYMBOL(strtokv);
+
 #ifndef __HAVE_ARCH_STRSWAB
 /**
  * strswab - swap adjacent even and odd bytes in %NUL-terminated string
-- 
2.43.0



