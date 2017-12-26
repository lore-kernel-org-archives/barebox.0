Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eTu66-0002ty-6C
 for barebox@lists.infradead.org; Tue, 26 Dec 2017 18:37:08 +0000
Received: from ravnborg.org (126.158-248-196.customer.lyse.net
 [158.248.196.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id B958920035
 for <barebox@lists.infradead.org>; Tue, 26 Dec 2017 19:36:54 +0100 (CET)
Date: Tue, 26 Dec 2017 19:36:53 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171226183653.GD28706@ravnborg.org>
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
Subject: [PATCH 4/4] build: fix that LZO file is always rebuilt
To: Barebox List <barebox@lists.infradead.org>

From e398a00f84db33ea5ae7f6ee12c54511ef7a94fc Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 26 Dec 2017 18:09:35 +0100
Subject: [PATCH 4/4] build: fix that LZO file is always rebuilt

Port the make-cmd from linux kernel.
with the updated version $$ is porperly escaped, thus
the LZO rule works as intended.
And we avoid rebuilds when not required

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 scripts/Kbuild.include | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 310dcdc94..fb3fa88fb 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -205,11 +205,13 @@ else
 arg-check = $(if $(strip $(cmd_$@)),,1)
 endif
 
-# >'< substitution is for echo to work,
-# >$< substitution to preserve $ when reloading .cmd file
-# note: when using inline perl scripts [perl -e '...$$t=1;...']
-# in $(cmd_xxx) double $$ your perl vars
-make-cmd = $(subst \\,\\\\,$(subst \#,\\\#,$(subst $$,$$$$,$(call escsq,$(cmd_$(1))))))
+# Replace >$< with >$$< to preserve $ when reloading the .cmd file
+# (needed for make)
+# Replace >#< with >\#< to avoid starting a comment in the .cmd file
+# (needed for make)
+# Replace >'< with >'\''< to be able to enclose the whole string in '...'
+# (needed for the shell)
+make-cmd = $(call escsq,$(subst \#,\\\#,$(subst $$,$$$$,$(cmd_$(1)))))
 
 # Find any prerequisites that is newer than target or that does not exist.
 # PHONY targets skipped in both cases.
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
