Delivery-date: Wed, 25 Sep 2024 15:56:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSV8-002cDJ-2h
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 15:56:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSV8-0001Bk-Bs
	for lore@pengutronix.de; Wed, 25 Sep 2024 15:56:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AvuTjt5VDo2I0mORylKE/CrOyvmjts8hLEgNRqs43TA=; b=2Sy/z5jFK14sLIqKj3jJ/1MjLe
	dCcWgTZpe6kfF9Gw8FSLu577FBfTOA5VHI984XEcvZxe1SnnuJVI/UkdLoP0rU4DrxEytbgQxhK5v
	p1Qy53CaRyjociptGoIurS4sTBlwHTzZPxL4N65kcS21P+eZcRJP/8JjQbFJhScapmDeVXFmc8sgh
	SJhz74tGvCNUZgBGs5cO8CekjWifgQfNtwHdyxYP5INaAmn0rrm5a1yeRxJK34LMwW3BZIVFACugz
	ErZ8kRFhsbeNLSuXUEHtPSx7k9t+Ht2z0965oTfMRaVmIn2Y8Q2zZ8mozFyc7wqyzHLdtNtJnhB8s
	o5GMxMNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSUO-00000005Tlr-21k6;
	Wed, 25 Sep 2024 13:55:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSUL-00000005Tiw-1HOu
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 13:55:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-0000gh-Nu; Wed, 25 Sep 2024 15:55:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-001Sjm-4e; Wed, 25 Sep 2024 15:55:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSUI-00DChO-1b;
	Wed, 25 Sep 2024 15:55:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 15:55:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-arm-assembly-memmove-v1-9-0d92103658a0@pengutronix.de>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272525; l=1428;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=wWwtPyB7ihErYM/KGz3YRPkTpXA4A85aFcgPQaSKWok=;
 b=gOEVlMnu6LwWkuhBQbIf4BrXHchKkdG0rJpeK+DQbCHcudXDoR5hRHZ5wIhecUUuBv9UOwq/g
 udNrAEURYugCbsddj5l7Kt57/8zIrSIEb/18rHskPmr4jBArkM+buQ2
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_065529_385274_2AE51771 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/10] lib/string.c: export non optimized memmove as
 __default_memmove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When an architecture defines __HAVE_ARCH_MEMMOVE then the generic
non optimized memmove is not compiled in. It is needed on ARM64
as a fallback in certain cases though, so make it available as
__default_memmove just like done with __default_memcpy already.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/string.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/lib/string.c b/lib/string.c
index 374f326143..98dd3cffdd 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -666,7 +666,6 @@ void *mempcpy(void *dest, const void *src, size_t count)
 }
 EXPORT_SYMBOL(mempcpy);
 
-#ifndef __HAVE_ARCH_MEMMOVE
 /**
  * memmove - Copy one area of memory to another
  * @dest: Where to copy to
@@ -675,7 +674,7 @@ EXPORT_SYMBOL(mempcpy);
  *
  * Unlike memcpy(), memmove() copes with overlapping areas.
  */
-void * memmove(void * dest,const void *src,size_t count)
+void *__default_memmove(void * dest,const void *src,size_t count)
 {
 	char *tmp, *s;
 
@@ -694,6 +693,13 @@ void * memmove(void * dest,const void *src,size_t count)
 
 	return dest;
 }
+EXPORT_SYMBOL(__default_memmove);
+
+#ifndef __HAVE_ARCH_MEMMOVE
+void *memmove(void * dest, const void *src, size_t count)
+	__alias(__default_memmove);
+void *__memmove(void * dest, const void *src, size_t count)
+	__alias(__default_memmove);
 #endif
 EXPORT_SYMBOL(memmove);
 

-- 
2.39.5



