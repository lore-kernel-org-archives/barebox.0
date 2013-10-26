Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZzrf-00053x-VS
 for barebox@lists.infradead.org; Sat, 26 Oct 2013 09:09:04 +0000
Received: by mail-lb0-f177.google.com with SMTP id u14so1449130lbd.22
 for <barebox@lists.infradead.org>; Sat, 26 Oct 2013 02:08:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Oct 2013 13:15:03 +0400
Message-Id: <1382778907-13328-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1382778907-13328-1-git-send-email-antonynpavlov@gmail.com>
References: <1382778907-13328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/5] MIPS: qemu-malta: doc: drop broken mips.com link
To: barebox@lists.infradead.org

On 8 February 2013 MIPS Technologies was acquired
by Imagination Technologies. Now the http://www.mips.com/ site
is redirected to http://www.imgtec.com/, the Malta development
board page is unreachable.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/qemu-malta/qemu-malta.dox | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/mips/boards/qemu-malta/qemu-malta.dox b/arch/mips/boards/qemu-malta/qemu-malta.dox
index 2e03636..2f2ae51 100644
--- a/arch/mips/boards/qemu-malta/qemu-malta.dox
+++ b/arch/mips/boards/qemu-malta/qemu-malta.dox
@@ -8,7 +8,6 @@ qemu-system-mips -nodefaults -M malta -m 256 -nographic -serial stdio -monitor n
 @endverbatim
 
 Links:
-@li http://www.mips.com/products/development-kits/malta/
 @li http://www.linux-mips.org/wiki/Mips_Malta
 @li http://www.qemu.org/
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
