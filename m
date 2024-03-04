Delivery-date: Mon, 04 Mar 2024 21:20:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEnu-008imh-39
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 21:20:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEnu-0003pE-Cl
	for lore@pengutronix.de; Mon, 04 Mar 2024 21:20:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OJdoGDG9kcSeCLJB5TUEtw5S2mpKNfkJQKJi2ob3PAI=; b=r59KCfQ7UAiWPsFAzSSDFi1p7Q
	fjXYTICMuZjsk7j11mPEgXmFZ0IOKvL7tbFlwiI4BlkJFt2wIdqz6gYnkQQ4/+RV5DOl5y6Mj6MXd
	YCIpH7gLyit59mwuCCbkOaUKfxE/s3eSUQ7ImKDVKTf7+Xu3MY3G2L04ViNWcvNMPi2en4UFaa0VE
	kXNTnwpwLEkvgMhhUI/fBn+vTNG4/zCIcbLhRo4ZBVsWE7XvTB7Qw1YqpryE2rcOvywZnsvjhZyBs
	+dAOYv3MFUJJPS8f/jHh0MADSV9G9gy3DP8bjFjYnKMVYPUxvRkE8o7sQZXEuiUPtCk4nF0GtAkEF
	g7k7CaeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhEnV-0000000AZUf-45c4;
	Mon, 04 Mar 2024 20:20:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDab-0000000AIbA-2d30
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OJdoGDG9kcSeCLJB5TUEtw5S2mpKNfkJQKJi2ob3PAI=; b=BxG2f2k51sACdpuro89qBooW+Q
	hs2LnCwZRj7UvaE0ygF6XzVk+e3lqWwIhYGUzWeMYyATK2vzcYzhtpoJoqm6HbiALxbwF4ynqr5VT
	mgArwvGHj4eeor3ZdU+EubnVQ5Ta6Ocqys2YP33172Bl2oNga/xTukxXa1TeVx11d0GehWYhKgsk+
	W48bOv7oer5iTrC7qdf8VZWu747WMspHPdgj/mCGX8kD+Fn/H/NK79OZS3AgW2SMLgxhpGxC7y/a2
	DlYM6VFM+xzhTm0QH8+cdxdwMxvWTWj0uGdZliusjHYavf7fZo7RZdLILY5D4f29gyrdtfGkjIFl9
	aCnmQNLQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaV-00000002BSt-1ITw
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-00067A-32; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-004PJJ-Je; Mon, 04 Mar 2024 20:02:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-0c;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:17 +0100
Message-Id: <20240304190038.3486881-93-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190259_465338_A3397DC8 
X-CRM114-Status: GOOD (  10.67  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 092/113] lib: string: import Linux strreplace helper
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



