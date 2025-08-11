Delivery-date: Mon, 11 Aug 2025 14:30:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfK-009KjN-39
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRf2-000653-Gp
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xoKbkDVn5eeW+nikGTQQ2R2ovVDDjY2DgN7kkiDx1RU=; b=1xjKNCVexay/lnMnoYy5jLcOsN
	zyIgpDWyH5WI5GfAvyoWpCgZKzAPL1ynDsKSudGoWdcd5PrNkVHcNJnGtjy08GM0Hj4ti+PtTfUZ3
	/sGHLkYRMA6B0l0ZYkegtvaPGGocgvic4O93s5ipDnWW3UO1qiiaZSA/bIdLtPEKFhIh5CT9335+9
	ws9AetBtSj6Pny4CmR1IHA4UyJg/vw5HWC4uteC55kIlJ5RO1/Dw7Iq0+Fv+tQSQ6Z6WI7MOXG8/6
	iHb8iee/IRTvkQw5z8+BNTZXSyKllCUJWPyW/RGWS6S1T35EXFzzSMk1nQExzUOLm/WXP1FYxWp6P
	V8SZj/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRe0-00000007e2U-3HCn;
	Mon, 11 Aug 2025 12:28:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdg-00000007dYt-1PEQ
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdf-0004WP-3o; Mon, 11 Aug 2025 14:28:31 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:59 +0200
Message-Id: <20250811122824.1667791-20-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052832_396758_3B2232EF 
X-CRM114-Status: UNSURE (   8.34  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 19/44] string: implement strv_length helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For calculating the length of an array of strings with a NULL sentinel,
introduce a strv_length helper.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/string.h |  7 +++++++
 lib/string.c     | 17 +++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/include/string.h b/include/string.h
index b54a8fc3f38a..71affe48b640 100644
--- a/include/string.h
+++ b/include/string.h
@@ -57,4 +57,11 @@ static inline bool is_nul_terminated(const char *val, size_t len)
 	return strnlen(val, len) != len;
 }
 
+typedef union {
+	char * const *sl;
+	const char * const *sl_const;
+} strv_t __attribute__((transparent_union));
+
+size_t strv_length(strv_t) __pure;
+
 #endif /* __STRING_H */
diff --git a/lib/string.c b/lib/string.c
index 96eac6d1daf6..73637cd9710a 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -1137,3 +1137,20 @@ char *strreplace(char *str, char old, char new)
 	return str;
 }
 EXPORT_SYMBOL(strreplace);
+
+/**
+ * strv_length - calculate length of string vector
+ * @strv: NULL-terminated array of string
+ *
+ * Return: size of the vector
+ */
+size_t strv_length(const char * const *l)
+{
+	size_t n = 0;
+
+        for (const char *const *s, *const *i = (l); (s = i) && *i; i++)
+		n++;
+
+	return n;
+}
+EXPORT_SYMBOL(strv_length);
-- 
2.39.5



