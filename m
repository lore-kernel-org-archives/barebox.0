Delivery-date: Mon, 03 May 2021 13:52:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX7v-00034M-Rc
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:52:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX7u-00012F-VN
	for lore@pengutronix.de; Mon, 03 May 2021 13:52:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YlUX44PURiTUHKGl0ZdVsVyBMbr0vYj2Ilo0FSYvxQI=; b=dftVh6r0jwSkErb8lF5sEMGCv
	EfR50r0TGhBbBuV7QLQt8E5SNc3hUwKSZrGeqfddirdbEZ19OHoHbVWxEX5wLdKPBCCKkjbMjyQgT
	YbvyoWsaExnG0aNalaXEsLXrMCdhZHdiUD7VmAUdAamo6Aev2oYdhmH+TR0OBc8lwNwYZU/0FpOB2
	f1ajrojfOPPfIPXi1ECybk2NJL+E0ZViByrPJREj7fv5KfJehzlReBszll1FQ0GBT15TT4UQFPtmg
	cWf3j+I1GxFuq7usnJliya2fsB85YWB2gEKfpk5LSDgPBarIkxvvroLC/GNsVn9ko3buJtdeFU4oj
	yOTRi+TIQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldX6n-00DnKo-Fx; Mon, 03 May 2021 11:51:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX55-00DmiS-6u
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=y2Q21DOr48QXwCFDSv7Drg+yU7h91jdcnbhja9uyQhI=; b=AP2SZW86wFpwB8NhBsSrvJJPZU
 imQCEaqlE2lJms/4f8hH0+Z+zuceJ0udVA/iZeDiC/9ocYbGxFmxEjQliYN/FvsPfVwu9Uua6zTJH
 6oM7lI6cqLw/0GpAn7YqmiBs+tlzS7iCVP5Pu7hIhOJR69+bVgccs9yAwyQdA0rRIxly4uFQOCF4q
 LVGsizjrrMLlE3ZesjPYAJb0gey5Psd6pIQLRH9quGpot78GHFpmqStzsJGE4UgjVux2Fg4RHa5MB
 yjxWLyiuK7rt6ITiKpwSgt3jQ2cflT29Zl6cAm1gLjr94tBbBnM4hcXF6J+jlXuOboYGSeR91E+X3
 hQdFKmNw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX52-0031eX-NW
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:49:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4d-0007pf-BK; Mon, 03 May 2021 13:49:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4c-0003bI-DP; Mon, 03 May 2021 13:49:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 13:48:48 +0200
Message-Id: <20210503114901.13095-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503114901.13095-1-a.fatoum@pengutronix.de>
References: <20210503114901.13095-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044940_783973_1D6F8A35 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/16] string: implement strstarts along with strends
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both can be useful when parsing file paths. They are added to different
files, because only one of them is available in upstream
<linux/string.h>. The other we add to <string.h>, which contains more
barebox-specific string functions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/string.h | 10 ++++++++++
 include/string.h       |  1 +
 lib/string.c           |  9 +++++++++
 3 files changed, 20 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index 58e2a4d2ea66..55bc905c0e6b 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -136,4 +136,14 @@ extern int kstrtobool(const char *s, bool *res);
 
 int match_string(const char * const *array, size_t n, const char *string);
 
+/**
+ * strstarts - does @str start with @prefix?
+ * @str: string to examine
+ * @prefix: prefix to look for.
+ */
+static inline bool strstarts(const char *str, const char *prefix)
+{
+	return strncmp(str, prefix, strlen(prefix)) == 0;
+}
+
 #endif /* _LINUX_STRING_H_ */
diff --git a/include/string.h b/include/string.h
index ef0b5e199eea..d423bee6fba5 100644
--- a/include/string.h
+++ b/include/string.h
@@ -7,6 +7,7 @@
 int strtobool(const char *str, int *val);
 char *strsep_unescaped(char **, const char *);
 char *stpcpy(char *dest, const char *src);
+bool strends(const char *str, const char *postfix);
 
 void *__default_memset(void *, int, __kernel_size_t);
 void *__nokasan_default_memset(void *, int, __kernel_size_t);
diff --git a/lib/string.c b/lib/string.c
index dbb66fe4d2cc..bad186586fac 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -866,6 +866,15 @@ int strtobool(const char *str, int *val)
 }
 EXPORT_SYMBOL(strtobool);
 
+bool strends(const char *str, const char *postfix)
+{
+	if (strlen(str) < strlen(postfix))
+		return false;
+
+	return strcmp(str + strlen(str) - strlen(postfix), postfix) == 0;
+}
+EXPORT_SYMBOL(strends);
+
 /**
  * match_string - matches given string in an array
  * @array:	array of strings
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

