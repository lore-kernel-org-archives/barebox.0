Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g0CFx-00021l-Rb
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 21:01:05 +0000
Received: by mail-lf1-x141.google.com with SMTP id l26-v6so2921461lfc.8
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 14:00:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 13 Sep 2018 00:00:05 +0300
Message-Id: <20180912210006.28087-2-antonynpavlov@gmail.com>
In-Reply-To: <20180912210006.28087-1-antonynpavlov@gmail.com>
References: <20180912210006.28087-1-antonynpavlov@gmail.com>
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
Subject: [PATCH for master 1/2] MIPS: fix PCI quirk infrastructure build
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

The commit fc2c618c2038 ("pci: add quirk infrastructure")
adds necessary ld-script changes only for ARM architecture.
As a result, qemu-malta build fails:

     LD      barebox
    drivers/built-in.o: In function `pci_fixup_device':
    (.text.pci_fixup_device+0x30): undefined reference to `__end_pci_fixups_enable'
    (.text.pci_fixup_device+0x38): undefined reference to `__end_pci_fixups_enable'
    (.text.pci_fixup_device+0x34): undefined reference to `__start_pci_fixups_enable'
    (.text.pci_fixup_device+0x3c): undefined reference to `__start_pci_fixups_enable'
    (.text.pci_fixup_device+0x70): undefined reference to `__end_pci_fixups_header'
    (.text.pci_fixup_device+0x78): undefined reference to `__end_pci_fixups_header'
    (.text.pci_fixup_device+0x74): undefined reference to `__start_pci_fixups_header'
    (.text.pci_fixup_device+0x80): undefined reference to `__start_pci_fixups_header'
    (.text.pci_fixup_device+0x2c): undefined reference to `__end_pci_fixups_early'
    (.text.pci_fixup_device+0x88): undefined reference to `__end_pci_fixups_early'
    (.text.pci_fixup_device+0x84): undefined reference to `__start_pci_fixups_early'
    (.text.pci_fixup_device+0x90): undefined reference to `__start_pci_fixups_early'
    make: *** [Makefile:767: barebox] Error 1

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/barebox.lds.S | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 660d4be85e..c4026bb7f1 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -75,6 +75,17 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
+#ifdef CONFIG_PCI
+	__start_pci_fixups_early = .;
+	.pci_fixup_early : { KEEP(*(.pci_fixup_early)) }
+	__end_pci_fixups_early = .;
+	__start_pci_fixups_header = .;
+	.pci_fixup_header : { KEEP(*(.pci_fixup_header)) }
+	__end_pci_fixups_header = .;
+	__start_pci_fixups_enable = .;
+	.pci_fixup_enable : { KEEP(*(.pci_fixup_enable)) }
+	__end_pci_fixups_enable = .;
+#endif
 	.oftables : { BAREBOX_CLK_TABLE() }
 
 	.dtb : { BAREBOX_DTB() }
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
