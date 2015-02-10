Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YL524-000622-BU
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 07:14:53 +0000
Received: by mail-lb0-f172.google.com with SMTP id l4so34451048lbv.3
 for <barebox@lists.infradead.org>; Mon, 09 Feb 2015 23:14:29 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Feb 2015 10:14:56 +0300
Message-Id: <1423552496-8476-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] openrisc: barebox.lds.S: fix BFD format names
To: barebox@lists.infradead.org

Here is Franck Jullien's comment (see
http://lists.infradead.org/pipermail/barebox/2015-February/022259.html):

  > Until now, the official openrisc toolchain was called or32.
  > However, the new one (and maintained one)  is called or1k. So we need
  > to change "elf32-or32" to "elf32-or1k" in barebox.lds.S.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/cpu/barebox.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index dbecdbf..9c353f3 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -16,7 +16,7 @@
 #include <config.h>
 #include <asm-generic/barebox.lds.h>
 
-OUTPUT_FORMAT("elf32-or32", "elf32-or32", "elf32-or32")
+OUTPUT_FORMAT("elf32-or1k", "elf32-or1k", "elf32-or1k")
 __DYNAMIC  =  0;
 
 MEMORY
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
