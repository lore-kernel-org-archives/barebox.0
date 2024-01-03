Delivery-date: Wed, 03 Jan 2024 19:36:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66R-002OCW-0T
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66H-0007gl-BP
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WOy6t9TmLzq9y/Ah8/LaYqE8khTDwraTZpb7iCbArFI=; b=enWuHj3c7GojKlMJl1NgY9mqua
	+QfK73x9P8D5szniGHqf4TFYYfC3WK0sHa9s0YV+kySQNmIB2g20K9V3ZTREK0vghcI6k0OWU5mX6
	yGKuV3SS34QS5fyvYtPlecItxfy/yLBxj1KnAnSf753Ccq/Fq4k5Epe8lsvxrm25uhVzJuSqJ0XYj
	rE2YqdyECW3zfixjvr25avlRhsPrX285OmW2Tv9Ld0jUx/JqXxHWoxDwZsj9llw8+uNyBA06IspNF
	WzFMpowKFJn38N6vohouY3qc31OYfnzMhWSc3hgQWaImWhXd1hY6E7fLA3crtGAINXt2wZR3zjmb9
	eA7YgyyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64J-00Bkuh-2o;
	Wed, 03 Jan 2024 18:34:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61K-00BhNc-0y
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=WOy6t9TmLzq9y/Ah8/LaYqE8khTDwraTZpb7iCbArFI=; b=WtOmaCdOPgXP7fOo6t7bqOTK03
	tvW2PUgJu0qEeSLrG4+R+At6lYAkR66MSW/Fiw6NSCc+O0Hy5KZU6HaUg2pIXXqL00kcgKS3TVl3d
	lm+JhXPy2OKGykJCem6dzV4T84OCXWxGLcOPf8V1zaPY0H1+2YfVvuD0g+neOOOW1Nuc0RJK63kk7
	4msHfnMTE+xyw9UcRluBBjPiB24G9gG5Dgh5qygzLE6lekppM5DH1mlUSSzr4g3q//hHuI8hK7MK2
	CRl1aLpHTkgwC/wS1MHDZ2iKpc/jIH0htBMaGTWPI3b9plozGYLyhcPU7KpB2Uuwo08ELUoKNrdbi
	6eeCQTHA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL619-005eC4-04
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001f8-Hx; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000AxR-41; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-1m;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:13:02 +0100
Message-Id: <20240103181312.409668-103-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183103_459437_6089E5D5 
X-CRM114-Status: GOOD (  16.74  )
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
Subject: [PATCH 102/112] efi: devicepath: namespace definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Using a DEVICE_PATH_ prefix everywhere will make it clear what the
definitions is about and in part align us with the naming in U-Boot.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/efi/efi-device.c  |   5 +-
 efi/devicepath.c          | 164 +++++++++++++++++++-------------------
 include/efi/device-path.h | 162 ++++++++++++++++++-------------------
 3 files changed, 166 insertions(+), 165 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 857f1b8c097e..bbc76e9ef769 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -192,10 +192,11 @@ static int efi_register_device(struct efi_device *efidev)
 	 * of the main MAC messaging device. Don't register these in barebox as
 	 * they would show up as duplicate ethernet devices.
 	 */
-	if (device_path_to_type(efidev->devpath) == MESSAGING_DEVICE_PATH) {
+	if (device_path_to_type(efidev->devpath) == DEVICE_PATH_TYPE_MESSAGING_DEVICE) {
 		u8 subtype = device_path_to_subtype(efidev->devpath);
 
-		if (subtype == MSG_IPv4_DP || subtype == MSG_IPv6_DP)
+		if (subtype == DEVICE_PATH_SUB_TYPE_MSG_IPv4 ||
+		    subtype == DEVICE_PATH_SUB_TYPE_MSG_IPv6)
 			return -EINVAL;
 	}
 
diff --git a/efi/devicepath.c b/efi/devicepath.c
index 12a94fdb6ef8..229810d49bbc 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -43,29 +43,29 @@ char *cprintf(struct string *str, const char *fmt, ...)
 #define MIN_ALIGNMENT_SIZE  8	/* FIXME: X86_64 specific */
 #define ALIGN_SIZE(a)   ((a % MIN_ALIGNMENT_SIZE) ? MIN_ALIGNMENT_SIZE - (a % MIN_ALIGNMENT_SIZE) : 0)
 
-#define device_path_type(a)           ( ((a)->type) & EFI_DP_TYPE_MASK )
+#define device_path_type(a)           ( ((a)->type) & DEVICE_PATH_TYPE_MASK )
 #define next_device_path_node(a)       ( (const struct efi_device_path *) ( ((u8 *) (a)) + (a)->length))
-#define is_device_path_end_type(a)      ( device_path_type(a) == END_DEVICE_PATH_TYPE )
-#define is_device_path_end_sub_type(a)   ( (a)->sub_type == END_ENTIRE_DEVICE_PATH_SUBTYPE )
+#define is_device_path_end_type(a)      ( device_path_type(a) == DEVICE_PATH_TYPE_END )
+#define is_device_path_end_sub_type(a)   ( (a)->sub_type == DEVICE_PATH_SUB_TYPE_END )
 #define is_device_path_end(a)          ( is_device_path_end_type(a) && is_device_path_end_sub_type(a) )
-#define is_device_path_unpacked(a)     ( (a)->type & EFI_DP_TYPE_UNPACKED )
+#define is_device_path_unpacked(a)     ( (a)->type & DEVICE_PATH_TYPE_UNPACKED )
 
 #define set_device_path_end_node(a)  {                      \
-            (a)->type = END_DEVICE_PATH_TYPE;           \
-            (a)->sub_type = END_ENTIRE_DEVICE_PATH_SUBTYPE;     \
+            (a)->type = DEVICE_PATH_TYPE_END;           \
+            (a)->sub_type = DEVICE_PATH_SUB_TYPE_END;     \
             (a)->length = sizeof(struct efi_device_path);   \
             }
 
 const struct efi_device_path end_device_path = {
-	.type = END_DEVICE_PATH_TYPE,
-	.sub_type = END_ENTIRE_DEVICE_PATH_SUBTYPE,
-	.length = END_DEVICE_PATH_LENGTH,
+	.type = DEVICE_PATH_TYPE_END,
+	.sub_type = DEVICE_PATH_SUB_TYPE_END,
+	.length = DEVICE_PATH_END_LENGTH,
 };
 
 const struct efi_device_path end_instance_device_path = {
-	.type = END_DEVICE_PATH_TYPE,
-	.sub_type = END_INSTANCE_DEVICE_PATH_SUBTYPE,
-	.length = END_DEVICE_PATH_LENGTH,
+	.type = DEVICE_PATH_TYPE_END,
+	.sub_type = DEVICE_PATH_SUB_TYPE_INSTANCE_END,
+	.length = DEVICE_PATH_END_LENGTH,
 };
 
 const struct efi_device_path *
