Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUDK-0001Aw-99
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 12:57:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2019 13:56:54 +0100
Message-Id: <20191204125659.22506-5-a.fatoum@pengutronix.de>
In-Reply-To: <20191204125659.22506-1-a.fatoum@pengutronix.de>
References: <20191204125659.22506-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/9] x86: efi: lds: don't discard any relocation sections
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The incoming EFI PCI root bridge IO protocol driver will register
PCI fixups. Executing them will fail because the hook function's
relocation information is stripped from the final barebox.efi binary.

Instead of adding each section by name, just keep all .rela* sections
in the final binary.

This doesn't yet increase the size of the resulting barebox (yet).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/mach-efi/elf_x86_64_efi.lds.S | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index 40a942503475..ed79118a3615 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -58,12 +58,7 @@ SECTIONS
 	. = ALIGN(4096);
 
 	.rela : {
-		*(.rela.data*)
-		*(.rela.barebox*)
-		*(.rela.initcall*)
-		*(.rela.exitcall*)
-		*(.rela.got)
-		*(.rela.stab)
+		*(.rela*)
 	}
 
 	. = ALIGN(4096);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
