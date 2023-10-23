Delivery-date: Mon, 23 Oct 2023 16:33:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quvzH-001H2d-7B
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 16:33:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quvzF-0001Lb-PP
	for lore@pengutronix.de; Mon, 23 Oct 2023 16:32:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QZ/5f3Tgbht1hU4nMr4ErsMgv0vxigO5UlRk7YP4wKc=; b=WlswDVvtGio/w3OePnv/3zmj7s
	AtCp7IGIDe9Ixc+K7OKbRCCOEon0goP8IC7c8COI+qUcpW9jp3cdoLEk3KT4rOrQqH2CcWy5IL+1r
	9DaEH1UKWtsN2GHhyH4zgqYs74QWXdWUoX2XWU0G0OqpdMtdYhG45rtMu2YXOn6TW4j0S23pKSCvE
	2o9mk5Rex/f7dSenDfhksNe9JKH05iS9U8QCMaqMLGHfbd5OS2Leg/5ydWYvAXNIJZ/+q441cA6ED
	1AE/d5oFtF2nRz82vCwoHjg3s7fPUrlBEGYozW28uGOieMxLrcAWOTcXBZ4d/uyGyf4WlZn+NFB6l
	WGTElFAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quvy0-007YCN-0N;
	Mon, 23 Oct 2023 14:31:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quvxw-007YAr-1j
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 14:31:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxu-00013Q-1Z; Mon, 23 Oct 2023 16:31:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxt-003jWo-Le; Mon, 23 Oct 2023 16:31:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxt-007Pf1-21;
	Mon, 23 Oct 2023 16:31:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Oct 2023 16:31:21 +0200
Message-Id: <20231023143122.1760217-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
References: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_073136_573639_3CC4E4A4 
X-CRM114-Status: GOOD (  16.88  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] lib: base64: add support for base64url
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

base64url has some small differences to our current base64 implementation:

  - Instead of encoding to `+', `-' is used
  - Instead of encoding to `/', `_' is used
  - Padding with = to reach four byte boundary is optional
  - Invalid characters aren't silently skipped

Everything else is the same though, so let's reuse the code and have an
optional url bool parameter control whether to decode base64 or
base64url.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/base64.h |  1 +
 lib/base64.c     | 60 ++++++++++++++++++++++++++++++++++++++++++++----
 2 files changed, 56 insertions(+), 5 deletions(-)

diff --git a/include/base64.h b/include/base64.h
index 993a366b48b0..7da35e21bac5 100644
--- a/include/base64.h
+++ b/include/base64.h
@@ -5,6 +5,7 @@
 
 void uuencode(char *p, const char *src, int length);
 int decode_base64(char *dst, int dst_len, const char *src);
+int decode_base64url(char *dst, int dst_len, const char *src);
 
 #define BASE64_LENGTH(len)	(4 * (((len) + 2) / 3))
 
diff --git a/lib/base64.c b/lib/base64.c
index ac165ab168c4..d5ab217528db 100644
--- a/lib/base64.c
+++ b/lib/base64.c
@@ -25,6 +25,25 @@ static const char uuenc_tbl_base64[65 + 1] = {
 	'\0' /* needed for uudecode.c only */
 };
 
+static char base64_trchr(char ch, bool url)
+{
+	if (!url)
+		return ch;
+
+	switch (ch) {
+	case '+':
+		return '-';
+	case '/':
+		return '_';
+	case '-':
+		return '+';
+	case '_':
+		return '/';
+	default:
+		return ch;
+	}
+}
+
 /*
  * Encode bytes at S of length LENGTH to uuencode or base64 format and place it
  * to STORE.  STORE will be 0-terminated, and must point to a writable
@@ -68,13 +87,14 @@ EXPORT_SYMBOL(uuencode);
  * Decode base64 encoded string. Stops on '\0'.
  *
  */
-int decode_base64(char *p_dst, int dst_len, const char *src)
+static int __decode_base64(char *p_dst, int dst_len, const char *src, bool url)
 {
 	const char *src_tail;
 	char *dst = p_dst;
 	int length = 0;
+	bool end_reached = false;
 
-	while (dst_len > 0) {
+	while (dst_len > 0 && !end_reached) {
 		unsigned char six_bit[4];
 		int count = 0;
 
@@ -101,13 +121,23 @@ int decode_base64(char *p_dst, int dst_len, const char *src)
 					 * because we did fully decode
 					 * the string (to "ABC").
 					 */
-					if (count == 0)
+					if (count == 0) {
 						src_tail = src;
+					} else if (url) {
+						end_reached = true;
+						goto out;
+					}
+
 					goto ret;
 				}
 				src++;
-				table_ptr = strchr(uuenc_tbl_base64, ch);
-			} while (!table_ptr);
+				table_ptr = strchr(uuenc_tbl_base64, base64_trchr(ch, url));
+			} while (!table_ptr && !url);
+
+			if (!table_ptr) {
+				end_reached = true;
+				goto out;
+			}
 
 			/* Convert encoded character to decimal */
 			ch = table_ptr - uuenc_tbl_base64;
@@ -119,6 +149,7 @@ int decode_base64(char *p_dst, int dst_len, const char *src)
 			six_bit[count] = ch;
 			count++;
 		}
+out:
 
 		/*
 		 * Transform 6-bit values to 8-bit ones.
@@ -151,4 +182,23 @@ int decode_base64(char *p_dst, int dst_len, const char *src)
 
 	return length;
 }
+
+/*
+ * Decode base64 encoded string. Stops on '\0'.
+ *
+ */
+int decode_base64(char *p_dst, int dst_len, const char *src)
+{
+	return __decode_base64(p_dst, dst_len, src, false);
+}
 EXPORT_SYMBOL(decode_base64);
+
+/*
+ * Decode base64url encoded string. Stops on '\0'.
+ *
+ */
+int decode_base64url(char *p_dst, int dst_len, const char *src)
+{
+	return __decode_base64(p_dst, dst_len, src, true);
+}
+EXPORT_SYMBOL(decode_base64url);
-- 
2.39.2



