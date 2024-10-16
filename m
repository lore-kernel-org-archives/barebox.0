Delivery-date: Wed, 16 Oct 2024 10:58:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zr5-004zvI-2e
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 10:58:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zr5-0004aP-76
	for lore@pengutronix.de; Wed, 16 Oct 2024 10:58:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dyjfeumawt3e3Ws66WjQOSP99PDZTqBLzXfgnSwM/TU=; b=AVcDuL71D0NoqRwpFk0z85sNXW
	+PRXHJ5LqiBoZhe+91Cxa/UsIoFa2S03ruZYmcqSBNdppbu4fplIc4lM0+KRfO2Cc27mOKNrk/fR9
	vn6X+gdaUCch/aKaFziv0Vau+W05Ak5urtFZuxN/THPBy9omR+NPqosLAgqxcE74BXZA3UNseIIGi
	NyXwT5vMl2VJikuCTD9s5+VtJ7TavIWfA5Pq2DxoSuER5mLkUcSO0bJktv+2JqCTNt0PHoRwpgqLd
	jS4fJ+1ZCv8JrHVTYt4ny9msXHs+th/tkBKw7XeLLSLabHrAc5/UPQm4ana0WXgdsUC074Vvy5OfY
	DYp96fEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zqa-0000000B8BR-0Dsx;
	Wed, 16 Oct 2024 08:57:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zpD-0000000B7mw-03J0
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 08:56:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zpB-00045p-KM; Wed, 16 Oct 2024 10:56:09 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zpB-002EHG-7u; Wed, 16 Oct 2024 10:56:09 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zpB-00Gcuc-0W;
	Wed, 16 Oct 2024 10:56:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 10:56:07 +0200
Message-Id: <20241016085608.3962813-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_015611_072331_61F66FF5 
X-CRM114-Status: GOOD (  11.05  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] string: add strlcat support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a lot of kernel string functions already for use by common,
driver and board code, but we are lacking strlcat.

Add it to simplify porting code using it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/string.h |  3 +++
 lib/string.c           | 21 +++++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index 0d046f783280..4aa11555a005 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -55,6 +55,9 @@ extern char * strcat(char *, const char *);
 #ifndef __HAVE_ARCH_STRNCAT
 extern char * strncat(char *, const char *, __kernel_size_t);
 #endif
+#ifndef __HAVE_ARCH_STRLCAT
+extern __kernel_size_t strlcat(char *dest, const char *src, __kernel_size_t count);
+#endif
 #ifndef __HAVE_ARCH_STRCMP
 extern int strcmp(const char *,const char *);
 #endif
diff --git a/lib/string.c b/lib/string.c
index 50c2016c2bd8..cab543baf38d 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -270,6 +270,27 @@ char * strncat(char *dest, const char *src, size_t count)
 #endif
 EXPORT_SYMBOL(strncat);
 
+#ifndef __HAVE_ARCH_STRLCAT
+size_t strlcat(char *dest, const char *src, size_t count)
+{
+	size_t dsize = strlen(dest);
+	size_t len = strlen(src);
+	size_t res = dsize + len;
+
+	/* This would be a bug */
+	BUG_ON(dsize >= count);
+
+	dest += dsize;
+	count -= dsize;
+	if (len >= count)
+		len = count-1;
+	__builtin_memcpy(dest, src, len);
+	dest[len] = 0;
+	return res;
+}
+EXPORT_SYMBOL(strlcat);
+#endif
+
 #ifndef __HAVE_ARCH_STRCMP
 /**
  * strcmp - Compare two strings
-- 
2.39.5



