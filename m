Delivery-date: Fri, 07 Nov 2025 13:01:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHL9t-00GHr9-2s
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 13:01:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHL9r-0007h0-St
	for lore@pengutronix.de; Fri, 07 Nov 2025 13:01:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RSOkq7ivTLGaGfh87oG44V0jYEh/SnTb/D2cPp4vs+A=; b=rwXsn/bXAgv28kZ4PLrcLHt+Tq
	GdsL4Qj50tTvb8EhD2oElH8KS7HLxS8eJssMisEMgRbeZNuPb8bLoIfCWsnJav8HCc+idC4DgHOia
	LJTVTx/bE1uQCD+kV5ZEGPDTqGyjr932XDTVpnjpAtIDZIsMvcZpAHyfdimqLgx7zn5SMEAYa+0fx
	z5zEfz/IgdYixlu/XHSaJjYIocJGbfxo+I+osuRoIjYxx12Z/eQCEpTiYF7wpep+pxskI6kn94cpM
	jeRqmVCL2SNMpnr1yG9eEcEc2crOqKE8H4TUNehwAfyFtvYJ/OxvCFB/CsHADrBe2bhUlgbwF+xY4
	T+PJ60cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL9P-0000000HG8U-09HP;
	Fri, 07 Nov 2025 12:01:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL9M-0000000HG79-1Oth
	for barebox@bombadil.infradead.org;
	Fri, 07 Nov 2025 12:01:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=RSOkq7ivTLGaGfh87oG44V0jYEh/SnTb/D2cPp4vs+A=; b=MfjsGchMxnRK1Zx/Fp93RN+bwY
	EVSEcGNfxO4FMgH+ahHVGB+9drd7LDJNvGZRr7VhPrbagt1UdxCb5FKQEc0WEN4j5DvypoyVRZ2qP
	yYJUVKuscTme5SHq1bIvlqnjbnBdBdYjaWkHutqVKY81oulqgf2sPDL22O5CcT5ayTWLzehQXUvTo
	LZztDfcgKmd5+PWmbxncCvpGUXg1gT1Ag36WGii+Z/A8MeXwMkKgchjQg3yEKSwCqWuCR4TFl05ev
	miJAeCFvndBcJuYqVqx89nZLm6TH3FozHDugcbgpwMFdAOYcHBjtOCNmnIL58nbowvjiX7fiGxcUo
	7pE3Xxkg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHKHY-00000006LIt-2od7
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 11:05:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-0007KC-Dz; Fri, 07 Nov 2025 13:00:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-007WR5-0d;
	Fri, 07 Nov 2025 13:00:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-00000000sNa-2Ku9;
	Fri, 07 Nov 2025 13:00:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 07 Nov 2025 13:00:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-memleaks-v1-3-c7b74a2ae9db@pengutronix.de>
References: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
In-Reply-To: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762516853; l=2161;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=6ZvsJ5R2KBZynxrjZZFI3kpozO7U3EW+2x60tky6zoE=;
 b=i6jRhV3ac1o1MxOm3+5UqQq98g3MDz3fkiWRo0mnma+aw1Vu/A+CFcP9DZ2NKYMWhD5mcfmJ4
 fhpTpCRnMqJCep8IfnOzMIE3jQ2/Y4xlqz8aCJRnyKhGlJOPAb/uhtd
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_110529_063243_4ED8129F 
X-CRM114-Status: GOOD (  13.91  )
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
Subject: [PATCH 3/4] bobject: free object name in bobject_del()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have bobject_free() which removes all parameters and frees the
bobject. This works for bobjects which have been allocated with
bobject_alloc(). struct device has a bobject embedded and is freed
along with the device, so bobject_free() is inappropriate and
bobject_del() is called instead. This however doesn't free the bobjects
name which then leaks when the device is freed.

To fix this move the freeing of the bobject name to bobject_del(). To
make this work with CONFIG_PARAMETER disabled drop the static inline
wrapper.

While at it fix the function name in the bobject_del() function
description.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/bobject.h | 4 ----
 lib/bobject.c     | 7 +++----
 2 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/include/bobject.h b/include/bobject.h
index 34cf9d62bc6e3373b7b6b6073640aeceadda7c8f..76c9158b71a6a68994ee3491c781a6d7d7f2f9ac 100644
--- a/include/bobject.h
+++ b/include/bobject.h
@@ -39,10 +39,6 @@ static inline void bobject_init(struct bobject *bobj)
 struct bobject *bobject_alloc(const char *name);
 void bobject_free(struct bobject *bobj);
 
-#ifdef CONFIG_PARAMETER
 void bobject_del(struct bobject *bobj);
-#else
-static inline void bobject_del(struct bobject *bobj) { }
-#endif
 
 #endif
diff --git a/lib/bobject.c b/lib/bobject.c
index eb140b90a2d58db2497ba4b95e1995f4965a1d34..373575eade0c1ceb4c2198cfab1005a8e5230caa 100644
--- a/lib/bobject.c
+++ b/lib/bobject.c
@@ -51,15 +51,13 @@ void bobject_free(struct bobject *bobj)
 	if (!bobj)
 		return;
 
-	free(bobj->name);
 	bobject_del(bobj);
 	free(bobj);
 }
 EXPORT_SYMBOL_GPL(bobject_free);
 
-#ifdef CONFIG_PARAMETER
 /**
- * bobject_remove_parameters - remove all parameters from a bobject and free their
+ * bobject_del - remove all parameters from a bobject and free their
  * memory
  * @param bobject	The barebox object
  */
@@ -69,6 +67,7 @@ void bobject_del(struct bobject *bobj)
 
 	list_for_each_entry_safe(p, n, &bobj->parameters, list)
 		param_remove(p);
+
+	free(bobj->name);
 }
 EXPORT_SYMBOL(bobject_del);
-#endif

-- 
2.47.3



