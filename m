Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqHSM-0006el-ET
 for barebox@lists.infradead.org; Tue, 21 Mar 2017 10:56:04 +0000
Received: by mail-lf0-x244.google.com with SMTP id y193so12706480lfd.1
 for <barebox@lists.infradead.org>; Tue, 21 Mar 2017 03:55:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 21 Mar 2017 13:55:31 +0300
Message-Id: <20170321105531.11896-4-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] tags: Process Kconfig files in a single pass
To: barebox@lists.infradead.org

This is an adoption of the linux kernel commit

| commit a281b8569e9eb4beb1651c92145271555ba05f0c
| Author: Michal Marek <mmarek@suse.com>
| Date:   Wed Oct 14 11:17:13 2015 +0200
|
|     tags: Process Kconfig files in a single pass
|
|     Signed-off-by: Michal Marek <mmarek@suse.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/tags.sh | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/scripts/tags.sh b/scripts/tags.sh
index 22a5cc4bf..8ae44642a 100755
--- a/scripts/tags.sh
+++ b/scripts/tags.sh
@@ -154,10 +154,7 @@ exuberant()
 
 	all_kconfigs | xargs $1 -a                              \
 	--langdef=kconfig --language-force=kconfig              \
-	--regex-kconfig='/^[[:blank:]]*(menu|)config[[:blank:]]+([[:alnum:]_]+)/\2/'
-
-	all_kconfigs | xargs $1 -a                              \
-	--langdef=kconfig --language-force=kconfig              \
+	--regex-kconfig='/^[[:blank:]]*(menu|)config[[:blank:]]+([[:alnum:]_]+)/\2/' \
 	--regex-kconfig='/^[[:blank:]]*(menu|)config[[:blank:]]+([[:alnum:]_]+)/CONFIG_\2/'
 }
 
@@ -193,9 +190,7 @@ emacs()
 	--regex='/PCI_OP_WRITE\(([a-z]*[a-z]).*[1-4]\)/pci_bus_write_config_\1/'
 
 	all_kconfigs | xargs $1 -a                              \
-	--regex='/^[ \t]*\(\(menu\)*config\)[ \t]+\([a-zA-Z0-9_]+\)/\3/'
-
-	all_kconfigs | xargs $1 -a                              \
+	--regex='/^[ \t]*\(\(menu\)*config\)[ \t]+\([a-zA-Z0-9_]+\)/\3/' \
 	--regex='/^[ \t]*\(\(menu\)*config\)[ \t]+\([a-zA-Z0-9_]+\)/CONFIG_\3/'
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
