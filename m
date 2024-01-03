Delivery-date: Wed, 03 Jan 2024 19:36:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65y-002O6a-1N
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65q-0007CE-EC
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OJdoGDG9kcSeCLJB5TUEtw5S2mpKNfkJQKJi2ob3PAI=; b=NPGF9lWHjJ5iJ95ii9GT6sH3Cd
	yraLyHHDy5E5byTc8Js3cMljPIp6E2bdP+IU58k6SXDTi2aAqaaYqnFKBLDmkR7ySj8WsoLWSJObO
	zDFk4nYO5Y4J5oWoQl3y63uRHlQfwUjCFcC+AUZXdhMKRio5/UGq7ifiQBseSf85IR06mXdYqaSvH
	vxjxfa/i2dQOyPp67PhlLqS6srffxYyXH0IBSsafKFXo1A5VK6rqopWEWW1PuPWDDOs5RGz7nP2gA
	7/UnXT9DqquigWPwXsh7UJ5AE1+c6MZA0w1qsrvfIAR7XnBKH65tOMTwPv4MHTlQRvLFQEPM1px+2
	nhWWViuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64F-00BkrN-00;
	Wed, 03 Jan 2024 18:34:15 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61K-00BhNh-11
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OJdoGDG9kcSeCLJB5TUEtw5S2mpKNfkJQKJi2ob3PAI=; b=OGtW9jHYJc1ODNrTANpw7VDDqI
	oEidCA7KV6EzjcL8N1+QIsv6LdHUzzbfyo/9z1Th4c84W1wOu9EDDL6Ld1oC96ayAz7ZTm8qPCQPr
	KGziGMp9Dck5PxuXR1XLJlW1B2408OWEgIe8CZo+QoGveRAdLP57bNiW0JP6de77dbsDQM5wP4wUe
	z4sHPJUX0E74kVVjZbB1TRgTBoe9DhG6sH3h4G//L0X5AswNQCexRNpooWKNq36Ut2P/jpRDANxQa
	OMH3F/g3Hf72CcCBORAWib8XvImypJMoJ84RYfDrkfz60mjvRjNrsSIumYK4YtGfOWenObKn2j+mc
	00ngFFCQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61D-00DIm8-6t
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001XS-HF; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000AvL-4I; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-0A;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:51 +0100
Message-Id: <20240103181312.409668-92-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183108_583487_3AB5966F 
X-CRM114-Status: GOOD (  10.27  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 091/112] lib: string: import Linux strreplace helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This helper replaces all occurrences of a given character in a string.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/string.h |  1 +
 lib/string.c           | 21 +++++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index 32ce56939699..0d046f783280 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -115,6 +115,7 @@ extern char * skip_spaces(const char *);
 extern char *strim(char *);
 
 void *memchr_inv(const void *start, int c, size_t bytes);
+char *strreplace(char *str, char old, char new);
 
 /**
  * memzero_explicit - Fill a region of memory (e.g. sensitive
diff --git a/lib/string.c b/lib/string.c
index 695e50bc8fc1..374f326143a7 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -1028,3 +1028,24 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
 	return buf;
 }
 EXPORT_SYMBOL(strjoin);
+
+/**
+ * strreplace - Replace all occurrences of character in string.
+ * @str: The string to operate on.
+ * @old: The character being replaced.
+ * @new: The character @old is replaced with.
+ *
+ * Replaces the each @old character with a @new one in the given string @str.
+ *
+ * Return: pointer to the string @str itself.
+ */
+char *strreplace(char *str, char old, char new)
+{
+	char *s = str;
+
+	for (; *s; ++s)
+		if (*s == old)
+			*s = new;
+	return str;
+}
+EXPORT_SYMBOL(strreplace);
-- 
2.39.2



