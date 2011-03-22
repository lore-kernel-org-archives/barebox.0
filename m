Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q1vWv-0003YX-3k
	for barebox@lists.infradead.org; Tue, 22 Mar 2011 06:57:26 +0000
Received: by qwi2 with SMTP id 2so5115482qwi.36
	for <barebox@lists.infradead.org>; Mon, 21 Mar 2011 23:57:23 -0700 (PDT)
From: Jon Ringle <jon@ringle.org>
Date: Tue, 22 Mar 2011 02:57:08 -0400
Message-Id: <1300777028-8178-1-git-send-email-jon@ringle.org>
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
Subject: [PATCH] defaultenv: fix empty CONFIG_DEFAULT_ENVIRONMENT_PATH
To: barebox@lists.infradead.org

if CONFIG_DEFAULT_ENVIRONMENT_PATH="" then
$(DEFAULT_ENVIRONMENT_PATH) expands to 'defaultenv "" '
The "" would cause every single file found in $(srctree) to be included in
$(ENV_FILES). This would then cause scripts/mod/sumversions.c to get
recompiled using $(CC) and fail compilation if $(CC) points to a newlib
cross compiler

Signed-off-by: Jon Ringle <jon@ringle.org>
---
 common/Makefile |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index 753455b..cda2ad1 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -30,9 +30,11 @@ ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
 DEFAULT_ENVIRONMENT_PATH = "defaultenv"
 endif
 
+ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
 DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
+endif
 
-ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f {} \;; done)
+ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f '{}' \;; done)
 
 endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
