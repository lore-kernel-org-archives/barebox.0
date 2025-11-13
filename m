Delivery-date: Thu, 13 Nov 2025 12:09:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJVCZ-000WRs-28
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 12:09:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJVCZ-0002zH-4R
	for lore@pengutronix.de; Thu, 13 Nov 2025 12:09:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vMGQrIDC0jlt+8fBWJymwnPQ48v45yyGh0bQN3cZuLg=; b=hM0vRLFCNB69xPcp0UCHBEgRPN
	UUQA76mmSiUMAm3IkPDvEj5I2S31kU3iqWC4CENJAwNJuJRQ0X4lpXaNLRkTxls0uOh3N2nirh9ib
	rptcf2+cw5yG+uNWpn9sBcCCLNb5K7CFO//JqJfmDVaBv6e27WQX+kYzkUNTvHYrN1BgHuqGWFpJV
	mKdtaQsBHtLhzQKxe8t94Xf1ROGhI+ur0nlf8f18q5efLr34cYlA02n9XIb8HlSS04xR6NxndkBqJ
	G3Cj54hl5W/52BUOU7T34Foe4KPfUVyMAfJP8zs8swPcQJ9m9JxjTelhkVwuDDdxr1jfiI5hrSXZJ
	dKjk/hLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJVBv-0000000AMln-0J7C;
	Thu, 13 Nov 2025 11:08:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJVBs-0000000AMlM-0ZUG
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 11:08:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJVBq-0002tP-2b; Thu, 13 Nov 2025 12:08:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJVBp-000FHS-2s;
	Thu, 13 Nov 2025 12:08:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJVBq-00000009UbP-0uOH;
	Thu, 13 Nov 2025 12:08:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 13 Nov 2025 12:08:31 +0100
Message-ID: <20251113110831.2262580-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_030836_194738_F31E389A 
X-CRM114-Status: GOOD (  11.80  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] device: use free_const to free device/bobject name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A device name (and thus a bobject name) may be statically allocated. Use
free_const() to handle this gracefully.

bobject_set_name() called from dev_set_name() also assumes that
dev->name is allocated and frees the existing name. Use free_const()
here as well.

Fixes: 1e91e857bf ("bobject: free object name in bobject_del()")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/bobject.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/bobject.c b/lib/bobject.c
index 373575eade..02cf6926c1 100644
--- a/lib/bobject.c
+++ b/lib/bobject.c
@@ -29,7 +29,7 @@ int bobject_set_name(bobject_t bobj, const char *fmt, ...)
 	 * Free old pointer, we do this after vasprintf call in case
 	 * old device name was in one of vargs
 	 */
-	free(oldname);
+	free_const(oldname);
 
 	return WARN_ON(err < 0) ? err : 0;
 }
@@ -68,6 +68,6 @@ void bobject_del(struct bobject *bobj)
 	list_for_each_entry_safe(p, n, &bobj->parameters, list)
 		param_remove(p);
 
-	free(bobj->name);
+	free_const(bobj->name);
 }
 EXPORT_SYMBOL(bobject_del);
-- 
2.47.3



