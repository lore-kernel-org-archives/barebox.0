Delivery-date: Tue, 27 May 2025 23:31:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tt-000yMW-0M
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:31:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tr-0005ma-Ca
	for lore@pengutronix.de; Tue, 27 May 2025 23:31:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AmHY4ZE2kejczgWJgkmIfiSeAGPYQL0nlXxMPPZH+8s=; b=JuxpG/u/EPRcxe4CZxkHGSfFk/
	wf3qMRsbqWoN9sR1xm6kOYRpDzoOKV9h9WGsbBI/ll8UQxuBO1zRbXA6KmzqcMe8N8qCTN0w6NRBZ
	jK0G2mFR1+xEHvLgGbXGNcUrZnwDy2Y5DpgQcIPdM73xaZSjFVdneh8B5SzyacP3PjfscWydZDJW/
	2v3J5c+BoGPnqSHSDp7waPBsAjvTNa0xMiUYPi4LBJcqvOLaWZjJnr82VE4P3llIIXqh/2XZN1YBa
	RFzGi68oTQHXNTIjj1VqmJkTrhlTxMNDUdeTHa6KcmPgy2uTA64sQVSMCawb07Yelgj3lX2sv2yK2
	fsRtaT8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tE-0000000Bbhv-2PFK;
	Tue, 27 May 2025 21:31:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lI-0000000Baty-1QzZ
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lG-00015n-H7; Tue, 27 May 2025 23:23:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:22:46 +0200
Message-Id: <20250527212300.575031-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142304_387313_1EB1D1A7 
X-CRM114-Status: UNSURE (   9.29  )
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
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/15] lib: wchar: add wide char string comparison functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

For use by the EFI code, implement string comparison for wide character
strings.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/wchar.h |  3 +++
 lib/wchar.c     | 26 ++++++++++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/include/wchar.h b/include/wchar.h
index 392211039a61..02818815e183 100644
--- a/include/wchar.h
+++ b/include/wchar.h
@@ -24,4 +24,7 @@ size_t wcsnlen(const wchar_t *s, size_t maxlen);
 int mbtowc(wchar_t *pwc, const char *s, size_t n);
 int wctomb(char *s, wchar_t wc);
 
+int wcscmp (const wchar_t *s1, const wchar_t *s2);
+int wcsncmp (const wchar_t *s1, const wchar_t *s2, size_t n);
+
 #endif /* __WCHAR_H */
diff --git a/lib/wchar.c b/lib/wchar.c
index 49e946a09424..96db8116286a 100644
--- a/lib/wchar.c
+++ b/lib/wchar.c
@@ -124,3 +124,29 @@ char *strdup_wchar_to_char(const wchar_t *src)
 
 	return dst;
 }
+
+int wcscmp(const wchar_t *s1, const wchar_t *s2)
+{
+	while (*s1 == *s2++) {
+		if (*s1++ == 0)
+			return 0;
+	}
+
+	return *s1 - *--s2;
+}
+
+int wcsncmp (const wchar_t *s1, const wchar_t *s2, size_t n)
+{
+	if (n == 0)
+		return 0;
+
+	do {
+		if (*s1 != *s2++)
+			return *s1 - *--s2;
+
+		if (*s1++ == 0)
+			break;
+	} while (--n != 0);
+
+	return 0;
+}
-- 
2.39.5



