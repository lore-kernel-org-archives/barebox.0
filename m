Delivery-date: Tue, 22 Sep 2026 12:49:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8y4D-00529K-1i
	for lore@lore.pengutronix.de;
	Tue, 22 Sep 2026 12:49:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 02DCA200044
	for <lore@pengutronix.de>; Tue, 22 Sep 2026 12:49:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=W2Za0nzs;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TvS8hIGd;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074181;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Gf0vwM0DZBLUc3mZEtVAFRnlCyZNxPTtSA8NylR78Yk=;
	b=bLlJ1OFLD11kHzINGOlCt8SZYiU8CfWF/SBl26/9MB66rEWBIRkv1ZDz8m9goyYOdQTmKM
	b3LaCbNy+jAOSpAeUQzq9v+dKnR83Z4EpaTY8cxFta/6cCXsCIFCexN2dVPKIA9A4awuAw
	sdpz4QPk0O2BUJ9Ik1nZeZqyQ1zAt8tb8bHY70Z4pcWNvmkTVfzXQXP1a0ZFQfAWYW2NlK
	WVuh99MXJySpHEaB3s6nBIv5OTqCAyseM6f6IzVvj7BW/D2YOOx6MV3cz53GfpO9Zpk5fj
	eRl4dPbbeFQfEIgzI8Jjx91qHypUDxkcAXSSwgtZMH5kVb1AIv3nFbcNB205KQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790074181; a=rsa-sha256;
	cv=pass;
	b=HrPON0vS1L3DghSQvkO/FAzmbnAl0xE9L9ci5J7VN8AhbEobZaysSczyPkM0GNgcj0uU9M
	t2BZStFcgr9hdkKGT9I2WsLFSk4k/AW8hW6Yb3WeI+uRtz6T7B3A2XNMWiXHw425fe1l6Y
	Q7mD2YVanUuFTWQst5eMiqn/ZlHOCCpQQwUI8eq8MAQ7zXtoVWxj/UuadeEDyf3iXhb3iB
	NEM1gmHRJc8oS6jp1muHJ1fHFCjLcOQrMkuXuFdnjXCJZJC2AWQaIo2wiWoINxp4J2qx8N
	liVaBwxlOm0K1vwye5ONtVNmyoGbcSFrVfC3+gMairLgrQWM9EKEzGABDWxiNg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=W2Za0nzs;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TvS8hIGd;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gf0vwM0DZBLUc3mZEtVAFRnlCyZNxPTtSA8NylR78Yk=; b=W2Za0nzsU1hwzBdvK12t5CoA7+
	sUumG6zahJrFy8EHfTwb8TVMVTMT+1Ds5s16DiybIo9cQFrsDnrKYBp251UPmi2fya/NXGDI34yiB
	q3X+kAHlaxhMrrcu6NSO3suEL7snb9thrWIsDjiKxSKuSMMyW4qBx6uQXhZoNk2/f16GATWL7rAG/
	aOfJie1D0z6Y5WFwa8lk6XfCt1c8tPr08sHyEMyi7AVeg0l6tGkq+irnBCyUOiWnJ+Ug25DDLucgR
	XtzdqN24ldvK1TKApJ/mOezq7gdUP1+sl/Ln1FjGVOxQYmkI8DTjKrUIiyd6S4+8If1HrsimX4YY5
	vQahP6oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2z-000000056Hr-2wrR;
	Tue, 22 Sep 2026 10:48:25 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2w-000000056FP-1phm
	for barebox@lists.infradead.org;
	Tue, 22 Sep 2026 10:48:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 082D4201F46;
	Tue, 22 Sep 2026 12:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074097;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Gf0vwM0DZBLUc3mZEtVAFRnlCyZNxPTtSA8NylR78Yk=;
	b=TvS8hIGdu7Naso+dIW9bdv3CzHGHzS7TkwDUdj+S4FKi6Jo6GQ6Q7DZFAu3ysti4tMcpB4
	Chp72jAP2YnwGwceL8cyJeYV2QKoBksTecBiaQbsNRPGsjXqEtmpV2ROQ4UdwS1OY8Zeaj
	JPuNfPJ+tdRufjW2qj9PioO6/JFQ59CdJcXLb9G1JD338s3X8OAmvXSkpKrlO1GBhlX8dR
	v2dCzUN8Ecxz7ilHzJploNEbXReIIh0dJ//ypGezjw9e3wyXpZ6HPEiO5/rDw5FOOfC7v1
	y2dPGSs5/8t8uJ7gxOQVlr4IMZ332pNb6qZQ3vyRmChE4pM/AqHl3v6z1oJqaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074097;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Gf0vwM0DZBLUc3mZEtVAFRnlCyZNxPTtSA8NylR78Yk=;
	b=bAzJr7050o5F5Fv0BdB9J0uHYXxGVd2CInl5H7Dzes5cUKzaszVolmD0MFPZAyT9XbGFS8
	NgSr5E2wuPhK2la2SLq9I0SCHcK+wJs0veqhU4rn3jWceJdPEww4z0u87qEZQASq0S8cQa
	S/AzgkMIOg0BBFqEGPaNXMecz+Wk1RPRxV//821+lEQvgU9g4edu1WorRrjNfkuuiL6h6i
	NGqZ1v7gVryMjKZLM+nHM6M0qdxMQGg0LZR68gPLSafi5NTeiMER5ew5XWn0brP6O8vXPK
	2y4eEfsjdk1ayfWTrF0t3YczUl6cu8uARH7y0ntGEWp89ajJrC4Y6Yd0FghXDA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790074097; a=rsa-sha256;
	cv=none;
	b=TCezMbHrIMKiHvX9bdphQsA0ZYWp3BnSZvcLhcicQjVKxGRudfpqlmfSb/RRU8HRTEz1x3
	cACab4JOF7xJNkMK3/8Sb8Fx6SA2qXo+J+F+thes+zj0HxtpPEM7LtXi8D14OYPt3gJ/89
	qGaIAXmDpjlX7jGtoDsLR0DHQZA+GZCmka/y3JkB28gg/QRK30UZbJBGauMVCht4+FmNyB
	yuH88ISVWNY0KiUM7BeOgTtKcjF09KHbYG5P9BUn0MoGC96T9mjybvefdE4ZIHDgbxdW/e
	lvXOv4hXF71KhbF0X5J+pKX0I2iz0KHNVKdAAXeDzSBX2g381QnIY0bqtOdu2g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2q-002DSo-35;
	Tue, 22 Sep 2026 12:48:16 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2r-00000001M6y-1Yf7;
	Tue, 22 Sep 2026 12:48:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 5/5] test: self: add cleanup selftest
