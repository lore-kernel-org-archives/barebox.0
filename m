Delivery-date: Sun, 15 Feb 2026 18:24:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrfrZ-0022Cb-0R
	for lore@lore.pengutronix.de;
	Sun, 15 Feb 2026 18:24:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrfrZ-0008Rt-Ej
	for lore@pengutronix.de; Sun, 15 Feb 2026 18:24:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=o1fkuRVsttUqLvHz3CtS8HHqFLS0K6SUW8rnI2d+Btk=; b=r86d+yDRwFxKrAB0XXU2mSc3Rq
	k1RsRo4DnUpTBRMYAjmHiuR53DuRLnZ62cn+UllzINF7ilr6RG42FDHB0ECXCh2Moy/enx9Sn1aQh
	BZP1mpz8pzMxpDeXqHLQPdcjQh9T+5JYob2eU9Ou4bTVcRd6i7CVxxt2B1ofu03InaWjK3v1x7GVW
	6caUzUq0A90v2PP2Q56UGGedvKkrOW9+hA1ADS8RuLsQ+IFBpU0j3cisuTqJMxY6OcfTKxoEKLNjA
	SZrOMg48wMHTJKklMBOcHsu1fuF6B41RdRzeOs2st+wQ/jpYBHfepQqjGJi8hv/LfMhKrDuAXNzsk
	aovYTqwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrfrB-00000005YGg-29fp;
	Sun, 15 Feb 2026 17:24:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrfr9-00000005YFm-0HcD
	for barebox@lists.infradead.org;
	Sun, 15 Feb 2026 17:24:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrfr7-0008Nq-2r; Sun, 15 Feb 2026 18:24:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrfr5-000vrU-12;
	Sun, 15 Feb 2026 18:24:24 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrfr6-0000000B9YA-2O3G;
	Sun, 15 Feb 2026 18:24:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Sun, 15 Feb 2026 18:24:19 +0100
Message-ID: <20260215172423.2658304-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_092427_132423_6E3341E4 
X-CRM114-Status: UNSURE (   9.94  )
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
X-Spam-Status: No, score=-1.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: fdt: fix double free in fdt_ensure_space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fdt_ensure_space() frees the original buffer on memalign_realloc()
failure, but on error, the buffer is already freed by
memalign_realloc() unlike realloc().

Fix this by aligning memalign_realloc() behavior with normal realloc()
and adapting callers accordingly.

Fixes: dd36494ae2 ("of: fdt: fix memory leak in fdt_ensure_space")
Reported-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index ea763cf7a52a..658718d4e238 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -421,10 +421,8 @@ static void *memalign_realloc(void *orig, size_t oldsize, size_t newsize)
 		return memalign(align, newsize);
 
 	newbuf = memalign(align, newsize);
-	if (!newbuf) {
-		free(orig);
+	if (!newbuf)
 		return NULL;
-	}
 
 	memcpy(newbuf, orig, oldsize);
 	free(orig);
@@ -606,10 +604,13 @@ void *of_flatten_dtb(struct device_node *node)
 	header.size_dt_strings = cpu_to_fdt32(fdt.str_nextofs);
 
 	if (fdt.dt_size - fdt.dt_nextofs < fdt.str_nextofs) {
-		fdt.dt = memalign_realloc(fdt.dt, fdt.dt_size,
+		void *newmem;
+
+		newmem = memalign_realloc(fdt.dt, fdt.dt_size,
 				fdt.dt_nextofs + fdt.str_nextofs);
-		if (!fdt.dt)
+		if (!newmem)
 			goto out_free;
+		fdt.dt = newmem;
 	}
 
 	memcpy(fdt.dt + fdt.dt_nextofs, fdt.strings, fdt.str_nextofs);
-- 
2.47.3