@@ -121,7 +121,7 @@ unpack_device_path(const struct efi_device_path *dev_path)
 		memcpy(Dest, Src, Size);
 		Size += ALIGN_SIZE(Size);
 		Dest->length = Size;
-		Dest->type |= EFI_DP_TYPE_UNPACKED;
+		Dest->type |= DEVICE_PATH_TYPE_UNPACKED;
 		Dest =
 		    (struct efi_device_path *) (((u8 *) Dest) + Size);
 
@@ -137,7 +137,7 @@ unpack_device_path(const struct efi_device_path *dev_path)
 static void
 dev_path_pci(struct string *str, const void *dev_path)
 {
-	const struct pci_device_path *Pci;
+	const struct efi_device_path_pci *Pci;
 
 	Pci = dev_path;
 	cprintf(str, "Pci(0x%x,0x%x)", Pci->Device, Pci->Function);
@@ -146,7 +146,7 @@ dev_path_pci(struct string *str, const void *dev_path)
 static void
 dev_path_pccard(struct string *str, const void *dev_path)
 {
-	const struct pccard_device_path *Pccard;
+	const struct efi_device_path_pccard *Pccard;
 
 	Pccard = dev_path;
 	cprintf(str, "Pccard(0x%x)", Pccard->function_number);
@@ -155,7 +155,7 @@ dev_path_pccard(struct string *str, const void *dev_path)
 static void
 dev_path_mem_map(struct string *str, const void *dev_path)
 {
-	const struct memmap_device_path *mem_map;
+	const struct efi_device_path_memory *mem_map;
 
 	mem_map = dev_path;
 	cprintf(str, "MemoryMapped(0x%x,0x%llx,0x%llx)",
@@ -166,7 +166,7 @@ dev_path_mem_map(struct string *str, const void *dev_path)
 static void
 dev_path_controller(struct string *str, const void *dev_path)
 {
-	const struct controller_device_path *Controller;
+	const struct efi_device_path_controller *Controller;
 
 	Controller = dev_path;
 	cprintf(str, "Ctrl(%d)", Controller->Controller);
@@ -175,19 +175,19 @@ dev_path_controller(struct string *str, const void *dev_path)
 static void
 dev_path_vendor(struct string *str, const void *dev_path)
 {
-	const struct vendor_device_path *Vendor;
+	const struct efi_device_path_vendor *Vendor;
 	char *type;
-	struct unknown_device_vendor_device_path *unknown_dev_path;
+	struct efi_device_path_unknown_device_vendor *unknown_dev_path;
 
 	Vendor = dev_path;
 	switch (device_path_type(&Vendor->header)) {
-	case HARDWARE_DEVICE_PATH:
+	case DEVICE_PATH_TYPE_HARDWARE_DEVICE:
 		type = "Hw";
 		break;
-	case MESSAGING_DEVICE_PATH:
+	case DEVICE_PATH_TYPE_MESSAGING_DEVICE:
 		type = "Msg";
 		break;
-	case MEDIA_DEVICE_PATH:
+	case DEVICE_PATH_TYPE_MEDIA_DEVICE:
 		type = "Media";
 		break;
 	default:
@@ -199,7 +199,7 @@ dev_path_vendor(struct string *str, const void *dev_path)
 	if (efi_guidcmp(Vendor->Guid, efi_unknown_device_guid) == 0) {
 		/* GUID used by EFI to enumerate an EDD 1.1 device */
 		unknown_dev_path =
-		    (struct unknown_device_vendor_device_path *) Vendor;
+		    (struct efi_device_path_unknown_device_vendor *) Vendor;
 		cprintf(str, ":%02x)", unknown_dev_path->legacy_drive_letter);
 	} else {
 		cprintf(str, ")");
@@ -212,7 +212,7 @@ dev_path_vendor(struct string *str, const void *dev_path)
 static void
 dev_path_acpi(struct string *str, const void *dev_path)
 {
-	const struct acpi_hid_device_path *Acpi;
+	const struct efi_device_path_acpi_hid *Acpi;
 
 	Acpi = dev_path;
 	if ((Acpi->HID & PNP_EISA_ID_MASK) == PNP_EISA_ID_CONST) {
@@ -255,7 +255,7 @@ dev_path_acpi(struct string *str, const void *dev_path)
 static void
 dev_path_atapi(struct string *str, const void *dev_path)
 {
-	const struct atapi_device_path *Atapi;
+	const struct efi_device_path_atapi *Atapi;
 
 	Atapi = dev_path;
 	cprintf(str, "Ata(%s,%s)",
@@ -266,7 +266,7 @@ dev_path_atapi(struct string *str, const void *dev_path)
 static void
 dev_path_scsi(struct string *str, const void *dev_path)
 {
-	const struct scsi_device_path *Scsi;
+	const struct efi_device_path_scsi *Scsi;
 
 	Scsi = dev_path;
 	cprintf(str, "Scsi(%d,%d)", Scsi->Pun, Scsi->Lun);
@@ -275,18 +275,18 @@ dev_path_scsi(struct string *str, const void *dev_path)
 static void
 dev_path_fibre(struct string *str, const void *dev_path)
 {
-	const struct fibrechannel_device_path *Fibre;
+	const struct efi_device_path_fibrechannel *Fibre;
 
 	Fibre = dev_path;
 	cprintf(str, "Fibre%s(0x%016llx,0x%016llx)",
 		device_path_type(&Fibre->header) ==
-		MSG_FIBRECHANNEL_DP ? "" : "Ex", Fibre->WWN, Fibre->Lun);
+		DEVICE_PATH_SUB_TYPE_MSG_FIBRECHANNEL ? "" : "Ex", Fibre->WWN, Fibre->Lun);
 }
 
 static void
 dev_path1394(struct string *str, const void *dev_path)
 {
-	const struct f1394_device_path *F1394;
+	const struct efi_device_path_f1394 *F1394;
 
 	F1394 = dev_path;
 	cprintf(str, "1394(%pUl)", &F1394->Guid);
@@ -295,7 +295,7 @@ dev_path1394(struct string *str, const void *dev_path)
 static void
 dev_path_usb(struct string *str, const void *dev_path)
 {
-	const struct usb_device_path *Usb;
+	const struct efi_device_path_usb *Usb;
 
 	Usb = dev_path;
 	cprintf(str, "Usb(0x%x,0x%x)", Usb->Port, Usb->Endpoint);
@@ -304,7 +304,7 @@ dev_path_usb(struct string *str, const void *dev_path)
 static void
 dev_path_i2_o(struct string *str, const void *dev_path)
 {
-	const struct i2_o_device_path *i2_o;
+	const struct efi_device_path_i2_o *i2_o;
 
 	i2_o = dev_path;
 	cprintf(str, "i2_o(0x%X)", i2_o->Tid);
@@ -313,7 +313,7 @@ dev_path_i2_o(struct string *str, const void *dev_path)
 static void
 dev_path_mac_addr(struct string *str, const void *dev_path)
 {
-	const struct mac_addr_device_path *MAC;
+	const struct efi_device_path_mac_addr *MAC;
 	unsigned long hw_address_size;
 	unsigned long Index;
 
@@ -369,7 +369,7 @@ cat_print_network_protocol(struct string *str, u16 Proto)
 static void
 dev_path_iPv4(struct string *str, const void *dev_path)
 {
-	const struct ipv4_device_path *ip;
+	const struct efi_device_path_ipv4 *ip;
 	bool show;
 
 	ip = dev_path;
@@ -381,7 +381,7 @@ dev_path_iPv4(struct string *str, const void *dev_path)
 	show = is_not_null_iPv4(&ip->local_ip_address);
 	if (!show
 	    && ip->header.length ==
-	    sizeof (struct ipv4_device_path)) {
+	    sizeof (struct efi_device_path_ipv4)) {
 		/* only version 2 includes gateway and netmask */
 		show |= is_not_null_iPv4(&ip->gateway_ip_address);
 		show |= is_not_null_iPv4(&ip->subnet_mask);
@@ -390,7 +390,7 @@ dev_path_iPv4(struct string *str, const void *dev_path)
 		cprintf(str, ",");
 		cat_print_iPv4(str, &ip->local_ip_address);
 		if (ip->header.length ==
-		    sizeof (struct ipv4_device_path)) {
+		    sizeof (struct efi_device_path_ipv4)) {
 			/* only version 2 includes gateway and netmask */
 			show = is_not_null_iPv4(&ip->gateway_ip_address);
 			show |= is_not_null_iPv4(&ip->subnet_mask);
@@ -425,7 +425,7 @@ cat_print_ipv6(struct string *str, const struct efi_ipv6_address * address)
 static void
 dev_path_iPv6(struct string *str, const void *dev_path)
 {
-	const struct ipv6_device_path *ip;
+	const struct efi_device_path_ipv6 *ip;
 
 	ip = dev_path;
 	cprintf(str, "IPv6(");
@@ -437,7 +437,7 @@ dev_path_iPv6(struct string *str, const void *dev_path)
 		 "stateful_auto_configure") : "Static");
 	cat_print_ipv6(str, &ip->local_ip_address);
 	if (ip->header.length ==
-	    sizeof (struct ipv6_device_path)) {
+	    sizeof (struct efi_device_path_ipv6)) {
 		cprintf(str, ",");
 		cat_print_ipv6(str, &ip->gateway_ip_address);
 		cprintf(str, ",");
@@ -449,7 +449,7 @@ dev_path_iPv6(struct string *str, const void *dev_path)
 static void
 dev_path_infini_band(struct string *str, const void *dev_path)
 {
-	const struct infiniband_device_path *infini_band;
+	const struct efi_device_path_infiniband *infini_band;
 
 	infini_band = dev_path;
 	cprintf(str, "Infiniband(0x%x,%pUl,0x%llx,0x%llx,0x%llx)",
@@ -461,7 +461,7 @@ dev_path_infini_band(struct string *str, const void *dev_path)
 static void
 dev_path_uart(struct string *str, const void *dev_path)
 {
-	const struct uart_device_path *Uart;
+	const struct efi_device_path_uart *Uart;
 	s8 Parity;
 
 	Uart = dev_path;
@@ -521,7 +521,7 @@ dev_path_uart(struct string *str, const void *dev_path)
 static void
 dev_path_sata(struct string *str, const void *dev_path)
 {
-	const struct sata_device_path *sata;
+	const struct efi_device_path_sata *sata;
 
 	sata = dev_path;
 	cprintf(str, "Sata(0x%x,0x%x,0x%x)", sata->HBAPort_number,
@@ -531,7 +531,7 @@ dev_path_sata(struct string *str, const void *dev_path)
 static void
 dev_path_hard_drive(struct string *str, const void *dev_path)
 {
-	const struct harddrive_device_path *hd;
+	const struct efi_device_path_hard_drive_path *hd;
 
 	hd = dev_path;
 	switch (hd->signature_type) {
@@ -553,7 +553,7 @@ dev_path_hard_drive(struct string *str, const void *dev_path)
 static void
 dev_path_cdrom(struct string *str, const void *dev_path)
 {
-	const struct cdrom_device_path *cd;
+	const struct efi_device_path_cdrom_path *cd;
 
 	cd = dev_path;
 	cprintf(str, "CDROM(0x%x)", cd->boot_entry);
@@ -562,7 +562,7 @@ dev_path_cdrom(struct string *str, const void *dev_path)
 static void
 dev_path_file_path(struct string *str, const void *dev_path)
 {
-	const struct filepath_device_path *Fp;
+	const struct efi_device_path_file_path *Fp;
 	char *dst;
 
 	Fp = dev_path;
@@ -577,7 +577,7 @@ dev_path_file_path(struct string *str, const void *dev_path)
 static void
 dev_path_media_protocol(struct string *str, const void *dev_path)
 {
-	const struct media_protocol_device_path *media_prot;
+	const struct efi_device_path_media_protocol *media_prot;
 
 	media_prot = dev_path;
 	cprintf(str, "%pUl", &media_prot->Protocol);
@@ -586,7 +586,7 @@ dev_path_media_protocol(struct string *str, const void *dev_path)
 static void
 dev_path_bss_bss(struct string *str, const void *dev_path)
 {
-	const struct bbs_bbs_device_path *Bss;
+	const struct efi_device_path_bbs_bbs *Bss;
 	char *type;
 
 	Bss = dev_path;
@@ -641,26 +641,26 @@ dev_path_node_unknown(struct string *str, const void *dev_path)
 	value = dev_path;
 	value += 4;
 	switch (Path->type) {
-	case HARDWARE_DEVICE_PATH:{
+	case DEVICE_PATH_TYPE_HARDWARE_DEVICE:{
 			/* Unknown Hardware Device Path */
 			cprintf(str, "hardware_path(%d", Path->sub_type);
 			break;
 		}
-	case ACPI_DEVICE_PATH:{/* Unknown ACPI Device Path */
+	case DEVICE_PATH_TYPE_ACPI_DEVICE:{/* Unknown ACPI Device Path */
 			cprintf(str, "acpi_path(%d", Path->sub_type);
 			break;
 		}
-	case MESSAGING_DEVICE_PATH:{
+	case DEVICE_PATH_TYPE_MESSAGING_DEVICE:{
 			/* Unknown Messaging Device Path */
 			cprintf(str, "Msg(%d", Path->sub_type);
 			break;
 		}
-	case MEDIA_DEVICE_PATH:{
+	case DEVICE_PATH_TYPE_MEDIA_DEVICE:{
 			/* Unknown Media Device Path */
 			cprintf(str, "media_path(%d", Path->sub_type);
 			break;
 		}
-	case BBS_DEVICE_PATH:{	/* Unknown BIOS Boot Specification Device Path */
+	case DEVICE_PATH_TYPE_BBS_DEVICE:{	/* Unknown BIOS Boot Specification Device Path */
 			cprintf(str, "bbs_path(%d", Path->sub_type);
 			break;
 		}
@@ -690,32 +690,32 @@ struct {
 	void (*Function) (struct string *, const void *);
 } dev_path_table[] = {
 	{
-	HARDWARE_DEVICE_PATH, HW_PCI_DP, dev_path_pci}, {
-	HARDWARE_DEVICE_PATH, HW_PCCARD_DP, dev_path_pccard}, {
-	HARDWARE_DEVICE_PATH, HW_MEMMAP_DP, dev_path_mem_map}, {
-	HARDWARE_DEVICE_PATH, HW_VENDOR_DP, dev_path_vendor}, {
-	HARDWARE_DEVICE_PATH, HW_CONTROLLER_DP, dev_path_controller}, {
-	ACPI_DEVICE_PATH, ACPI_DP, dev_path_acpi}, {
-	MESSAGING_DEVICE_PATH, MSG_ATAPI_DP, dev_path_atapi}, {
-	MESSAGING_DEVICE_PATH, MSG_SCSI_DP, dev_path_scsi}, {
-	MESSAGING_DEVICE_PATH, MSG_FIBRECHANNEL_DP, dev_path_fibre}, {
-	MESSAGING_DEVICE_PATH, MSG_1394_DP, dev_path1394}, {
-	MESSAGING_DEVICE_PATH, MSG_USB_DP, dev_path_usb}, {
-	MESSAGING_DEVICE_PATH, MSG_I2_o_DP, dev_path_i2_o}, {
-	MESSAGING_DEVICE_PATH, MSG_MAC_ADDR_DP, dev_path_mac_addr}, {
-	MESSAGING_DEVICE_PATH, MSG_IPv4_DP, dev_path_iPv4}, {
-	MESSAGING_DEVICE_PATH, MSG_IPv6_DP, dev_path_iPv6}, {
-	MESSAGING_DEVICE_PATH, MSG_INFINIBAND_DP, dev_path_infini_band}, {
-	MESSAGING_DEVICE_PATH, MSG_UART_DP, dev_path_uart}, {
-	MESSAGING_DEVICE_PATH, MSG_SATA_DP, dev_path_sata}, {
-	MESSAGING_DEVICE_PATH, MSG_VENDOR_DP, dev_path_vendor}, {
-	MEDIA_DEVICE_PATH, MEDIA_HARDDRIVE_DP, dev_path_hard_drive}, {
-	MEDIA_DEVICE_PATH, MEDIA_CDROM_DP, dev_path_cdrom}, {
-	MEDIA_DEVICE_PATH, MEDIA_VENDOR_DP, dev_path_vendor}, {
-	MEDIA_DEVICE_PATH, MEDIA_FILEPATH_DP, dev_path_file_path}, {
-	MEDIA_DEVICE_PATH, MEDIA_PROTOCOL_DP, dev_path_media_protocol}, {
-	BBS_DEVICE_PATH, BBS_BBS_DP, dev_path_bss_bss}, {
-	END_DEVICE_PATH_TYPE, END_INSTANCE_DEVICE_PATH_SUBTYPE,
+	DEVICE_PATH_TYPE_HARDWARE_DEVICE, DEVICE_PATH_SUB_TYPE_PCI, dev_path_pci}, {
+	DEVICE_PATH_TYPE_HARDWARE_DEVICE, DEVICE_PATH_SUB_TYPE_PCCARD, dev_path_pccard}, {
+	DEVICE_PATH_TYPE_HARDWARE_DEVICE, DEVICE_PATH_SUB_TYPE_MEMORY, dev_path_mem_map}, {
+	DEVICE_PATH_TYPE_HARDWARE_DEVICE, DEVICE_PATH_SUB_TYPE_VENDOR, dev_path_vendor}, {
+	DEVICE_PATH_TYPE_HARDWARE_DEVICE, DEVICE_PATH_SUB_TYPE_CONTROLLER, dev_path_controller}, {
+	DEVICE_PATH_TYPE_ACPI_DEVICE, DEVICE_PATH_SUB_TYPE_ACPI_DEVICE, dev_path_acpi}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_ATAPI, dev_path_atapi}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_SCSI, dev_path_scsi}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_FIBRECHANNEL, dev_path_fibre}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_1394, dev_path1394}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_USB, dev_path_usb}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_I2_o, dev_path_i2_o}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_MAC_ADDR, dev_path_mac_addr}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_IPv4, dev_path_iPv4}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_IPv6, dev_path_iPv6}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_INFINIBAND, dev_path_infini_band}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_UART, dev_path_uart}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_SATA, dev_path_sata}, {
+	DEVICE_PATH_TYPE_MESSAGING_DEVICE, DEVICE_PATH_SUB_TYPE_MSG_VENDOR, dev_path_vendor}, {
+	DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_HARD_DRIVE_PATH, dev_path_hard_drive}, {
+	DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_CDROM_PATH, dev_path_cdrom}, {
+	DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_VENDOR_PATH, dev_path_vendor}, {
+	DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_FILE_PATH, dev_path_file_path}, {
+	DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_MEDIA_PROTOCOL, dev_path_media_protocol}, {
+	DEVICE_PATH_TYPE_BBS_DEVICE, DEVICE_PATH_SUB_TYPE_BBS_BBS, dev_path_bss_bss}, {
+	DEVICE_PATH_TYPE_END, DEVICE_PATH_SUB_TYPE_INSTANCE_END,
 		    dev_path_end_instance}, {
 	0, 0, NULL}
 };
@@ -854,9 +854,9 @@ char *device_path_to_partuuid(const struct efi_device_path *dev_path)
 	dev_path = unpack_device_path(dev_path);
 
 	while ((dev_path = device_path_next_compatible_node(dev_path,
-				 MEDIA_DEVICE_PATH, MEDIA_HARDDRIVE_DP))) {
-		struct harddrive_device_path *hd =
-			(struct harddrive_device_path *)dev_path;
+				 DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_HARD_DRIVE_PATH))) {
+		struct efi_device_path_hard_drive_path *hd =
+			(struct efi_device_path_hard_drive_path *)dev_path;
 
 		if (hd->signature_type != SIGNATURE_TYPE_GUID)
 			continue;
@@ -869,14 +869,14 @@ char *device_path_to_partuuid(const struct efi_device_path *dev_path)
 
 char *device_path_to_filepath(const struct efi_device_path *dev_path)
 {
-	struct filepath_device_path *fp = NULL;
+	struct efi_device_path_file_path *fp = NULL;
 	char *path;
 
 	dev_path = unpack_device_path(dev_path);
 
 	while ((dev_path = device_path_next_compatible_node(dev_path,
-				 MEDIA_DEVICE_PATH, MEDIA_FILEPATH_DP))) {
-		fp = container_of(dev_path, struct filepath_device_path, header);
+				 DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_FILE_PATH))) {
+		fp = container_of(dev_path, struct efi_device_path_file_path, header);
 		dev_path = next_device_path_node(&fp->header);
 	}
 
diff --git a/include/efi/device-path.h b/include/efi/device-path.h
index 91c8ce57c69c..8d64ac4900ac 100644
--- a/include/efi/device-path.h
+++ b/include/efi/device-path.h
@@ -7,42 +7,42 @@
  * Hardware Device Path (UEFI 2.4 specification, version 2.4 § 9.3.2.)
  */
 
-#define HARDWARE_DEVICE_PATH            0x01
+#define DEVICE_PATH_TYPE_HARDWARE_DEVICE            0x01
 
-#define HW_PCI_DP                       0x01
-struct pci_device_path {
+#define DEVICE_PATH_SUB_TYPE_PCI                       0x01
+struct efi_device_path_pci {
 	struct efi_device_path header;
 	u8 Function;
 	u8 Device;
 };
 
-#define HW_PCCARD_DP                    0x02
-struct pccard_device_path {
+#define DEVICE_PATH_SUB_TYPE_PCCARD                    0x02
+struct efi_device_path_pccard {
 	struct efi_device_path header;
 	u8 function_number;
 };
 
-#define HW_MEMMAP_DP                    0x03
-struct memmap_device_path {
+#define DEVICE_PATH_SUB_TYPE_MEMORY                    0x03
+struct efi_device_path_memory {
 	struct efi_device_path header;
 	u32 memory_type;
 	efi_physical_addr_t starting_address;
 	efi_physical_addr_t ending_address;
 };
 
-#define HW_VENDOR_DP                    0x04
-struct vendor_device_path {
+#define DEVICE_PATH_SUB_TYPE_VENDOR                    0x04
+struct efi_device_path_vendor {
 	struct efi_device_path header;
 	efi_guid_t Guid;
 };
 
-struct unknown_device_vendor_device_path {
-	struct vendor_device_path device_path;
+struct efi_device_path_unknown_device_vendor {
+	struct efi_device_path_vendor device_path;
 	u8 legacy_drive_letter;
 };
 
-#define HW_CONTROLLER_DP            0x05
-struct controller_device_path {
+#define DEVICE_PATH_SUB_TYPE_CONTROLLER            0x05
+struct efi_device_path_controller {
 	struct efi_device_path header;
 	u32 Controller;
 };
@@ -50,17 +50,17 @@ struct controller_device_path {
 /*
  * ACPI Device Path (UEFI 2.4 specification, version 2.4 § 9.3.3 and 9.3.4.)
  */
-#define ACPI_DEVICE_PATH                 0x02
+#define DEVICE_PATH_TYPE_ACPI_DEVICE                 0x02
 
-#define ACPI_DP                         0x01
-struct acpi_hid_device_path {
+#define DEVICE_PATH_SUB_TYPE_ACPI_DEVICE                         0x01
+struct efi_device_path_acpi_hid {
 	struct efi_device_path header;
 	u32 HID;
 	u32 UID;
 };
 
-#define EXPANDED_ACPI_DP		0x02
-struct expanded_acpi_hid_device_path {
+#define DEVICE_PATH_SUB_TYPE_EXPANDED_ACPI_DEVICE		0x02
+struct efi_device_path_expanded_acpi {
 	struct efi_device_path header;
 	u32 HID;
 	u32 UID;
@@ -68,8 +68,8 @@ struct expanded_acpi_hid_device_path {
 	u8 hid_str[1];
 };
 
-#define ACPI_ADR_DP 3
-struct acpi_adr_device_path {
+#define DEVICE_PATH_SUB_TYPE_ACPI_ADR_DEVICE 3
+struct efi_device_path_acpi_adr {
 	struct efi_device_path header;
 	u32 ADR;
 };
@@ -91,25 +91,25 @@ struct acpi_adr_device_path {
 /*
  * Messaging Device Path (UEFI 2.4 specification, version 2.4 § 9.3.5.)
  */
-#define MESSAGING_DEVICE_PATH           0x03
+#define DEVICE_PATH_TYPE_MESSAGING_DEVICE           0x03
 
-#define MSG_ATAPI_DP                    0x01
-struct atapi_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_ATAPI                    0x01
+struct efi_device_path_atapi {
 	struct efi_device_path header;
 	u8 primary_secondary;
 	u8 slave_master;
 	u16 Lun;
 };
 
-#define MSG_SCSI_DP                     0x02
-struct scsi_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_SCSI                     0x02
+struct efi_device_path_scsi {
 	struct efi_device_path header;
 	u16 Pun;
 	u16 Lun;
 };
 
-#define MSG_FIBRECHANNEL_DP             0x03
-struct fibrechannel_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_FIBRECHANNEL             0x03
+struct efi_device_path_fibrechannel {
 	struct efi_device_path header;
 	u32 Reserved;
 	u64 WWN;
@@ -120,23 +120,23 @@ struct fibrechannel_device_path {
  * Fibre Channel Ex sub_type.
  * UEFI 2.0 specification version 2.4 § 9.3.5.6.
  */
-#define MSG_FIBRECHANNELEX_DP 21
-struct fibrechannelex_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_FIBRECHANNEL_EX 21
+struct efi_device_path_fibrechannelex {
 	struct efi_device_path header;
 	u32 Reserved;
 	u8 WWN[8];		/* World Wide Name */
 	u8 Lun[8];		/* Logical unit, T-10 SCSI Architecture Model 4 specification */
 };
 
-#define MSG_1394_DP                     0x04
-struct f1394_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_1394                     0x04
+struct efi_device_path_f1394 {
 	struct efi_device_path header;
 	u32 Reserved;
 	u64 Guid;
 };
 
-#define MSG_USB_DP                      0x05
-struct usb_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_USB                      0x05
+struct efi_device_path_usb {
 	struct efi_device_path header;
 	u8 Port;
 	u8 Endpoint;
@@ -146,8 +146,8 @@ struct usb_device_path {
  * SATA Device Path sub_type.
  * UEFI 2.0 specification version 2.4 § 9.3.5.6.
  */
-#define MSG_SATA_DP 18
-struct sata_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_SATA 18
+struct efi_device_path_sata {
 	struct efi_device_path header;
 	u16 HBAPort_number;
 	u16 port_multiplier_port_number;
@@ -158,8 +158,8 @@ struct sata_device_path {
  * USB WWID Device Path sub_type.
  * UEFI 2.0 specification version 2.4 § 9.3.5.7.
  */
-#define MSG_USB_WWID_DP 16
-struct usb_wwid_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_USB_WWID 16
+struct efi_device_path_usb_wwid {
 	struct efi_device_path header;
 	u16 interface_number;
 	u16 vendor_id;
@@ -171,14 +171,14 @@ struct usb_wwid_device_path {
  * Device Logical Unit sub_type.
  * UEFI 2.0 specification version 2.4 § 9.3.5.8.
  */
-#define MSG_DEVICE_LOGICAL_UNIT_DP 17
-struct device_logical_unit_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_DEVICE_LOGICAL_UNIT 17
+struct efi_device_path_logical_unit {
 	struct efi_device_path header;
 	u8 Lun;			/* Logical Unit Number */
 };
 
-#define MSG_USB_CLASS_DP                0x0f
-struct usb_class_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_USB_CLASS                0x0f
+struct efi_device_path_usb_class {
 	struct efi_device_path header;
 	u16 vendor_id;
 	u16 product_id;
@@ -187,21 +187,21 @@ struct usb_class_device_path {
 	u8 device_protocol;
 };
 
-#define MSG_I2_o_DP                      0x06
-struct i2_o_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_I2_o                      0x06
+struct efi_device_path_i2_o {
 	struct efi_device_path header;
 	u32 Tid;
 };
 
-#define MSG_MAC_ADDR_DP                 0x0b
-struct mac_addr_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_MAC_ADDR                 0x0b
+struct efi_device_path_mac_addr {
 	struct efi_device_path header;
 	struct efi_mac_address mac_address;
 	u8 if_type;
 };
 
-#define MSG_IPv4_DP                     0x0c
-struct ipv4_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_IPv4                     0x0c
+struct efi_device_path_ipv4 {
 	struct efi_device_path header;
 	struct efi_ipv4_address local_ip_address;
 	struct efi_ipv4_address remote_ip_address;
@@ -214,8 +214,8 @@ struct ipv4_device_path {
 	struct efi_ipv4_address subnet_mask;
 };
 
-#define MSG_IPv6_DP                     0x0d
-struct ipv6_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_IPv6                     0x0d
+struct efi_device_path_ipv6 {
 	struct efi_device_path header;
 	struct efi_ipv6_address local_ip_address;
 	struct efi_ipv6_address remote_ip_address;
@@ -232,14 +232,14 @@ struct ipv6_device_path {
  * Device Logical Unit sub_type.
  * UEFI 2.0 specification version 2.4 § 9.3.5.8.
  */
-#define MSG_VLAN_DP 20
-struct vlan_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_VLAN 20
+struct efi_device_path_vlan {
 	struct efi_device_path header;
 	u16 vlan_id;
 };
 
-#define MSG_INFINIBAND_DP               0x09
-struct infiniband_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_INFINIBAND               0x09
+struct efi_device_path_infiniband {
 	struct efi_device_path header;
 	u32 resource_flags;
 	efi_guid_t port_gid;
@@ -248,8 +248,8 @@ struct infiniband_device_path {
 	u64 device_id;
 };
 
-#define MSG_UART_DP                     0x0e
-struct uart_device_path {
+#define DEVICE_PATH_SUB_TYPE_MSG_UART                     0x0e
+struct efi_device_path_uart {
 	struct efi_device_path header;
 	u32 Reserved;
 	u64 baud_rate;
@@ -258,7 +258,7 @@ struct uart_device_path {
 	u8 stop_bits;
 };
 
-#define MSG_VENDOR_DP                   0x0a
+#define DEVICE_PATH_SUB_TYPE_MSG_VENDOR                   0x0a
 /* Use VENDOR_DEVICE_PATH struct */
 
 #define DEVICE_PATH_MESSAGING_PC_ANSI \
@@ -288,10 +288,10 @@ struct uart_device_path {
 /*
  * Media Device Path (UEFI 2.4 specification, version 2.4 § 9.3.6.)
  */
-#define MEDIA_DEVICE_PATH               0x04
+#define DEVICE_PATH_TYPE_MEDIA_DEVICE               0x04
 
-#define MEDIA_HARDDRIVE_DP              0x01
-struct harddrive_device_path {
+#define DEVICE_PATH_SUB_TYPE_HARD_DRIVE_PATH              0x01
+struct efi_device_path_hard_drive_path {
 	struct efi_device_path header;
 	u32 partition_number;
 	u64 partition_start;
@@ -307,27 +307,27 @@ struct harddrive_device_path {
 #define SIGNATURE_TYPE_MBR                  0x01
 #define SIGNATURE_TYPE_GUID                 0x02
 
-#define MEDIA_CDROM_DP                  0x02
-struct cdrom_device_path {
+#define DEVICE_PATH_SUB_TYPE_CDROM_PATH                  0x02
+struct efi_device_path_cdrom_path {
 	struct efi_device_path header;
 	u32 boot_entry;
 	u64 partition_start;
 	u64 partition_size;
 };
 
-#define MEDIA_VENDOR_DP                 0x03
+#define DEVICE_PATH_SUB_TYPE_VENDOR_PATH                 0x03
 /* Use VENDOR_DEVICE_PATH struct */
 
-#define MEDIA_FILEPATH_DP               0x04
-struct filepath_device_path {
+#define DEVICE_PATH_SUB_TYPE_FILE_PATH               0x04
+struct efi_device_path_file_path {
 	struct efi_device_path header;
 	s16 path_name[1];
 };
 
 #define SIZE_OF_FILEPATH_DEVICE_PATH offsetof(FILEPATH_DEVICE_PATH,path_name)
 
-#define MEDIA_PROTOCOL_DP               0x05
-struct media_protocol_device_path {
+#define DEVICE_PATH_SUB_TYPE_MEDIA_PROTOCOL               0x05
+struct efi_device_path_media_protocol {
 	struct efi_device_path header;
 	efi_guid_t Protocol;
 };
@@ -336,8 +336,8 @@ struct media_protocol_device_path {
  * PIWG Firmware File sub_type.
  * UEFI 2.0 specification version 2.4 § 9.3.6.6.
  */
-#define MEDIA_PIWG_FW_FILE_DP 6
-struct media_fw_vol_filepath_device_path {
+#define DEVICE_PATH_SUB_TYPE_PIWG_FW_FILE 6
+struct efi_device_path_media_fw_vol_file_path {
 	struct efi_device_path header;
 	efi_guid_t fv_file_name;
 };
@@ -346,8 +346,8 @@ struct media_fw_vol_filepath_device_path {
  * PIWG Firmware Volume Device Path sub_type.
  * UEFI 2.0 specification version 2.4 § 9.3.6.7.
  */
-#define MEDIA_PIWG_FW_VOL_DP 7
-struct media_fw_vol_device_path {
+#define DEVICE_PATH_SUB_TYPE_PIWG_FW_VOL 7
+struct efi_device_media_piwg_fw_vol {
 	struct efi_device_path header;
 	efi_guid_t fv_name;
 };
@@ -356,8 +356,8 @@ struct media_fw_vol_device_path {
  * Media relative offset range device path.
  * UEFI 2.0 specification version 2.4 § 9.3.6.8.
  */
-#define MEDIA_RELATIVE_OFFSET_RANGE_DP 8
-struct media_relative_offset_range_device_path {
+#define DEVICE_PATH_SUB_TYPE_MEDIA_RELATIVE_OFFSET_RANGE 8
+struct efi_device_media_relative_offset_range {
 	struct efi_device_path header;
 	u32 Reserved;
 	u64 starting_offset;
@@ -367,10 +367,10 @@ struct media_relative_offset_range_device_path {
 /*
  * BIOS Boot Specification Device Path (UEFI 2.4 specification, version 2.4 § 9.3.7.)
  */
-#define BBS_DEVICE_PATH                 0x05
+#define DEVICE_PATH_TYPE_BBS_DEVICE                 0x05
 
-#define BBS_BBS_DP                      0x01
-struct bbs_bbs_device_path {
+#define DEVICE_PATH_SUB_TYPE_BBS_BBS                      0x01
+struct efi_device_path_bbs_bbs {
 	struct efi_device_path header;
 	u16 device_type;
 	u16 status_flag;
@@ -388,13 +388,13 @@ struct bbs_bbs_device_path {
 #define BBS_TYPE_UNKNOWN                0xff
 
 
-#define EFI_DP_TYPE_MASK			0x7f
-#define EFI_DP_TYPE_UNPACKED			0x80
+#define DEVICE_PATH_TYPE_MASK			0x7f
+#define DEVICE_PATH_TYPE_UNPACKED		0x80
 
-#define END_DEVICE_PATH_TYPE			0x7f
+#define DEVICE_PATH_TYPE_END			0x7f
 
-#define END_ENTIRE_DEVICE_PATH_SUBTYPE		0xff
-#define END_INSTANCE_DEVICE_PATH_SUBTYPE	0x01
-#define END_DEVICE_PATH_LENGTH			(sizeof(struct efi_device_path))
+#define DEVICE_PATH_SUB_TYPE_END		0xff
+#define DEVICE_PATH_SUB_TYPE_INSTANCE_END	0x01
+#define DEVICE_PATH_END_LENGTH			(sizeof(struct efi_device_path))
 
 #endif /* __EFI_DEVICE_PATH_H */
-- 
2.39.2