Date: Tue, 22 Sep 2026 12:47:56 +0200
Message-ID: <20260922104813.317584-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922104813.317584-1-a.fatoum@pengutronix.de>
References: <20260922104813.317584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_034822_628780_3003D162 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The new __free() handlers have no user in the tree yet, so
    add a selftest that exercises them: it checks that leaving the scope really
    runs the cleanup, that NULL and error pointers are never passed t [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 02DCA200044
X-Stat-Signature: 3gqoscbxa6qbq3ig9zgyjyrpp37ne9py

The new __free() handlers have no user in the tree yet, so add a
selftest that exercises them: it checks that leaving the scope really
runs the cleanup, that NULL and error pointers are never passed to free(),
and that no_free_ptr() inhibits the cleanup.

Assisted-by: Claude:opus-5-1m
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig   | 10 +++++
 test/self/Makefile  |  1 +
 test/self/cleanup.c | 89 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 100 insertions(+)
 create mode 100644 test/self/cleanup.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 85a3ef790116..804fe6ac8d31 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -32,6 +32,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_RANGE
 	select SELFTEST_PRINTF
 	select SELFTEST_MALLOC
+	select SELFTEST_CLEANUP
 	select SELFTEST_PROGRESS_NOTIFIER
 	select SELFTEST_OF_MANIPULATION
 	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
@@ -71,6 +72,15 @@ config SELFTEST_MALLOC
 	help
 	  Tests barebox memory allocator
 
+config SELFTEST_CLEANUP
+	bool "scope-based cleanup selftest"
+	help
+	  Tests the __free() cleanup handlers the barebox allocators define,
+	  i.e. that leaving a scope frees the buffer, that NULL and error
+	  pointers are never freed and that no_free_ptr() inhibits cleanup.
+
+	  If unsure, say n.
+
 config SELFTEST_TALLOC
 	bool "talloc() selftest"
 	help
diff --git a/test/self/Makefile b/test/self/Makefile
index 2bfdbb9949df..2fecab1f8ee3 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_SELFTEST) += core.o
 obj-$(CONFIG_SELFTEST_BASE64) += base64.o
 obj-$(CONFIG_SELFTEST_RANGE) += range.o
 obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
