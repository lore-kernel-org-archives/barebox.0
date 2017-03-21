Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqHSK-0006ek-QG
 for barebox@lists.infradead.org; Tue, 21 Mar 2017 10:56:02 +0000
Received: by mail-lf0-x242.google.com with SMTP id y193so12706451lfd.1
 for <barebox@lists.infradead.org>; Tue, 21 Mar 2017 03:55:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 21 Mar 2017 13:55:30 +0300
Message-Id: <20170321105531.11896-3-antonynpavlov@gmail.com>
In-Reply-To: <20170321105531.11896-1-antonynpavlov@gmail.com>
References: <20170321105531.11896-1-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] tags: Do not try to index defconfigs
To: barebox@lists.infradead.org

This is an adoption of the linux kernel commit

| commit ab9ca615f5f4053417cba464015bf2d7334a2371
| Author: Michal Marek <mmarek@suse.com>
| Date:   Thu Oct 15 11:14:02 2015 +0200
|
|     tags: Do not try to index defconfigs
|
|     The defconfig files are in predictable locations, so there is no need to
|     index them. Plus, the script was only looking for files named
|     'defconfig', which only works on a few architectures nowadays.
|
|     Signed-off-by: Michal Marek <mmarek@suse.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/tags.sh | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/scripts/tags.sh b/scripts/tags.sh
index c3ce5f945..22a5cc4bf 100755
--- a/scripts/tags.sh
+++ b/scripts/tags.sh
@@ -103,11 +103,6 @@ all_kconfigs()
 	find_other_sources 'Kconfig*'
 }
 
-all_defconfigs()
-{
-	find_sources $ALLSOURCE_ARCHS "defconfig"
-}
-
 docscope()
 {
 	(echo \-k; echo \-q; all_sources) > cscope.files
@@ -164,10 +159,6 @@ exuberant()
 	all_kconfigs | xargs $1 -a                              \
 	--langdef=kconfig --language-force=kconfig              \
 	--regex-kconfig='/^[[:blank:]]*(menu|)config[[:blank:]]+([[:alnum:]_]+)/CONFIG_\2/'
-
-	all_defconfigs | xargs -r $1 -a                         \
-	--langdef=dotconfig --language-force=dotconfig          \
-	--regex-dotconfig='/^#?[[:blank:]]*(CONFIG_[[:alnum:]_]+)/\1/'
 }
 
 emacs()
@@ -206,9 +197,6 @@ emacs()
 
 	all_kconfigs | xargs $1 -a                              \
 	--regex='/^[ \t]*\(\(menu\)*config\)[ \t]+\([a-zA-Z0-9_]+\)/CONFIG_\3/'
-
-	all_defconfigs | xargs -r $1 -a                         \
-	--regex='/^#?[ \t]?\(CONFIG_[a-zA-Z0-9_]+\)/\1/'
 }
 
 xtags()
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
