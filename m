Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O2ffz-0005kL-M2
	for barebox@lists.infradead.org; Fri, 16 Apr 2010 07:09:20 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Fri, 16 Apr 2010 09:08:49 +0200
Message-Id: <1271401730-30665-2-git-send-email-l.fu@pengutronix.de>
In-Reply-To: <1271401730-30665-1-git-send-email-l.fu@pengutronix.de>
References: <1271401730-30665-1-git-send-email-l.fu@pengutronix.de>
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
Subject: [PATCH 1/2] Makefile: fix detection of absolute environment path
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

From: Marc Kleine-Budde <mkl@pengutronix.de>

string-type config symbols als wrapped in quotes ("), remove them before
trying to detect an absolute path.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 Makefile |   13 +++++++++++--
 1 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index c92c5dd..ec7fb10 100644
--- a/Makefile
+++ b/Makefile
@@ -1293,12 +1293,21 @@ Makefile: ;
 #
 ifdef CONFIG_DEFAULT_ENVIRONMENT
 
-ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
+quote :="#"
+
+define remove_quotes
+$(strip $(subst $(quote),,$(1)))
+endef
+
+CONFIG_DEFAULT_ENVIRONMENT_PATH := $(call remove_quotes, $(CONFIG_DEFAULT_ENVIRONMENT_PATH))
+
+ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),)
 $(error default environment path empty))
 endif
 
 saved-env_path := $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
-CONFIG_DEFAULT_ENVIRONMENT_PATH := $(shell cd $(if $(filter /%,$(CONFIG_DEFAULT_ENVIRONMENT_PATH)),,$(srctree)/)$(CONFIG_DEFAULT_ENVIRONMENT_PATH) && /bin/pwd)
+CONFIG_DEFAULT_ENVIRONMENT_PATH := \
+	$(shell cd "$(if $(filter /%,$(CONFIG_DEFAULT_ENVIRONMENT_PATH)),,$(srctree)/)$(CONFIG_DEFAULT_ENVIRONMENT_PATH)" 2> /dev/null && /bin/pwd)
 $(if $(CONFIG_DEFAULT_ENVIRONMENT_PATH),, \
 	$(error default environment path $(saved-env_path) does not exist))
 
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
