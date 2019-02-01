Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpOcN-0004sa-R2
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 02:31:49 +0000
Received: by mail-pl1-x62a.google.com with SMTP id u18so2400611plq.7
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 18:31:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Jan 2019 18:31:20 -0800
Message-Id: <20190201023133.1078-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190201023133.1078-1-andrew.smirnov@gmail.com>
References: <20190201023133.1078-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/15] ARM: aarch64: Add PCI fixups section to linker script
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
