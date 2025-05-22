Delivery-date: Thu, 22 May 2025 21:00:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIB9F-001cpp-1j
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 21:00:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIB9E-0000Pi-Vv
	for lore@pengutronix.de; Thu, 22 May 2025 21:00:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7wXppzNlOZAiu7pxqMw+0Mma9wzXEDZWy9KECzLIUlg=; b=VXdL00FCpfjKt+zFIhXpvwzuRo
	77EgwCtOQtwnVuftNzHSaV/uloPu7qOKRBcwIyADsX12hcEPEuKrPTWcoP7WouuHEsDv9KNgXQl1L
	P+SBLLc8/o0cZlDx2uFFZmz4kyToZJG2jCIDdUSdgty7OdnnQUKRWcXqE9XSf0SOxQwUan0WTd3tO
	S/eAqJ5ucbTum7OBaP+4aUsyyeuu0ZnOUo2RUjdL3ym8FwMpbD5bjXiv6iZhJt8N2arriPwoUAj2W
	1h2OTxWCrEByDOiL81z/zzZZu7AyJHm1WdHDeAcKdMVUObIlWR3bUuUTyPEBzZR9QgyPqLdn/PGDX
	oNxPimBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIB8g-00000001vYz-0kpd;
	Thu, 22 May 2025 18:59:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIB8X-00000001vXd-1blE
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 18:59:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uIB8G-0008Gz-7F; Thu, 22 May 2025 20:59:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uIB8G-000mMX-02;
	Thu, 22 May 2025 20:59:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uIB8F-002Agr-2z;
	Thu, 22 May 2025 20:59:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 May 2025 20:59:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-uncompress-fixes-v1-2-18e796fa5e45@pengutronix.de>
References: <20250522-uncompress-fixes-v1-0-18e796fa5e45@pengutronix.de>
In-Reply-To: <20250522-uncompress-fixes-v1-0-18e796fa5e45@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747940347; l=1829;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ybk4JWI5f6ydPvEmAcWI02l1xZSHT8lKnR5M/dR7ozs=;
 b=OXUxl66H8Fg0Yzs3e0D+E5jT7J+u8Vs7afUYqFqrMT8e16hdGvZvYtRPq062xbBfHTC2JjHZ9
 gyyAHfFwlQHBlfRZRv3CG5H8Gy2tiXEdQ5tSA3+nUhsiNfWMHoGfK+h
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_115925_422935_64611CE2 
X-CRM114-Status: GOOD (  12.90  )
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
Subject: [PATCH 2/2] uncompress: fix prebuffering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When uncompressing from a fill function we prebuffer the first 32 bytes
in order to detect the filetype. This prebuffer is then fed back into
the input stream in uncompress_fill().

This currently fails when uncompress_fill() crosses the prebuffered
size and continues reading from the original fill function. Advance
the buffer in this case to append the data to the buffer instead of
overwriting the data we already copied from the prebuffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/uncompress.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/lib/uncompress.c b/lib/uncompress.c
index c284bcc6ba5649419a226af14a78f42142cf5e74..6a4e5a34df8a69d22ae51b9fb7423f7a052ef480 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -45,6 +45,7 @@ static long uncompress_fill(void *buf, unsigned long len)
 		int now = min(len, uncompress_size);
 
 		memcpy(buf, uncompress_buf, now);
+		uncompress_buf += now;
 		uncompress_size -= now;
 		len -= now;
 		total = now;
@@ -77,17 +78,17 @@ int uncompress(unsigned char *inbuf, long len,
             void(*error)(char *x));
 	int ret;
 	char *err;
+	void *uncompress_buf_free = NULL;
 
 	if (inbuf) {
 		ft = file_detect_compression_type(inbuf, len);
-		uncompress_buf = NULL;
 		uncompress_size = 0;
 	} else {
 		if (!fill)
 			return -EINVAL;
 
 		uncompress_fill_fn = fill;
-		uncompress_buf = xzalloc(32);
+		uncompress_buf_free = uncompress_buf = xzalloc(32);
 		uncompress_size = 32;
 
 		ret = fill(uncompress_buf, 32);
@@ -142,7 +143,7 @@ int uncompress(unsigned char *inbuf, long len,
 	ret = compfn(inbuf, len, fill ? uncompress_fill : NULL,
 			flush, output, pos, error_fn);
 err:
-	free(uncompress_buf);
+	free(uncompress_buf_free);
 
 	return ret;
 }

-- 
2.39.5



