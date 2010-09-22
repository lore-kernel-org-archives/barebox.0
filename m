Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OyMkP-0002gf-5l
	for barebox@lists.infradead.org; Wed, 22 Sep 2010 10:40:22 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 22 Sep 2010 12:38:55 +0200
Message-Id: <1285151935-884-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285135558-7838-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285135558-7838-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] nhk8815: rename nand parts uboot as barebox
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/nhk8815/env/config |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/nhk8815/env/config b/arch/arm/boards/nhk8815/env/config
index 2b50b25..7e7fc45 100644
--- a/arch/arm/boards/nhk8815/env/config
+++ b/arch/arm/boards/nhk8815/env/config
@@ -20,7 +20,7 @@ ip=dhcp
 # JFFS2 Root filesystem		22MB	0x00580000
 # JFFS2 User Data		100MB	0x01b80000
 
-nand_parts="256k(xloader)ro,256k(meminit),2M(uboot),3M(kernel),22M(rootfs),100M(userfs),384k(free),128k(ubootenv)"
+nand_parts="256k(xloader)ro,256k(meminit),2M(barebox),3M(kernel),22M(rootfs),100M(userfs),384k(free),128k(bareboxenv)"
 
 uimage=uImage-nhk15
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
