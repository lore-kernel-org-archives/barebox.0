Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lqY-0005rK-DX
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:50:19 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 2ECA7DC0FCF
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 06:55:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:50:18 +0200
Message-Id: <1345783818-28784-18-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 18/18] defautenv: add support of symlink
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Makefile b/common/Makefile
index d74dffb..df9f301 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -58,7 +58,7 @@ ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
 DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
 endif
 
-ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f '{}' \;; done)
+ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f ; done)
 
 endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