+obj-$(CONFIG_SELFTEST_CLEANUP) += cleanup.o
 obj-$(CONFIG_SELFTEST_TALLOC) += talloc.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 CFLAGS_printf.o += -Wno-format-security -Wno-format
diff --git a/test/self/cleanup.c b/test/self/cleanup.c
new file mode 100644
index 000000000000..7a3b63cc897f
--- /dev/null
+++ b/test/self/cleanup.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <malloc.h>
+#include <linux/err.h>
+#include <linux/slab.h>
+
+BSELFTEST_GLOBALS();
+
+static void *freed[2];
+static int frees;
+static void count_free(void *mem)
+{
+	if (frees < ARRAY_SIZE(freed))
+		freed[frees] = mem;
+	frees++;
+	free(mem);
+}
+DEFINE_FREE(count_free, void *, if (!IS_ERR_OR_NULL(_T)) count_free(_T))
+
+static void test_cleanup(void)
+{
+	void *first, *second;
+
+	/* leaving the scope must free the buffer, and only then */
+	frees = 0;
+	{
+		void *p __free(count_free) = malloc(64);
+
+		assert_cond(p != NULL);
+		assert_cond(frees == 0);
+		first = p;
+	}
+	assert_cond(frees == 1);
+	assert_cond(freed[0] == first);
+	/* the variable defined last is freed first */
+	frees = 0;
+	{
+		void *p __free(count_free) = malloc(64);
+		void *q __free(count_free) = malloc(64);
+
+		first = p;
+		second = q;
+	}
+	assert_cond(frees == 2);
+	assert_cond(freed[0] == second);
+	assert_cond(freed[1] == first);
+
+	/* NULL must not reach the allocator */
+	{
+		void *p __free(free) = NULL;
+		void *q __free(free_sensitive) = NULL;
+		void *r __free(kfree) = NULL;
+		void *s __free(kfree_sensitive) = NULL;
+
+		assert_cond(p == NULL);
+		assert_cond(q == NULL);
+		assert_cond(r == NULL);
+		assert_cond(s == NULL);
+	}
+
+	/* and neither may error pointers */
+	{
+		void *p __free(free) = ERR_PTR(-EINVAL);
+		void *q __free(free_sensitive) = ERR_PTR(-EINVAL);
+		void *r __free(kfree) = ERR_PTR(-ENOMEM);
+		void *s __free(kfree_sensitive) = ERR_PTR(-ENOMEM);
+
+		assert_cond(IS_ERR(p));
+		assert_cond(IS_ERR(q));
+		assert_cond(IS_ERR(r));
+		assert_cond(IS_ERR(s));
+	}
+
+	/* no_free_ptr() inhibits the cleanup, so the buffer stays taken */
+	{
+		void *p __free(kfree) = kmalloc(64, GFP_KERNEL);
+		assert_cond(p != NULL);
+		first = no_free_ptr(p);
+	}
+	second = kmalloc(64, GFP_KERNEL);
+	assert_cond(second != first);
+	kfree(first);
+	kfree(second);
+}
+bselftest(core, test_cleanup);
-- 
2.47.3



