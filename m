Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZzrq-000541-Er
 for barebox@lists.infradead.org; Sat, 26 Oct 2013 09:09:14 +0000
Received: by mail-la0-f54.google.com with SMTP id gx14so3889412lab.27
 for <barebox@lists.infradead.org>; Sat, 26 Oct 2013 02:08:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Oct 2013 13:15:07 +0400
Message-Id: <1382778907-13328-6-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/5] MIPS: qemu-malta: doc: add gxemul documentation
To: barebox@lists.infradead.org

GXemul is another MIPS emulator with Malta board support.
As opposed to qemu GXemul supports only fixed GT64120
YAMON-compatible PCI mapping.

As now barebox uses YAMON-style mapping  we can
use GXemul for barebox run.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/qemu-malta/qemu-malta.dox | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/boards/qemu-malta/qemu-malta.dox b/arch/mips/boards/qemu-malta/qemu-malta.dox
index accb56a..bf10244 100644
--- a/arch/mips/boards/qemu-malta/qemu-malta.dox
+++ b/arch/mips/boards/qemu-malta/qemu-malta.dox
@@ -7,8 +7,14 @@ Emulator run string:
 qemu-system-mips -nodefaults -M malta -m 256 -nographic -serial stdio -monitor null -bios barebox-flash-image
 @endverbatim
 
+Also you can use GXemul:
+@verbatim
+gxemul -Q -x -e maltabe -M 256 0xbfc00000:barebox-flash-image
+@endverbatim
+
 Links:
 @li http://www.linux-mips.org/wiki/Mips_Malta
 @li http://www.qemu.org/
+@li http://gxemul.sourceforge.net/
 
 */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
