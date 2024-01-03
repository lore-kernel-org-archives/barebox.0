Delivery-date: Wed, 03 Jan 2024 19:37:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL67H-002ONf-0y
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:37:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL679-0000IA-5H
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:37:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=16d1YVpEl82s/vO/NCb8n1iz4khZeEy4H/PoYdG4PZs=; b=fkkB/ZTu8nFfJpsQfIxk7g9ZEr
	CRkJ837MYN0iGWyFe7I9G+Byx3wBu8k8pjrd4aK0mUncDI0gl4DPqTwxhDJ2fSEoM1l/TEUmusf27
	NGVBh5BwjTx8gqKL/z/rMdXspl/6UWl+kE2cb4bbalFrQT4OTN6q4TT3CqJ0ZfLHGF20oGcTmpUAf
	FWK/WZ4hm7j1Qsu/QamqvnG55/aR7cIL/9+F2h3HGYsCEtT/35Hk+5g+0V41dgDwKA24zdwHZQokT
	CBCLti2JvTlQrmHHPTXZxL+zxz1BiYlWGgR3h73zPK8W9OhwSO3ebTMcElU5oLNvwkUykvmvhmKle
	O6fzJtfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL65K-00Bm6g-04;
	Wed, 03 Jan 2024 18:35:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61R-00BhVY-0S
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=16d1YVpEl82s/vO/NCb8n1iz4khZeEy4H/PoYdG4PZs=; b=NoNUurd4KyIvsPGT9R+CgyZLce
	huACr49ePv/TiMHaaX119rrdLcCNepW46r1prKEQQn2tni2TY5eOCCopb6p2N1XbmxPlsNqWeMeLy
	GulZMcivn6sgWGx08oTVaPKAvUgnZ9JVMsYQKh78bJRpWDYMklQtp+GxC7rj3F+Rrq1nk9jtOEC/t
	DOZIzRLycNeAAAc5XtKiPQyF7w3efT3sH+cDjpSfmUg+OPyCjQnogLfXDwLk2IMEUhMQAxwuG4X0m
	W2NRyUxGGZNOpdeAgozH8ikMhv6QeXAQkXc2zrwIQDVA/B+YXRe32G3CGVcgOGb4VeP2fz33PLnB0
	rr+NIKvg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61G-005eBw-0S
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001YC-Pw; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000Ava-Bs; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-2p;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:47 +0100
Message-Id: <20240103181312.409668-88-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183110_446144_130AA22C 
X-CRM114-Status: GOOD (  13.15  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 087/112] efi: devicepath: improve const safety
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The device path traversal functions don't modify the device path itself,
so reflect that in the function prototypes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 140 ++++++++++++++++++++++++-----------------------
 include/efi.h    |  10 ++--
 2 files changed, 76 insertions(+), 74 deletions(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 63b0ea61f0f9..6ec0c3780f37 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -49,7 +49,7 @@ char *cprintf(struct string *str, const char *fmt, ...)
 #define DP_IS_END_SUBTYPE(a)        ( ((a)->sub_type == END_ENTIRE_DEVICE_PATH_SUBTYPE )
 
 #define device_path_type(a)           ( ((a)->type) & EFI_DP_TYPE_MASK )
-#define next_device_path_node(a)       ( (struct efi_device_path *) ( ((u8 *) (a)) + (a)->length))
+#define next_device_path_node(a)       ( (const struct efi_device_path *) ( ((u8 *) (a)) + (a)->length))
 #define is_device_path_end_type(a)      ( device_path_type(a) == END_DEVICE_PATH_TYPE )
 #define is_device_path_end_sub_type(a)   ( (a)->sub_type == END_ENTIRE_DEVICE_PATH_SUBTYPE )
 #define is_device_path_end(a)          ( is_device_path_end_type(a) && is_device_path_end_sub_type(a) )
@@ -61,23 +61,23 @@ char *cprintf(struct string *str, const char *fmt, ...)
             (a)->length = sizeof(struct efi_device_path);   \
             }
 
