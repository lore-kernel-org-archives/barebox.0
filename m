Delivery-date: Wed, 26 May 2021 11:19:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llphb-00068Z-1b
	for lore@lore.pengutronix.de; Wed, 26 May 2021 11:19:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llphZ-0001Th-Mf
	for lore@pengutronix.de; Wed, 26 May 2021 11:19:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YWE0V0BhK2+mpeUYiNHUT/MLtr9zTzkdP1j9MEuSj/c=; b=e94aZyV0gip8QW
	CEYBKkEz31o7x2pGRJOOx8Gop41bRdt/WUvB7RcjmQmjdIlHP+YWZErFNo43fxAhUWQCopcEI41eJ
	dn9c5WytylxZ5+sqhHaR2fGt0EUa3k2zs5QsiDfcOS0oJiHxDQerPtFYRSFf3kyM6w9vXUS9Ofw61
	HJ27AKX6Sedgc00VimN4R9O+jQXyOCxtTocq8GiMOoDE7FDBLo3tY+4onQNoP/FzZs2oCb6cW0EtG
	6W4gkwrnWamRW3H0JBb/nVZnRXYnAPl4ORbZtyNN3a/czeBQK+lBdUikpF2NVvc0S3esYdhOopSbp
	I3R0fst7YrVjI691bqbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llpfk-00CnlJ-9e; Wed, 26 May 2021 09:17:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llpQg-00Chaw-QV
 for barebox@lists.infradead.org; Wed, 26 May 2021 09:02:20 +0000
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1llpQe-0007l4-H7
 for barebox@lists.infradead.org; Wed, 26 May 2021 11:02:16 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 26 May 2021 11:02:15 +0200
Message-Id: <20210526090216.4003977-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_020218_888278_223FE473 
X-CRM114-Status: GOOD (  10.57  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] uncompress: use read_full to fill decompression buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The decompression algorithms want all of the requested buffer size
to be filled and don't cope with less bytes being returned.
Use read_full to satisfy this requirement.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 lib/uncompress.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/uncompress.c b/lib/uncompress.c
index c47d319dbb5f..5c0d1e9f4d66 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -24,6 +24,7 @@
 #include <filetype.h>
 #include <malloc.h>
 #include <fs.h>
+#include <libfile.h>
 
 static void *uncompress_buf;
 static unsigned int uncompress_size;
@@ -142,7 +143,7 @@ static int uncompress_infd, uncompress_outfd;
 
 static int fill_fd(void *buf, unsigned int len)
 {
-	return read(uncompress_infd, buf, len);
+	return read_full(uncompress_infd, buf, len);
 }
 
 static int flush_fd(void *buf, unsigned int len)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

