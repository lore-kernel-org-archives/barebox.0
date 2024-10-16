Delivery-date: Wed, 16 Oct 2024 10:58:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zr2-004zuu-18
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 10:58:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zr1-0004Yq-Pq
	for lore@pengutronix.de; Wed, 16 Oct 2024 10:58:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=khvUYpkYnYX8GiaBIw7JDoZnm18J/mV4JE5KllQFUSs=; b=sd8YwT3oPKk9q6SP9cpddQo1RA
	0TNXIu4LSGU8qhFsXZJBstHplIFE289aiyQRikp2XdKa94358zfzPaP1vnPXtZXlVWnsADSbSx/nT
	8pTdwzQ5dsHsaHvhVBrgjggN3YD50ScNTRe7A2e+z/GHXcXfLGs2SeXAqEGn8Uy48VixQFrlDDWXa
	XKXzzleFQYxQj1emALSmp5HpkSvHOb6iV9pVRIfH6+qF0V+1W0GK64j080yJCYqv1iI57ZL7VlXfw
	2PgcxyVBlyBJm94qo9BKtR2poUgrNbcd2IdGOVMmPmiRpP9u12TsE4+tVgNIoVMPjRalxUmnyaTPK
	waN0W9qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zqZ-0000000B8B8-1BjR;
	Wed, 16 Oct 2024 08:57:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zpD-0000000B7mv-037S
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 08:56:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zpB-00045q-Lk; Wed, 16 Oct 2024 10:56:09 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zpB-002EHH-9K; Wed, 16 Oct 2024 10:56:09 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zpB-00Gcuc-0f;
	Wed, 16 Oct 2024 10:56:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 10:56:08 +0200
Message-Id: <20241016085608.3962813-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016085608.3962813-1-a.fatoum@pengutronix.de>
References: <20241016085608.3962813-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_015611_072353_1B0FB8EE 
X-CRM114-Status: GOOD (  10.61  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] string: support overriding strchr/strrchr/strstr macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Architecture code may want to override these functions, e.g.
in the case that they are overridden due to use of libfuzzer.

Add #ifndefs to support that and move up the architecture-specific
header, so the overrides may work.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/string.h | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/include/linux/string.h b/include/linux/string.h
index 4aa11555a005..3b8775c9a57d 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -6,6 +6,10 @@
 #include <linux/types.h>	/* for size_t */
 #include <linux/stddef.h>	/* for NULL */
 #include <linux/overflow.h>	/* for array_size */
+/*
+ * Include machine specific inline routines
+ */
+#include <asm/string.h>
 
 #ifdef __cplusplus
 extern "C" {
@@ -16,27 +20,28 @@ extern char * strsep(char **,const char *);
 extern __kernel_size_t strspn(const char *,const char *);
 
 
+#ifndef strchr
 #define strchr(s, c) ({ \
 	(typeof(&(s)[0]))(_strchr((s), c)); \
 	})
+#endif
 
+#ifndef strrchr
 #define strrchr(s, c) ({ \
 	(typeof(&(s)[0]))(_strrchr((s), c)); \
 	})
+#endif
 
+#ifndef strstr
 #define strstr(s1, s2) ({ \
 	(typeof(&(s1)[0]))(_strstr((s1), (s2))); \
 	})
+#endif
 
 #ifndef __HAVE_ARCH_STRCHRNUL
 extern char * strchrnul(const char *,int);
 #endif
 
-/*
- * Include machine specific inline routines
- */
-#include <asm/string.h>
-
 #ifndef __HAVE_ARCH_STRCPY
 extern char * strcpy(char *,const char *);
 #endif
-- 
2.39.5



