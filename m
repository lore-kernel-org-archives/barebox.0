Delivery-date: Thu, 26 Sep 2024 13:23:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmb0-002yq4-3C
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:23:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmaz-0002e6-DY
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:23:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6PsnaBDHuJMgVDlW0vC5davzfXlhF3qLCZKqbWPTDpY=; b=i4ua5EYpyA0VIQc3FmTZ/cehH6
	wmPjE/R/54mKgSSgjpSWl7UsL35xI39NvQbLOkyq1QIaXreEY294PsOXzfJkuNdTt+HET0wpTr8fD
	vJUR4a1hmiC7mbvgGVEAOexINeymomdAk5Y/DIze9gCZqN8f9oEfs7vn5Y3FAzKRGv9k1XdkK+bUF
	Vc5b0ntrQkQ69fTYLmiXZqZrRP+/eUJc3UxL2b022n1Ny1eQmPBQiPaoAU51nVYB2mFmAu5DqlCvU
	Lp7oNk+Sj9u7OYlqfqri9wPKk57IHUlh0BY2XbTNl5R8O7JhFQ2lzhuOMWQrZnvq7frlvGsjIPnXW
	o7jMc3Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmaR-00000008DYW-0B9d;
	Thu, 26 Sep 2024 11:23:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmUm-00000008Ccq-0hhU
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:17:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-0006sv-Sy; Thu, 26 Sep 2024 13:17:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-001fju-9I; Thu, 26 Sep 2024 13:17:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-00FhS5-23;
	Thu, 26 Sep 2024 13:17:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 13:17:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-arm-assembly-memmove-v2-9-0a3313d29a66@pengutronix.de>
References: <20240926-arm-assembly-memmove-v2-0-0a3313d29a66@pengutronix.de>
In-Reply-To: <20240926-arm-assembly-memmove-v2-0-0a3313d29a66@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727349426; l=1481;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/dLcDq0rOEgnMIROLOehqA5VmyIlOIqWAY0VloUa9UE=;
 b=MAky55IH4CS9aVuh33BoqoVOSzmpOylyV+nwXlu8ugbCW7792Xs2vqg4CtwtYNOcTjxZyAzJg
 S1WV9/O+yR0Ab3Rp+iv2m4SPer/7tC+7H9iEWFynEf5W57E/ZLSI2Pn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_041716_242580_12E92F8F 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 09/10] lib/string.c: export non optimized memmove as
 __default_memmove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When an architecture defines __HAVE_ARCH_MEMMOVE then the generic
non optimized memmove is not compiled in. It is needed on ARM64
as a fallback in certain cases though, so make it available as
__default_memmove just like done with __default_memcpy already.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



