Delivery-date: Tue, 09 Sep 2025 18:02:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0o6-0017dk-1a
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 18:02:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0o5-0007np-Du
	for lore@pengutronix.de; Tue, 09 Sep 2025 18:02:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ACVVX7Tukec6sfLE/kBfT+qdPVoP6L6f40ELxBnIcmc=; b=FZmjAEyA2Z8bR4WJSA6ZOPJ4KV
	ueMLF1XNOwjYJ6MuMHSNCDakWLt6xaTxnSpg+s9Klhlz8fyR+LtUJ/pllgY79bkY79hEx9JAJ/G1F
	4eot+1/DSJw9t4wB/rqjrJSxYAQu60mroSqmgCLB2dFsm85p6L1FZ96RQlhSuIbgTmhY0aumsLbL8
	UHkHEhn6IUYE+PNagCxaQjoeZxlQPySmXwJ8lW20OTcaSLDzrAEvSXkfGRxsGo9tJPi/7X2ZZKXvR
	p3nr/Vt5xd8IGiVQyFLHrQ8erf3LMTGIqfRqJtiKrFHaHHPQN3BX+s5Us/NV1wu35khv9SISkVQ+R
	sDbFbASg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0nZ-00000008NhA-3fk6;
	Tue, 09 Sep 2025 16:02:25 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvyFb-00000007KIE-2cW5
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 13:19:13 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-afeec747e60so1040686866b.0
        for <barebox@lists.infradead.org>; Tue, 09 Sep 2025 06:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757423950; x=1758028750; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ACVVX7Tukec6sfLE/kBfT+qdPVoP6L6f40ELxBnIcmc=;
        b=tjHSyd31ubgRog+UWyMI7SJRUrBI4hliqKZgIm+GiraQqOQu92bniLNWSWH5QYrBwP
         JBLkxaCczfFUM79yXW8Z+F9zC+T+P9lZEQC7sGqNHrQntTD5T26yVSOYGWZAaOBwRNII
         q2Ico8U0LW+Fxb3z8t/iMSP701XO/wiVJaXx+N7AP2xtXaBLf2bjHby12sWJzE7anAKU
         tlKq4sSUM85RUTtQIFytGc2k66/bFw6EqRGjjThxqe52TC8tJn112piAvuIm6+nMBH+U
         mz7eqWhQBZD1+dJ2+1h9ah9aWBdo9TqJrKR6xI9ON2Umj63hs2vhlatSZYeHNc4qLpaa
         s6yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757423950; x=1758028750;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ACVVX7Tukec6sfLE/kBfT+qdPVoP6L6f40ELxBnIcmc=;
        b=d41W0xOMisdB3Jcioz5o5rD2qQl4/C7MY0/laKpEfJqD0fYLW8Pl13Y8SeWhL0ziqU
         88OiJjJX6/QMA0MOqG88LZ8xPQsswhRxCcf4wY9bNh/qyHz4hpb4KL/WIserObnCaHrh
         1Rh7oBAmrFDQtkPJHZAoHmExsEvYRXCbvvn+n4OOvh3crt488y5Sxs3Dz5oV9ZbYq5+4
         3IBHpYN/Wqoa8sVolt1vZsiJCLFChRyhwuSntUbE/eiW6V7LTcYwJqVwN6UYULJD15Ua
         uLBxKDS0cwWm/ZBJB5yaPKKlX56VKRYxy/Rv1FqJBD6AWq6TjzlawQ9I4W64YnVYnK8s
         yVrw==
X-Gm-Message-State: AOJu0YwiuUfc/4wF8wieEWzcb6UiARRUEtifWT4sqyHcW035xnvFVya6
	PfisHThe6qbJCk+91/qTFcvLRC0hVrJ9pfC0p3uzX3eI/xHj5tA1aS5g626jyrOTWoa3RPP5YPG
	Emimb
