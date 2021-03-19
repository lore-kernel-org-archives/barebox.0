Delivery-date: Fri, 19 Mar 2021 19:27:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNJqG-0007rz-Iq
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 19:27:24 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNJqF-0000Ho-PP
	for lore@pengutronix.de; Fri, 19 Mar 2021 19:27:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Isq7cgW1i4QLjUjH8aoBWjCpce1p8WQoOZlhx9QCTCI=; b=EYJRHF6dUwwbQ+ws+1OVARntM1
	faVza31narvJYxWK5BmNemNc5GpkYel4eE+dG/z6WmqEuPPrNgasd8WhBl/5iO0wIA4wdJYgH5z3r
	eiKuWLpaFLNPG1Bto7TGrJqtFwQWfT0kihRoartzqXWBocnLfJ8Gr/3jLiPeXqDcFFlLZNXxMehir
	xLgqHu3MCSwS3b44gBopwCxnoJuZD4RwTXuBRYXaMUoqr4Av6ESC3ec9w9gM/OaGq5Y+MhJE6rult
	NYeZmsuz/ntBMtHlFb2vG+2wFRRxfd0s4BMZEC+dzFRE/4kVH3JqkDpU/WEsVqxvk4Y88QUlH2Z1L
	VY5h4vVA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNJpR-007wCB-8o; Fri, 19 Mar 2021 18:26:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNJpK-007wAi-ME
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 18:26:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNJp4-00007D-7d; Fri, 19 Mar 2021 19:26:10 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNJp3-0001Ns-Ul; Fri, 19 Mar 2021 19:26:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Mar 2021 19:26:06 +0100
Message-Id: <20210319182608.5054-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_182627_581210_96F8EFC4 
X-CRM114-Status: GOOD (  11.57  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] glob: use empty globfree when compiling without
 CONFIG_GLOB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already return an error code unconditionally when building with
!CONFIG_GLOB. We need to do the same for globfree. Otherwise,
we run risk of corrupting memory.

This issue exists since the code was first added, but it became
more acute with 90cde3b9ff46 ("startup: Execute init scripts in
alphabetical order"), which added a globfree into the shell init.
Configuration without CONFIG_GLOB would from then on experience
memory corruption during startup.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/glob.h |  6 +++++-
 lib/glob.c     | 24 ++++++++++++------------
 2 files changed, 17 insertions(+), 13 deletions(-)

diff --git a/include/glob.h b/include/glob.h
index 5f532e6652c3..ec0ac66f8765 100644
--- a/include/glob.h
+++ b/include/glob.h
@@ -177,6 +177,7 @@ extern int glob __P ((__const char *__restrict __pattern, int __flags,
 		      int (*__errfunc) (__const char *, int),
 		      glob_t *__restrict __pglob));
 
+extern void globfree __P ((glob_t *__pglob));
 #else
 static inline int glob __P ((__const char *__restrict __pattern, int __flags,
 		      int (*__errfunc) (__const char *, int),
@@ -184,9 +185,12 @@ static inline int glob __P ((__const char *__restrict __pattern, int __flags,
 {
 	return GLOB_ABORTED;
 }
+
+static inline void globfree __P ((glob_t *__pglob))
+{
+}
 #endif
 /* Free storage allocated in PGLOB by a previous `glob' call.  */
-extern void globfree __P ((glob_t *__pglob));
 #else
 extern int glob __P ((__const char *__restrict __pattern, int __flags,
 		      int (*__errfunc) (__const char *, int),
diff --git a/lib/glob.c b/lib/glob.c
index 32f7afdce81b..8523bad9a7ef 100644
--- a/lib/glob.c
+++ b/lib/glob.c
@@ -406,6 +406,18 @@ static int glob_in_dir(const char *pattern, const char *directory,
 	}
 	return nfound == 0 ? GLOB_NOMATCH : 0;
 }
+
+/* Free storage allocated in PGLOB by a previous `glob' call.  */
+void globfree(glob_t *pglob)
+{
+	if (pglob->gl_pathv != NULL) {
+		int i = pglob->gl_flags & GLOB_DOOFFS ? pglob->gl_offs : 0;
+		for (; i < pglob->gl_pathc; ++i)
+			if (pglob->gl_pathv[i] != NULL)
+				free((__ptr_t) pglob->gl_pathv[i]);
+		free((__ptr_t) pglob->gl_pathv);
+	}
+}
 #endif /* CONFIG_GLOB */
 
 #ifdef CONFIG_FAKE_GLOB
@@ -443,15 +455,3 @@ glob_t *pglob;
 	return 0;
 }
 #endif /* CONFIG_FAKE_GLOB */
-
-/* Free storage allocated in PGLOB by a previous `glob' call.  */
-void globfree(glob_t *pglob)
-{
-	if (pglob->gl_pathv != NULL) {
-		int i = pglob->gl_flags & GLOB_DOOFFS ? pglob->gl_offs : 0;
-		for (; i < pglob->gl_pathc; ++i)
-			if (pglob->gl_pathv[i] != NULL)
-				free((__ptr_t) pglob->gl_pathv[i]);
-		free((__ptr_t) pglob->gl_pathv);
-	}
-}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

