Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eTu5d-0002kx-17
 for barebox@lists.infradead.org; Tue, 26 Dec 2017 18:36:38 +0000
Received: from ravnborg.org (126.158-248-196.customer.lyse.net
 [158.248.196.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 78FAB8024D
 for <barebox@lists.infradead.org>; Tue, 26 Dec 2017 19:36:25 +0100 (CET)
Date: Tue, 26 Dec 2017 19:36:24 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171226183624.GC28706@ravnborg.org>
References: <20171226183236.GA26708@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171226183236.GA26708@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] build: fix that the bbenv file is always rebuilt
To: Barebox List <barebox@lists.infradead.org>

From ac9ca6505d5b887c351117d9c033c8a76cc77125 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 26 Dec 2017 18:05:14 +0100
Subject: [PATCH 3/4] build: fix that the bbenv file is always rebuilt

Use if_changed in rule for bbenv file.
This avoids re-builds.
The target is already assigned to extra-y - so the
kbuild logic will work as expected.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index b084bacab..d202a7299 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -292,7 +292,7 @@ quiet_cmd_env = ENV     $@
 cmd_env=$(srctree)/scripts/genenv $(srctree) $(objtree) $@ $<
 
 %.bbenv$(DEFAULT_COMPRESSION_SUFFIX): % FORCE
-	$(call cmd,env)
+	$(call if_changed,env)
 
 # Bzip2
 # ---------------------------------------------------------------------------
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