X-Gm-Gg: ASbGncvd53XBdKpAunSQpIvXZE1Q6sQGDMQXmyGMO6ft262yVTky3mxItCHTcuUGRyE
	ykEfS5Je0h1WfNaKdDZ+DQdDzSo1WguDYgHxk0ZyFgqsh2tnBl9UubLsdIjDEMncE/qVf7eXhU+
	l595p5SEXh4oncB2OX97XQvVQJXYzLkXgc6Dzwd/FsqFw8ypuIj/Ow6pMf4WF03mrR1Ouj+xZgK
	GK4Joum+hG0rmBXO8rP6TngxxyO0GznvQSB2Y5aZ0cQ/SS1xg8YQqy4hACN0myEPyGBrxz0GquC
	Nlvcl/TwOhZwcUgEeJV7N03gGF1pUynQHEa1Zv1wF3u0AOVE4h0vO9/NbOAg7XupReN2U0Q+2H0
	H0G+CJgaKvzoWCEVxQq5hj1j5hrpJo8Ua/FMBChCL3W1U5Gq8RZwpfYwg0chh1s6ymw==
X-Google-Smtp-Source: AGHT+IEzcAzuk5mvlQT92h/MiXSyJgP0+Wc6CtbCHMYGIU3OgyBfaVQ7DFRLhtT02x3EqrzPUdfGtA==
X-Received: by 2002:a17:907:6092:b0:b04:6a58:560b with SMTP id a640c23a62f3a-b04b1545011mr1162001466b.39.1757423949401;
        Tue, 09 Sep 2025 06:19:09 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04279a59ffsm2131074366b.60.2025.09.09.06.19.08
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:19:09 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Tue,  9 Sep 2025 15:18:34 +0200
Message-ID: <20250909131843.2260573-2-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250909131843.2260573-1-tobias@waldekranz.com>
References: <20250909131843.2260573-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_061911_718557_57BEE45F 
X-CRM114-Status: GOOD (  14.04  )
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
Subject: [PATCH v2 1/7] string: add strtok/strtokv
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

Notes:
    v1 -> v2:
    - Tokeinize using strsep()+empty-token-check instead of strtok()
    - Return array from strtokv() and pass count in an output pointer,
      rather than the opposite.

 include/string.h |  1 +
 lib/string.c     | 30 ++++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/include/string.h b/include/string.h
index 71affe48b6..cb3492ba04 100644
--- a/include/string.h
+++ b/include/string.h
@@ -8,6 +8,7 @@
 void *mempcpy(void *dest, const void *src, size_t count);
 int strtobool(const char *str, int *val);
 char *strsep_unescaped(char **, const char *, char *);
+char **strtokv(char *str, const char *delim, int *cntp);
 char *stpcpy(char *dest, const char *src);
 bool strends(const char *str, const char *postfix);
 
diff --git a/lib/string.c b/lib/string.c
index 73637cd971..a55f989900 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -593,6 +593,36 @@ char *strsep_unescaped(char **s, const char *ct, char *delim)
         return sbegin;
 }
 
+/**
+ * strtokv - split string into array of tokens based on a delimiter set
+ * @str:	string to split
+ * @delim:	set of delimiter characters
+ * @cntp:	number of tokens
+ *
+ * Split @str into non-empty tokens delimited by spans of characters
+ * from @delim, and store the numbers of tokens in @cntp.
+ *
+ * Return: The allocated array of tokens, which the caller is
+ * responsible for freeing.
+ */
+char **strtokv(char *str, const char *delim, int *cntp)
+{
+	char *tok, **vec = NULL;
+	int cnt = 0;
+
+	while ((tok = strsep(&str, delim))) {
+		if (*tok == '\0')
+			continue;
+
+		vec = xrealloc(vec, (cnt + 1) * sizeof(*vec));
+		vec[cnt++] = tok;
+	}
+
+	*cntp = cnt;
+	return vec;
+}
+EXPORT_SYMBOL(strtokv);
+
 #ifndef __HAVE_ARCH_STRSWAB
 /**
  * strswab - swap adjacent even and odd bytes in %NUL-terminated string
-- 
2.43.0



