Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwSlf-00035I-QA
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 04:41:48 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 17 Sep 2010 06:40:32 +0200
Message-Id: <1284698436-1097-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] gitignore: update generated link and file
To: barebox@lists.infradead.org

include/linux/autoconf.h is now generated in include/generated
include/asm-sandbox/arch does not exist anymore

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 .gitignore |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/.gitignore b/.gitignore
index 3577153..7c60cc2 100644
--- a/.gitignore
+++ b/.gitignore
@@ -45,11 +45,10 @@ barebox_default_env
 include/asm
 include/asm-*/asm-offsets.h
 include/config
-include/linux/autoconf.h
 include/linux/compile.h
 include/linux/version.h
 include/linux/utsrelease.h
-include/asm-sandbox/arch
+include/generated
 
 # stgit generated dirs
 patches-*
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
