Delivery-date: Thu, 21 Sep 2023 16:18:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjKVx-005xqP-9g
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 16:18:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjKVv-0001yZ-8v
	for lore@pengutronix.de; Thu, 21 Sep 2023 16:18:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=o+HtQtgWJVsQeZXsq+QKeYEKwSQ0kpeiIuyPlAmfS5c=; b=HvmgeiPl8l1+723T+HanzB4d1J
	T2rTgJk/GV54CuGmWdr2S4gQqxI9APBiWfsCoDaynmHvOKeF5nGJNYxerslebQgdqs5cGImrfJ8kX
	P8B3fsiKZpD25DufP0h+s4QCkF4O0fvcweLF4lghuU2CpnsefHxdnIVEYV3cBGcPAoPyELIJ2ouYf
	3weTDpMnJ+JA+n+/OZ4W1l9mgmvhMovddiFhF1issXfC06VSHh92VpU7Q7BhwMT4lMznw1oeNthqX
	9BckbcOM4loUPRA8PVPPkxoNHBt8MuApXW5iuOQlNHPfVEawCF8Bv07hl9leHrArwVAOAtctOyU6D
	GRM/U96g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKUT-006EhZ-35;
	Thu, 21 Sep 2023 14:17:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKUN-006Eg5-2n
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 14:17:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjKUL-0001TY-Ob; Thu, 21 Sep 2023 16:17:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjKUL-007wzs-CC; Thu, 21 Sep 2023 16:17:05 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjKUL-001AG4-15;
	Thu, 21 Sep 2023 16:17:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 16:16:28 +0200
Message-Id: <20230921141628.277661-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_071707_934364_620DB908 
X-CRM114-Status: UNSURE (   9.52  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] globalvar: add a globalvar_get helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have functions to set global variables, but none to get them, but
having a globalvar_get helper could be useful to get code size down when
global variables are disabled, as globalvar_get("var") would be optimized
out, while getenv("global.var") wouldn't. Therefore, add the helper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/globalvar.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/globalvar.h b/include/globalvar.h
index 36a7c7006c76..5fdb70fca911 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -10,6 +10,12 @@
 extern struct device global_device;
 
 #ifdef CONFIG_GLOBALVAR
+
+static inline const char *globalvar_get(const char *name)
+{
+	return dev_get_param(&global_device, name);
+}
+
 int globalvar_add_simple(const char *name, const char *value);
 
 void globalvar_remove(const char *name);
@@ -41,6 +47,11 @@ void dev_param_init_from_nv(struct device *dev, const char *name);
 void globalvar_alias_deprecated(const char *newname, const char *oldname);
 
 #else
+static inline const char *globalvar_get(const char *name)
+{
+	return NULL;
+}
+
 static inline int globalvar_add_simple(const char *name, const char *value)
 {
 	return 0;
-- 
2.39.2



