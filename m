Delivery-date: Tue, 17 Mar 2026 16:20:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDu-001qeL-2q
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 16:20:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDt-0007a6-B9
	for lore@pengutronix.de; Tue, 17 Mar 2026 16:20:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5BqD0g+2SFRQjG1pdxyctrs5qYRKPBlIVDnGj9UKQlM=; b=sHRsYEMosaOVbl2KXkAog6K6qz
	kCE8nGkbuYBmSSfbRk3S2M0XQ1EVB+OOzUB4nMwq/gW9VpY3gCO7Y2s5eQpkv/0kNrisjxEpzZ4c0
	X04rAtg2zeCUUNDe6XnlKneXU69ita50gr/sqdyuL6aGK9N29FijojiReAhLHoAAKDWC3Vm1k1/MB
	osMsZMxIJeb9TMcgLhiA5wV+yeKJT6Tps0xIoR7EOhvX20L6eNF1g1vL2hmR0qnE5RArxHAjsw39N
	rRQhBNNk7QJRNr709DfG9MurSCH4zGbLtEjPk/AUePqVDiTzuyjq435SZP0l/0aqil1SWvvvn7UJn
	U5AE43bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDM-00000006il2-2Mjc;
	Tue, 17 Mar 2026 15:20:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDJ-00000006igJ-45o7
	for barebox@bombadil.infradead.org;
	Tue, 17 Mar 2026 15:20:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=5BqD0g+2SFRQjG1pdxyctrs5qYRKPBlIVDnGj9UKQlM=; b=LJMbEs212Gp3TIIy44RU6t/axY
	1L3ltvVyXnEu5z3Pq72fQfhgdDQ5RrAEOo0D+UPGocuHLYBuNMX+O+XhgzZXUhBQ49HL8lWknO3Mf
	AnqXwvrdqgzCUn96CimrkVCA5dyEFhQcFicd7yuXlIBKonRM6sTbVx1JPd6WpYBB7KdblBJlo5cl0
	RiyOl4D2qLoEq+oOSViw6kuBF8SQHwB/Jdey+PqyYsPFHXXrTK3oy7vpb2qUyluPMd6X/Vq6UhwVQ
	NLhj+YErxwkQw5/kEK/CspEnpKADbDmTQothv2hE/XX62hnc5UvgBDQDUzlAyGj/a1fJD0zZuU7uA
	0lzyvDLQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDE-00000009MWz-2053
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 15:20:06 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2WDC-00076m-8g; Tue, 17 Mar 2026 16:20:02 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Mar 2026 16:19:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-keytoc-multi-env-v4-1-38ab473f8034@pengutronix.de>
References: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
In-Reply-To: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=2360; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=zClDcNVexcXTBgMBSXUdGy5G78nblUM6lZzk5O0eKZs=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcWSi3/5Jgpt//lRzebdbLxFUipxQZWjGFuV+12fHym
 Y8ua1B+RykLgxgXg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCLtUowMO2e/UpPRij+ebvax
 J/7l8/Xrmey/8VXv3v5yr2poUMd8X4ZfTKv4Xx+77h5XPlFJ1V21oyOqVv5saf+tmFkBEVOjg3c
 xAAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_152004_739049_BFB586F0 
X-CRM114-Status: GOOD (  13.19  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 1/8] scripts: include: Add string_util.h for
 strsep_unescaped
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

lib/string.c has strsep_unescaped() that will be useful for the keytoc
host tool to split ENV specs at spaces not preceded by a backslash in a
future commit.

In preparation, create scripts/include/string_util.h with a copy of that
function as to have it available in host tools.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/include/string_util.h | 65 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/scripts/include/string_util.h b/scripts/include/string_util.h
new file mode 100644
index 0000000000..e71aa60d26
--- /dev/null
+++ b/scripts/include/string_util.h
@@ -0,0 +1,65 @@
+#ifndef _TOOLS_STRING_UTIL_H_
+#define _TOOLS_STRING_UTIL_H_
+
+#include <linux/types.h>
+#include <stddef.h>
+
+// SPDX-SnippetBegin
+// SPDX-Snippet-Comment: Origin-URL: https://git.pengutronix.de/cgit/barebox/tree/lib/string.c?id=dfcf686f94a5a5387660f2afab79a714baab828a
+
+/**
+ * strsep_unescaped - Split a string into tokens, while ignoring escaped delimiters
+ * @s: The string to be searched
+ * @ct: The delimiter characters to search for
+ * @delim: optional pointer to store found delimiter into
+ *
+ * strsep_unescaped() behaves like strsep unless it meets an escaped delimiter.
+ * In that case, it shifts the string back in memory to overwrite the escape's
+ * backslash then continues the search until an unescaped delimiter is found.
+ *
+ * On end of string, this function returns NULL. As long as a non-NULL
+ * value is returned and @delim is not NULL, the found delimiter will
+ * be stored into *@delim.
+ */
+static char *strsep_unescaped(char **s, const char *ct, char *delim)
+{
+	char *sbegin = *s, *hay;
+	const char *needle;
+	size_t shift = 0;
+
+	if (sbegin == NULL)
+		return NULL;
+
+	for (hay = sbegin; *hay != '\0'; ++hay) {
+		*hay = hay[shift];
+
+		if (*hay == '\\') {
+			*hay = hay[++shift];
+			if (*hay != '\\')
+				continue;
+		}
+
+		for (needle = ct; *needle != '\0'; ++needle) {
+			if (*hay == *needle)
+				goto match;
+		}
+	}
+
+	*s = NULL;
+	if (delim)
+		*delim = '\0';
+	return sbegin;
+
+match:
+	if (delim)
+		*delim = *hay;
+	*hay = '\0';
+	*s = &hay[shift + 1];
+
+	return sbegin;
+}
+
+// SPDX-SnippetEnd
+
+
+#endif /* _TOOLS_STRING_UTIL_H_ */

-- 
2.53.0.308.g50d063e335



