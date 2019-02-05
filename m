Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gr8fm-0002xy-U2
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 21:54:32 +0000
Received: by mail-pf1-x435.google.com with SMTP id c73so2105306pfe.13
 for <barebox@lists.infradead.org>; Tue, 05 Feb 2019 13:54:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  5 Feb 2019 13:53:58 -0800
Message-Id: <20190205215411.589-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190205215411.589-1-andrew.smirnov@gmail.com>
References: <20190205215411.589-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 02/15] ARM: aarch64: Add PCI fixups section to linker script
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add PCI fixups section to linker script, so it would be possible to
enable PCI support.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/lib64/barebox.lds.S | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 08adc44e8..b3e6843a1 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -86,6 +86,18 @@ SECTIONS
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
+
 	.oftables : { BAREBOX_CLK_TABLE() }
 
 	.dtb : { BAREBOX_DTB() }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
