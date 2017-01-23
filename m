Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cVi1K-0002ju-Ui
 for barebox@lists.infradead.org; Mon, 23 Jan 2017 17:03:10 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Subject: [PATCH 4/5] efi: include and execute exit calls
Date: Mon, 23 Jan 2017 18:02:17 +0100
Message-Id: <20170123170218.25139-5-m.olbrich@pengutronix.de>
In-Reply-To: <20170123170218.25139-1-m.olbrich@pengutronix.de>
References: <20170123170218.25139-1-m.olbrich@pengutronix.de>
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
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/Makefile                 | 4 ++--
 arch/efi/efi/efi-image.c          | 2 ++
 arch/efi/lib/elf_x86_64_efi.lds.S | 1 +
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/efi/Makefile b/arch/efi/Makefile
index b078bd0e356d..32a1c152b791 100644
--- a/arch/efi/Makefile
+++ b/arch/efi/Makefile
@@ -28,8 +28,8 @@ cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@	\
 quiet_cmd_efi_image = EFI-IMG $@
       cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
 		      -j .dynsym -j .rel -j .rela -j .reloc -j __barebox_initcalls \
-		      -j __barebox_cmd -j .barebox_magicvar -j .bbenv.* \
-		      --target=$(TARGET) $< $@
+		      -j __barebox_exitcalls -j __barebox_cmd -j .barebox_magicvar \
+		      -j .bbenv.* --target=$(TARGET) $< $@
 
 KBUILD_BINARY := barebox
 
diff --git a/arch/efi/efi/efi-image.c b/arch/efi/efi/efi-image.c
index 32e060886a33..c780cad6d447 100644
--- a/arch/efi/efi/efi-image.c
+++ b/arch/efi/efi/efi-image.c
@@ -145,6 +145,7 @@ static int efi_execute_image(const char *file)
 		loaded_image->load_options = xstrdup_char_to_wchar(options);
 		loaded_image->load_options_size =
 			(strlen(options) + 1) * sizeof(wchar_t);
+		shutdown_barebox();
 	}
 
 	efiret = BS->start_image(handle, NULL, NULL);
@@ -255,6 +256,7 @@ static int do_bootm_efi(struct image_data *data)
 	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
 			      get_time_ns()/1000);
 
+	shutdown_barebox();
 	linux_efi_handover(handle, boot_header);
 
 	return 0;
diff --git a/arch/efi/lib/elf_x86_64_efi.lds.S b/arch/efi/lib/elf_x86_64_efi.lds.S
index e1bc2120fabc..93d34d17ab1f 100644
--- a/arch/efi/lib/elf_x86_64_efi.lds.S
+++ b/arch/efi/lib/elf_x86_64_efi.lds.S
@@ -80,6 +80,7 @@ SECTIONS
 		*(.rela.data*)
 		*(.rela.barebox*)
 		*(.rela.initcall*)
+		*(.rela.exitcall*)
 		*(.rela.got)
 		*(.rela.stab)
 	}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
