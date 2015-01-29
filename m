Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGfCi-0005Dl-K3
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:51:37 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t0T2pEaj010223
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:51:14 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili17) with ESMTP id t0T2pFA02000
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:51:15 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:51:12 +0900
Message-Id: <1422499872-3311-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] blackfin: fix undefined reference with CONFIG_CMD_MAGICVAR
To: barebox@lists.infradead.org

For Blackfin, C symbols are prefixed with '_'.

If CONFIG_CMD_MAGICVAR is enabled for Blackfin, the following error occurs:

commands/built-in.o: In function `do_magicvar':
commands/magicvar.c:(.text+0x3326): undefined reference to `__barebox_magicvar_start'
commands/magicvar.c:(.text+0x332a): undefined reference to `__barebox_magicvar_end'
commands/magicvar.c:(.text+0x332e): undefined reference to `__barebox_magicvar_start'
commands/magicvar.c:(.text+0x3332): undefined reference to `__barebox_magicvar_end'
make: *** [barebox] Error 1

Add '_' to __barebox_magicvar_start and __barebox_magicvar_end,
like the other symbols in this linker script.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 arch/blackfin/boards/ipe337/barebox.lds.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/blackfin/boards/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
index 21a91ee..9bb7cc4 100644
--- a/arch/blackfin/boards/ipe337/barebox.lds.S
+++ b/arch/blackfin/boards/ipe337/barebox.lds.S
@@ -68,9 +68,9 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	___barebox_cmd_end = .;
 
-	__barebox_magicvar_start = .;
+	___barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
+	___barebox_magicvar_end = .;
 
 	___barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
