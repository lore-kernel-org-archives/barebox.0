Delivery-date: Mon, 22 Nov 2021 09:53:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp54c-0003bV-MO
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:53:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp54a-0001fm-Ny
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:53:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpXX2e/SySp6k0MLCb19Zf0bUsn3iorvl3SpNqdJdX8=; b=gLRw2AFpTemRNf
	Qa9zr5S04m4gEs4z8j9d4he38j6vqj2B+aFi1GXIASBBD1graprzXvyuQa7F+Zsu0+63QOTfSz2hs
	0cShpmtOZvWkTXYvJ2K1Uju0sIaStlDRD1/FidwkfC+1QFfGcKqzxRuiymFo8L2oGgLWLZfTmW49I
	rdFfJjkrq2K+vAVuDOedjFaoX9gvPJf/kt7ImfCTbh3Olfl5SYUhk9efGX+ejtMKhHvoHeWjkfiuQ
	ukgEBuWuG9t1s0kaJvbCd2ojZgOx1SEBWQ+kDkyRWqJBTgD+rg94yYebSMoRdcoMwhS+6TU9k5uab
	RTL48G7Ap/azGJlsk4mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp53J-00FNWR-MV; Mon, 22 Nov 2021 08:51:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zK-00FL5R-QW
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wS-BZ; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00AtfH-LZ; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:19 +0100
Message-Id: <20211122084732.2597109-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004747_009007_EBF0E880 
X-CRM114-Status: GOOD (  12.27  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 17/30] lib: wchar: add wctomb and mbtowc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently convert wchar_t to char by truncating to 8-bit.
In future, we may want to do UTF-16 to UTF-8 conversion.
Prepare for this by wrapping each conversion direction in a function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/wchar.h |  5 +++++
 lib/wchar.c     | 22 ++++++++++++++++++++--
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/include/wchar.h b/include/wchar.h
index b601cc62079b..fb9b127a8c04 100644
--- a/include/wchar.h
+++ b/include/wchar.h
@@ -17,4 +17,9 @@ char *strdup_wchar_to_char(const wchar_t *src);
 
 size_t wcslen(const wchar_t *s);
 
+#define MB_CUR_MAX 4
+
+int mbtowc(wchar_t *pwc, const char *s, size_t n);
+int wctomb(char *s, wchar_t wc);
+
 #endif /* __WCHAR_H */
diff --git a/lib/wchar.c b/lib/wchar.c
index 4d49431e8653..3be228b5a77a 100644
--- a/lib/wchar.c
+++ b/lib/wchar.c
@@ -44,12 +44,30 @@ wchar_t *strdup_wchar(const wchar_t *src)
 	return tmp;
 }
 
+int mbtowc(wchar_t *pwc, const char *s, size_t n)
+{
+	if (!s)
+		return 0; /* we don't mantain a non-trivial shift state */
+
+	if (n < 1)
+		return -1;
+
+	*pwc = *s;
+	return 1;
+}
+
+int wctomb(char *s, wchar_t wc)
+{
+	*s = wc & 0xFF;
+	return 1;
+}
+
 char *strcpy_wchar_to_char(char *dst, const wchar_t *src)
 {
 	char *ret = dst;
 
 	while (*src)
-		*dst++ = *src++ & 0xff;
+		wctomb(dst++, *src++);
 
 	*dst = 0;
 
@@ -61,7 +79,7 @@ wchar_t *strcpy_char_to_wchar(wchar_t *dst, const char *src)
 	wchar_t *ret = dst;
 
 	while (*src)
-		*dst++ = *src++;
+		mbtowc(dst++, src++, 1);
 
 	*dst = 0;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

