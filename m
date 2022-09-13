Delivery-date: Tue, 13 Sep 2022 12:57:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY3bt-003Yto-T1
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 12:57:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY3bs-0008SW-Da
	for lore@pengutronix.de; Tue, 13 Sep 2022 12:57:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LSyc+oOgoAGbsX199ylcIfUXg/SxgZGXWesyJKW23W0=; b=CuCNPY3/thogK0A7UXihXDOSvv
	bwef8kk2U+2+Ftzja4+Ha4FqVaoOFFCN6nxypZkOmb1Gwluj2A8mZvAheXMj9+1HBraQrthcH5NRQ
	SHrc9mrBvWqMVlQB67u2WOAcofmXyRe919c0Bt9WNTkvjawmmpEaM6xrYPW5P17IpHVNlYBgfwNTF
	V6P4Ezo/yr5kdvBOXKTchhP0Cn8mifMlTf8neOdx1ysKWhXhaGtCOYK/T4W2zyJPCyt0zP4ZtjSkx
	jwiu03U+XWG1ir9X8YLTxgRQ/EAo+5fMDqrqjs3CWOhQLhcj8AE6pDYawK0Wf2jwI/gvaiz053UB/
	RuWwi9VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY3Zs-006zkh-Nv; Tue, 13 Sep 2022 10:55:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY3Zd-006zMa-3E
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 10:55:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY3Za-0007yr-14; Tue, 13 Sep 2022 12:55:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oY3Za-000Tqj-PT; Tue, 13 Sep 2022 12:55:21 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oY3ZY-00CO6q-Ar; Tue, 13 Sep 2022 12:55:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Sep 2022 12:55:19 +0200
Message-Id: <20220913105519.2952569-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_035525_200161_8A2869D6 
X-CRM114-Status: GOOD (  10.83  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ubifs: Fix pointer type mismatch in gzip decompressor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

deflate_decompress() takes a unsigned int * for the out_len argument
whereas ubifs passes a size_t * argument. Adjust the argument type
accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/ubifs.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 0b4f3de773..71ccd2c0e7 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -46,7 +46,14 @@ static ZSTD_DCtx *ubifs_zstd_cctx;
 static int gzip_decompress(const unsigned char *in, size_t in_len,
 			   unsigned char *out, size_t *out_len)
 {
-	return deflate_decompress(&ubifs_zlib_stream, in, in_len, out, out_len);
+	unsigned int olen;
+	int ret;
+
+	ret = deflate_decompress(&ubifs_zlib_stream, in, in_len, out, &olen);
+
+	*out_len = olen;
+
+	return ret;
 }
 #endif
 
-- 
2.30.2



