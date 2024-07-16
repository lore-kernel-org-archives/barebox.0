Delivery-date: Tue, 16 Jul 2024 13:59:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgpw-005QvK-0e
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:59:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgpv-0001p2-7B
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:59:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n7eYF8Gg08nA8nKiQ+L8l85Jjbs97uKQPe9I9hTFQP0=; b=2PhpRdiQz2UsHR6p/W385QFjv0
	kz6j+2xYMfSNjg+OophPksPkBIQlJPamXXnyNx+HcYeJi11XcgVAxvtpj4WQNAB/dQfk2ly8kMVIt
	tas+pN/QO5OCSiXWCknl7m8acSca2zgzHqmn5bsp8jdiou+ev5H5G6FFghXpfxjW4Or/K8KGdauNE
	T1vBjgZkqdkUkiot+NWkg0+zBByjuAe3U0PJXtZci+d4tgQPTZf7mHllMvA5wmZZQ+zTwyHlqhQlr
	3zw8gXAWnVUscRb7Sqo2eeUDUa9rVRYUL3+qloeaWrb9cr7hmSPkT7+S7bwNPHNzMKJI3LO6sO9ur
	Fhp5LfUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpR-0000000AKhr-325E;
	Tue, 16 Jul 2024 11:58:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpJ-0000000AKc2-27sy
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:58:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpI-0001O9-7T; Tue, 16 Jul 2024 13:58:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-0007Z5-Pn; Tue, 16 Jul 2024 13:58:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-008FTm-2I;
	Tue, 16 Jul 2024 13:58:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:58:30 +0200
Message-Id: <20240716115834.1958413-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
References: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045837_585441_61F7691E 
X-CRM114-Status: GOOD (  13.43  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] module: retire MODULE_SYMBOL_PREFIX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We only ever set MODULE_SYMBOL_PREFIX to the empty string and Linux has
dropped the macro as well in the meantime, so just remove the
definition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/module.c        | 4 ++--
 include/linux/export.h | 4 +---
 include/module.h       | 4 ----
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/common/module.c b/common/module.c
index b669ec09c99f..120fe4c88183 100644
--- a/common/module.c
+++ b/common/module.c
@@ -187,10 +187,10 @@ static void register_module_cmds(Elf32_Shdr *sechdrs, const char *strtab, unsign
 	sym = (void *)sechdrs[symindex].sh_addr;
 
 	for (i = 0; i < numsyms; i++) {
-		if (strcmp(strtab + sym[i].st_name, MODULE_SYMBOL_PREFIX "__barebox_cmd_start") == 0)
+		if (strcmp(strtab + sym[i].st_name, "__barebox_cmd_start") == 0)
 			cmd_start = (struct command * const *)sym[i].st_value;
 
-		if (strcmp(strtab + sym[i].st_name, MODULE_SYMBOL_PREFIX "__barebox_cmd_end") == 0)
+		if (strcmp(strtab + sym[i].st_name, "__barebox_cmd_end") == 0)
 			cmd_end = (struct command * const *)sym[i].st_value;
 	}
 
diff --git a/include/linux/export.h b/include/linux/export.h
index e8ec826366af..0856704018d2 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -4,8 +4,6 @@
 
 #ifndef __ASSEMBLY__
 
-#include <module.h>
-
 #define THIS_MODULE	0
 
 #if defined(CONFIG_MODULES) && !defined(__DISABLE_EXPORTS)
@@ -21,7 +19,7 @@ struct kernel_symbol
 	extern typeof(sym) sym;					\
 	static const char __ustrtab_##sym[]			\
 	__ll_elem(__usymtab_strings)				\
-	= MODULE_SYMBOL_PREFIX #sym;                    	\
+	= #sym;                    	\
 	static const struct kernel_symbol __usymtab_##sym	\
 	__ll_elem(__usymtab)					\
 	= { (unsigned long)&sym, __ustrtab_##sym }
diff --git a/include/module.h b/include/module.h
index 9099e5aeed56..0e81033b20d0 100644
--- a/include/module.h
+++ b/include/module.h
@@ -8,10 +8,6 @@
 #include <linux/export.h>
 #include <linux/list.h>
 
-#ifndef MODULE_SYMBOL_PREFIX
-#define MODULE_SYMBOL_PREFIX
-#endif
-
 #define MODULE_NAME_LEN (64 - sizeof(unsigned long))
 
 /* These are either module local, or the kernel's dummy ones. */
-- 
2.39.2



