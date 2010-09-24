Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz2bO-0004vL-Re
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 07:21:51 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Sep 2010 09:20:21 +0200
Message-Id: <1285312822-25116-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285312822-25116-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285312822-25116-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] ipe337: fix default env
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/blackfin/configs/ipe337_defconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index 34c1089..ffd144c 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -2,7 +2,7 @@ CONFIG_TEXT_BASE=0x03f00000
 CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/blackin/boards/ipe337/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/blackfin/boards/ipe337/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
