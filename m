Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGeqD-0001AR-E8
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:28:23 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 t0T2Rxr6009934
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:27:59 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili11) with ESMTP id t0T2Rxi09367
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:27:59 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:27:52 +0900
Message-Id: <1422498476-28986-2-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1422498476-28986-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1422498476-28986-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 1/5] gitignore: simplify .gitignore file with pattern
 "/barebox*"
To: barebox@lists.infradead.org

There is no source file prefixed "barebox" at the top directory.
Generated files there can be simply ignored with "/barebox*" pattern.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 .gitignore | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/.gitignore b/.gitignore
index 0456bfd..a71d814 100644
--- a/.gitignore
+++ b/.gitignore
@@ -31,22 +31,7 @@
 #
 tags
 TAGS
-barebox
-barebox.S
-barebox.bin
-barebox.srec
-barebox.netx
-barebox.s5p
-barebox.spi
-barebox.ubl
-barebox.zynq
-barebox.uimage
-barebox.map
-barebox.kwb
-barebox.kwbuart
-barebox.efi
-barebox.canon-a1100.bin
-barebox-flash-image
+/barebox*
 System.map
 Module.symvers
 barebox_default_env*
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