-struct efi_device_path end_device_path = {
+const struct efi_device_path end_device_path = {
 	.type = END_DEVICE_PATH_TYPE,
 	.sub_type = END_ENTIRE_DEVICE_PATH_SUBTYPE,
 	.length = END_DEVICE_PATH_LENGTH,
 };
 
-struct efi_device_path end_instance_device_path = {
+const struct efi_device_path end_instance_device_path = {
 	.type = END_DEVICE_PATH_TYPE,
 	.sub_type = END_INSTANCE_DEVICE_PATH_SUBTYPE,
 	.length = END_DEVICE_PATH_LENGTH,
 };
 
-struct efi_device_path *
+const struct efi_device_path *
 device_path_from_handle(efi_handle_t Handle)
 {
 	efi_status_t Status;
-	struct efi_device_path *device_path;
+	const struct efi_device_path *device_path;
 
 	Status = BS->handle_protocol(Handle, &efi_device_path_protocol_guid,
 				(void *) &device_path);
@@ -132,27 +132,27 @@ unpack_device_path(const struct efi_device_path *dev_path)
 }
 
 static void
-dev_path_pci(struct string *str, void *dev_path)
+dev_path_pci(struct string *str, const void *dev_path)
 {
-	struct pci_device_path *Pci;
+	const struct pci_device_path *Pci;
 
 	Pci = dev_path;
 	cprintf(str, "Pci(0x%x,0x%x)", Pci->Device, Pci->Function);
 }
 
 static void
-dev_path_pccard(struct string *str, void *dev_path)
+dev_path_pccard(struct string *str, const void *dev_path)
 {
-	struct pccard_device_path *Pccard;
+	const struct pccard_device_path *Pccard;
 
 	Pccard = dev_path;
 	cprintf(str, "Pccard(0x%x)", Pccard->function_number);
 }
 
 static void
-dev_path_mem_map(struct string *str, void *dev_path)
+dev_path_mem_map(struct string *str, const void *dev_path)
 {
-	struct memmap_device_path *mem_map;
+	const struct memmap_device_path *mem_map;
 
 	mem_map = dev_path;
 	cprintf(str, "mem_map(%d,0x%llx,0x%llx)",
@@ -161,18 +161,18 @@ dev_path_mem_map(struct string *str, void *dev_path)
 }
 
 static void
-dev_path_controller(struct string *str, void *dev_path)
+dev_path_controller(struct string *str, const void *dev_path)
 {
-	struct controller_device_path *Controller;
+	const struct controller_device_path *Controller;
 
 	Controller = dev_path;
 	cprintf(str, "Ctrl(%d)", Controller->Controller);
 }
 
 static void
-dev_path_vendor(struct string *str, void *dev_path)
+dev_path_vendor(struct string *str, const void *dev_path)
 {
-	struct vendor_device_path *Vendor;
+	const struct vendor_device_path *Vendor;
 	char *type;
 	struct unknown_device_vendor_device_path *unknown_dev_path;
 
@@ -207,9 +207,9 @@ dev_path_vendor(struct string *str, void *dev_path)
   type: 2 (ACPI Device Path) sub_type: 1 (ACPI Device Path)
  */
 static void
-dev_path_acpi(struct string *str, void *dev_path)
+dev_path_acpi(struct string *str, const void *dev_path)
 {
-	struct acpi_hid_device_path *Acpi;
+	const struct acpi_hid_device_path *Acpi;
 
 	Acpi = dev_path;
 	if ((Acpi->HID & PNP_EISA_ID_MASK) == PNP_EISA_ID_CONST) {
@@ -250,9 +250,9 @@ dev_path_acpi(struct string *str, void *dev_path)
 }
 
 static void
-dev_path_atapi(struct string *str, void *dev_path)
+dev_path_atapi(struct string *str, const void *dev_path)
 {
-	struct atapi_device_path *Atapi;
+	const struct atapi_device_path *Atapi;
 
 	Atapi = dev_path;
 	cprintf(str, "Ata(%s,%s)",
@@ -261,18 +261,18 @@ dev_path_atapi(struct string *str, void *dev_path)
 }
 
 static void
-dev_path_scsi(struct string *str, void *dev_path)
+dev_path_scsi(struct string *str, const void *dev_path)
 {
-	struct scsi_device_path *Scsi;
+	const struct scsi_device_path *Scsi;
 
 	Scsi = dev_path;
 	cprintf(str, "Scsi(%d,%d)", Scsi->Pun, Scsi->Lun);
 }
 
 static void
-dev_path_fibre(struct string *str, void *dev_path)
+dev_path_fibre(struct string *str, const void *dev_path)
 {
-	struct fibrechannel_device_path *Fibre;
+	const struct fibrechannel_device_path *Fibre;
 
 	Fibre = dev_path;
 	cprintf(str, "Fibre%s(0x%016llx,0x%016llx)",
@@ -281,36 +281,36 @@ dev_path_fibre(struct string *str, void *dev_path)
 }
 
 static void
-dev_path1394(struct string *str, void *dev_path)
+dev_path1394(struct string *str, const void *dev_path)
 {
-	struct f1394_device_path *F1394;
+	const struct f1394_device_path *F1394;
 
 	F1394 = dev_path;
 	cprintf(str, "1394(%pU)", &F1394->Guid);
 }
 
 static void
-dev_path_usb(struct string *str, void *dev_path)
+dev_path_usb(struct string *str, const void *dev_path)
 {
-	struct usb_device_path *Usb;
+	const struct usb_device_path *Usb;
 
 	Usb = dev_path;
 	cprintf(str, "Usb(0x%x,0x%x)", Usb->Port, Usb->Endpoint);
 }
 
 static void
-dev_path_i2_o(struct string *str, void *dev_path)
+dev_path_i2_o(struct string *str, const void *dev_path)
 {
-	struct i2_o_device_path *i2_o;
+	const struct i2_o_device_path *i2_o;
 
 	i2_o = dev_path;
 	cprintf(str, "i2_o(0x%X)", i2_o->Tid);
 }
 
 static void
-dev_path_mac_addr(struct string *str, void *dev_path)
+dev_path_mac_addr(struct string *str, const void *dev_path)
 {
-	struct mac_addr_device_path *MAC;
+	const struct mac_addr_device_path *MAC;
 	unsigned long hw_address_size;
 	unsigned long Index;
 
@@ -335,14 +335,14 @@ dev_path_mac_addr(struct string *str, void *dev_path)
 }
 
 static void
-cat_print_iPv4(struct string *str, struct efi_ipv4_address * address)
+cat_print_iPv4(struct string *str, const struct efi_ipv4_address * address)
 {
 	cprintf(str, "%d.%d.%d.%d", address->Addr[0], address->Addr[1],
 		address->Addr[2], address->Addr[3]);
 }
 
 static bool
-is_not_null_iPv4(struct efi_ipv4_address * address)
+is_not_null_iPv4(const struct efi_ipv4_address * address)
 {
 	u8 val;
 
@@ -364,9 +364,9 @@ cat_print_network_protocol(struct string *str, u16 Proto)
 }
 
 static void
-dev_path_iPv4(struct string *str, void *dev_path)
+dev_path_iPv4(struct string *str, const void *dev_path)
 {
-	struct ipv4_device_path *ip;
+	const struct ipv4_device_path *ip;
 	bool show;
 
 	ip = dev_path;
@@ -406,7 +406,7 @@ dev_path_iPv4(struct string *str, void *dev_path)
 
 #define cat_print_iPv6_ADD( x , y ) ( ( (u16) ( x ) ) << 8 | ( y ) )
 static void
-cat_print_ipv6(struct string *str, struct efi_ipv6_address * address)
+cat_print_ipv6(struct string *str, const struct efi_ipv6_address * address)
 {
 	cprintf(str, "%x:%x:%x:%x:%x:%x:%x:%x",
 		cat_print_iPv6_ADD(address->Addr[0], address->Addr[1]),
@@ -420,9 +420,9 @@ cat_print_ipv6(struct string *str, struct efi_ipv6_address * address)
 }
 
 static void
-dev_path_iPv6(struct string *str, void *dev_path)
+dev_path_iPv6(struct string *str, const void *dev_path)
 {
-	struct ipv6_device_path *ip;
+	const struct ipv6_device_path *ip;
 
 	ip = dev_path;
 	cprintf(str, "IPv6(");
@@ -444,9 +444,9 @@ dev_path_iPv6(struct string *str, void *dev_path)
 }
 
 static void
-dev_path_infini_band(struct string *str, void *dev_path)
+dev_path_infini_band(struct string *str, const void *dev_path)
 {
-	struct infiniband_device_path *infini_band;
+	const struct infiniband_device_path *infini_band;
 
 	infini_band = dev_path;
 	cprintf(str, "Infiniband(0x%x,%pU,0x%llx,0x%llx,0x%llx)",
@@ -456,9 +456,9 @@ dev_path_infini_band(struct string *str, void *dev_path)
 }
 
 static void
-dev_path_uart(struct string *str, void *dev_path)
+dev_path_uart(struct string *str, const void *dev_path)
 {
-	struct uart_device_path *Uart;
+	const struct uart_device_path *Uart;
 	s8 Parity;
 
 	Uart = dev_path;
@@ -516,9 +516,9 @@ dev_path_uart(struct string *str, void *dev_path)
 }
 
 static void
-dev_path_sata(struct string *str, void *dev_path)
+dev_path_sata(struct string *str, const void *dev_path)
 {
-	struct sata_device_path *sata;
+	const struct sata_device_path *sata;
 
 	sata = dev_path;
 	cprintf(str, "Sata(0x%x,0x%x,0x%x)", sata->HBAPort_number,
@@ -526,9 +526,9 @@ dev_path_sata(struct string *str, void *dev_path)
 }
 
 static void
-dev_path_hard_drive(struct string *str, void *dev_path)
+dev_path_hard_drive(struct string *str, const void *dev_path)
 {
-	struct harddrive_device_path *hd;
+	const struct harddrive_device_path *hd;
 
 	hd = dev_path;
 	switch (hd->signature_type) {
@@ -551,18 +551,18 @@ dev_path_hard_drive(struct string *str, void *dev_path)
 }
 
 static void
-dev_path_cdrom(struct string *str, void *dev_path)
+dev_path_cdrom(struct string *str, const void *dev_path)
 {
-	struct cdrom_device_path *cd;
+	const struct cdrom_device_path *cd;
 
 	cd = dev_path;
 	cprintf(str, "CDROM(0x%x)", cd->boot_entry);
 }
 
 static void
-dev_path_file_path(struct string *str, void *dev_path)
+dev_path_file_path(struct string *str, const void *dev_path)
 {
-	struct filepath_device_path *Fp;
+	const struct filepath_device_path *Fp;
 	char *dst;
 
 	Fp = dev_path;
@@ -575,18 +575,18 @@ dev_path_file_path(struct string *str, void *dev_path)
 }
 
 static void
-dev_path_media_protocol(struct string *str, void *dev_path)
+dev_path_media_protocol(struct string *str, const void *dev_path)
 {
-	struct media_protocol_device_path *media_prot;
+	const struct media_protocol_device_path *media_prot;
 
 	media_prot = dev_path;
 	cprintf(str, "%pU", &media_prot->Protocol);
 }
 
 static void
-dev_path_bss_bss(struct string *str, void *dev_path)
+dev_path_bss_bss(struct string *str, const void *dev_path)
 {
-	struct bbs_bbs_device_path *Bss;
+	const struct bbs_bbs_device_path *Bss;
 	char *type;
 
 	Bss = dev_path;
@@ -618,7 +618,7 @@ dev_path_bss_bss(struct string *str, void *dev_path)
 }
 
 static void
-dev_path_end_instance(struct string *str, void *dev_path)
+dev_path_end_instance(struct string *str, const void *dev_path)
 {
 	cprintf(str, ",");
 }
@@ -629,10 +629,10 @@ dev_path_end_instance(struct string *str, void *dev_path)
  */
 
 static void
-dev_path_node_unknown(struct string *str, void *dev_path)
+dev_path_node_unknown(struct string *str, const void *dev_path)
 {
-	struct efi_device_path *Path;
-	u8 *value;
+	const struct efi_device_path *Path;
+	const u8 *value;
 	int length, index;
 	Path = dev_path;
 	value = dev_path;
@@ -684,7 +684,7 @@ dev_path_node_unknown(struct string *str, void *dev_path)
 struct {
 	u8 type;
 	u8 sub_type;
-	void (*Function) (struct string *, void *);
+	void (*Function) (struct string *, const void *);
 } dev_path_table[] = {
 	{
 	HARDWARE_DEVICE_PATH, HW_PCI_DP, dev_path_pci}, {
@@ -717,10 +717,11 @@ struct {
 	0, 0, NULL}
 };
 
-static int __device_path_to_str(struct string *str, struct efi_device_path *dev_path)
+static int __device_path_to_str(struct string *str,
+				const struct efi_device_path *dev_path)
 {
-	struct efi_device_path *dev_path_node;
-	void (*dump_node) (struct string *, void *);
+	const struct efi_device_path *dev_path_node;
+	void (*dump_node) (struct string *, const void *);
 	int i;
 
 	dev_path = unpack_device_path(dev_path);
@@ -753,7 +754,7 @@ static int __device_path_to_str(struct string *str, struct efi_device_path *dev_
 	return 0;
 }
 
-char *device_path_to_str(struct efi_device_path *dev_path)
+char *device_path_to_str(const struct efi_device_path *dev_path)
 {
 	struct string str = {};
 
@@ -770,9 +771,9 @@ char *device_path_to_str(struct efi_device_path *dev_path)
 	return str.str;
 }
 
-u8 device_path_to_type(struct efi_device_path *dev_path)
+u8 device_path_to_type(const struct efi_device_path *dev_path)
 {
-	struct efi_device_path *dev_path_next;
+	const struct efi_device_path *dev_path_next;
 
 	dev_path = unpack_device_path(dev_path);
 	dev_path_next = next_device_path_node(dev_path);
@@ -785,9 +786,9 @@ u8 device_path_to_type(struct efi_device_path *dev_path)
 	return device_path_type(dev_path);
 }
 
-u8 device_path_to_subtype(struct efi_device_path *dev_path)
+u8 device_path_to_subtype(const struct efi_device_path *dev_path)
 {
-	struct efi_device_path *dev_path_next;
+	const struct efi_device_path *dev_path_next;
 
 	dev_path = unpack_device_path(dev_path);
 	dev_path_next = next_device_path_node(dev_path);
@@ -800,9 +801,10 @@ u8 device_path_to_subtype(struct efi_device_path *dev_path)
 	return dev_path->sub_type;
 }
 
-char *device_path_to_partuuid(struct efi_device_path *dev_path)
+
+char *device_path_to_partuuid(const struct efi_device_path *dev_path)
 {
-	struct efi_device_path *dev_path_node;
+	const struct efi_device_path *dev_path_node;
 	struct harddrive_device_path *hd;
 	char *str = NULL;;
 
diff --git a/include/efi.h b/include/efi.h
index 80d2f784847b..6795dc414c3c 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -878,11 +878,11 @@ struct efi_simple_text_input_protocol {
 	struct efi_event *wait_for_key;
 };
 
-struct efi_device_path *device_path_from_handle(efi_handle_t Handle);
-char *device_path_to_str(struct efi_device_path *dev_path);
-u8 device_path_to_type(struct efi_device_path *dev_path);
-u8 device_path_to_subtype(struct efi_device_path *dev_path);
-char *device_path_to_partuuid(struct efi_device_path *dev_path);
+const struct efi_device_path *device_path_from_handle(efi_handle_t handle);
+char *device_path_to_str(const struct efi_device_path *dev_path);
+u8 device_path_to_type(const struct efi_device_path *dev_path);
+u8 device_path_to_subtype(const struct efi_device_path *dev_path);
+char *device_path_to_partuuid(const struct efi_device_path *dev_path);
 
 const char *efi_guid_string(efi_guid_t *g);
 
-- 
2.39.2



