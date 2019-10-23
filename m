Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJva-0002Gz-KV
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 16:56:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Oct 2019 18:55:57 +0200
Message-Id: <20191023165601.16441-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191023165601.16441-1-a.fatoum@pengutronix.de>
References: <20191023165601.16441-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/6] efi: efi-image: don't mask x86 interrupts on boot
To: barebox@lists.infradead.org
Cc: Michael Olbrich <mol@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

55da0cf1 ("efi: add support for initrd loading") introduced support for
the Linux v3.6+ handover protocol[1]. As part of this change a x86 cli
(Clear Interrupt Flag) instruction was introduced just prior to the jump
into the kernel's EFI handover protocol entry point.

While the normal Linux x86 boot protocols require that interrupts are
masked on entry, this doesn't apply to the EFI stub, because the EFI
stub itself is the one implementing the boot protocol and as such
masks the interrupts itself[2].

EFI watchdogs may, and often are, implemented using a timer interrupt.
Dropping the cli will allow monitoring the boot of the kernel up to it
calling ExitBootServices.

In absence of a hardware watchdog, this is the only watchdog available
to users with EFI 1.0+, so it seems prudent to not make it even more
useless.

[1]: https://www.kernel.org/doc/Documentation/x86/boot.txt
[2]: Linux v5.4-rc4, arch/x86/boot/compressed/eboot.c

Cc: Michael Olbrich <mol@pengutronix.de>
Fixes: 55da0cf1 ("efi: add support for initrd loading")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/efi-image.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/efi/efi-image.c b/common/efi/efi-image.c
index 939663a6e250..9c66c9f882c5 100644
--- a/common/efi/efi-image.c
+++ b/common/efi/efi-image.c
@@ -174,7 +174,6 @@ static inline void linux_efi_handover(efi_handle_t handle,
 {
 	handover_fn handover;
 
-	asm volatile ("cli");
 	handover = (handover_fn)((long)header->code32_start + 512 +
 				 header->handover_offset);
 	handover(handle, efi_sys_table, header);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
