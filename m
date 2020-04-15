Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jObSv-0004RE-Pv
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 06:24:07 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 15 Apr 2020 15:23:44 +0900
Message-Id: <20200415062344.44971-1-masahiroy@kernel.org>
MIME-Version: 1.0
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
Subject: [PATCH] mfd: double-quote the menu prompt of MFD
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Linux commit 801b27db4638 ("kconfig: drop T_WORD from the RHS of
'prompt' symbol") requires every prompt to be quoted even if it is
a single word.

This is the only place with no quoting. It must be surrounded by
double-quotes in order to sync Kconfig to Linux 5.6-rc1 or later.

While I was here, I reworded "MFD" to "Multifunction device drivers"
to be consistent with Linux.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 drivers/mfd/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index ddf117712..32a2c661f 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1,4 +1,4 @@
-menu MFD
+menu "Multifunction device drivers"
 
 config MFD_ACT8846
 	depends on I2C
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
