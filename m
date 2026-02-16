Delivery-date: Mon, 16 Feb 2026 09:42:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruBV-002G1a-0F
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:42:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruBU-0000sE-Ni
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:42:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZpgEj2j2w6wXNvABxVekxTNC84giiTpQcqBqqr4jRew=; b=luteD94E2aA05EjDokBUO8+TUU
	xKYQCrfMEhczzNpdVDjqvTAOf8hD/r14aNHKWnudb4hpsQHfPPjG+xRF1ebEAKkny5Fi0591Zav2V
	cAvK0b9PZ5kZ4u8siZZomip/8zvm3W4G419JdVzjMxnp457PjJB7DyNcw39A9BiO+uQvY3PcGC5Hb
	XdzO+5WMP8WXiPmuygRvEqQY9yvrRuFFfU6spggcalT+TQWoGsQSCzDyRHiUcEWoQ+ewHSD1JDUCx
	NIp5F+kIbHJvHzYHQ2GsdLcG7wkHJkErXkA1UCuo9HRxpmFPaNGgBvnIBFCjoeGaTTigHLkoStLhm
	3+YLDP+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruB9-00000006AXO-09WH;
	Mon, 16 Feb 2026 08:42:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruAy-00000006AUf-47Ne
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:42:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruAp-0000ds-FP; Mon, 16 Feb 2026 09:41:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruAn-0012BX-2x;
	Mon, 16 Feb 2026 09:41:43 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruAp-0000000EsaY-0hKO;
	Mon, 16 Feb 2026 09:41:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:41:38 +0100
Message-ID: <20260216084142.3546363-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084142.3546363-1-a.fatoum@pengutronix.de>
References: <20260216084142.3546363-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004157_954638_1F02E830 
X-CRM114-Status: GOOD (  10.33  )
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
Subject: [PATCH master 3/4] of: fdt: fix double free in fdt_ensure_space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fdt_ensure_space() frees the original buffer on memalign_realloc()
failure, but on error, the buffer is already freed by
memalign_realloc() unlike realloc().

Fix this by aligning memalign_realloc() behavior with normal realloc()
and adapting callers accordingly.

Fixes: dd36494ae2 ("of: fdt: fix memory leak in fdt_ensure_space")
Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
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



