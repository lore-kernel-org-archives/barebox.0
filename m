Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZzrk-00053z-Ou
 for barebox@lists.infradead.org; Sat, 26 Oct 2013 09:09:05 +0000
Received: by mail-la0-f46.google.com with SMTP id hp15so3764448lab.5
 for <barebox@lists.infradead.org>; Sat, 26 Oct 2013 02:08:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Oct 2013 13:15:05 +0400
Message-Id: <1382778907-13328-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/5] MIPS: qemu-malta: update qemu-malta.dox
To: barebox@lists.infradead.org

Only PBL-enabled barebox-flash-image can correctly
get round BoadrID address (0x1fc00010), so let's
recommend barebox-flash-image.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/qemu-malta/qemu-malta.dox | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boards/qemu-malta/qemu-malta.dox b/arch/mips/boards/qemu-malta/qemu-malta.dox
index 2f2ae51..accb56a 100644
--- a/arch/mips/boards/qemu-malta/qemu-malta.dox
+++ b/arch/mips/boards/qemu-malta/qemu-malta.dox
@@ -4,7 +4,7 @@ Specific to this emulated board is, it does not require any setup code to bring
 
 Emulator run string:
 @verbatim
-qemu-system-mips -nodefaults -M malta -m 256 -nographic -serial stdio -monitor null -bios barebox.bin
+qemu-system-mips -nodefaults -M malta -m 256 -nographic -serial stdio -monitor null -bios barebox-flash-image
 @endverbatim
 
 Links:
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
