Delivery-date: Wed, 03 Jan 2024 19:33:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63u-002Nnr-2O
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63l-0004l0-T4
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S5XyfRGJAABxWwZat3xJ7SMuCEwKR4mA4g37CpgNsQQ=; b=fMyrFi5HNGqiENHOE0Eid+tP9H
	UCtdRwRTK+xzZ0cxTIu+BxlveY+KFTSKW3mfX0yxGH3GsvUb2Q5781fOXhPAKjRs+535Kg6ArDNo0
	bqn0Y88W5rM+n/lH+Fhz2F2WXr0BSUBgIKgFhT8HEl5q0XZD+/GExGlZHrWm91oTCIc0/xbkmE6B3
	naJqG/V7TqYEPy0eExCmauYs1zK7auBw+5+bUyyC4mC9OBeeTT9Ix1PeuFBXgJlBwDdZjNkC6EA4R
	CGdpPgOZMFEtIwNxk+FV0PK/iwsl6+a+o6ZezjiRKUjJ3H+eObvlmeERsaNGwO477r5OAX0XSzp+r
	EtMbgIoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL622-00BiGb-28;
	Wed, 03 Jan 2024 18:31:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61D-00BhHj-1Z
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=S5XyfRGJAABxWwZat3xJ7SMuCEwKR4mA4g37CpgNsQQ=; b=I/2GLxFBeGyqrdDgjzuNhqPN/h
	pzGq13RRGMoONHroeUw6KCzjs3n+rIztNuehJfLoQz5xEq5pbaY6qwWG6q+o2Q5smJqRMT9HSauQa
	59AVA0ZfTB+v0E5aAHA72WmEApBb0RDLYE+nkgscakQURxVS7NgfG20mhQtKC2tUXBp9D2bCJ3W0Z
	x/tIWMmWcod4JLQC/H+6l2Mt05UHHM4yj5lEdwqo1VcrgpOMg9ejfScAYwaSSvQOBjVeAETjIkoAu
	SHSLL86QboajbtACM9suRatkPBD9WXuA9tJMeRtEfHXwoMWvdOj48MgTwUPlndizavGEy4eb7Xl3H
	hzHjbmhQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL611-005eC9-0t
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001TI-6v; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000Atz-QS; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-0n;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:11 +0100
Message-Id: <20240103181312.409668-52-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_556661_6276EAFC 
X-CRM114-Status: GOOD (  19.27  )
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
Subject: [PATCH 051/112] efi: don't hide structs, enums or unions behind _t
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Kernel coding style is to usually not hide the fact that a type is a
struct or enum behind a typedef. Follow that in the EFI code.

Besides being more descriptive, this also allows forward declarations,
so <efi.h> doesn't have to be included everywhere.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/mach-efi/reloc_ia32.c |  2 +-
 drivers/bus/acpi.c             |  4 +-
 drivers/efi/efi-device.c       |  2 +-
 drivers/net/efi-snp.c          | 20 ++++----
 efi/devicepath.c               |  6 +--
 efi/payload/fdt.c              |  2 +-
 efi/payload/image.c            |  8 ++--
 efi/payload/init.c             | 10 ++--
 fs/efi.c                       |  6 +--
 include/efi.h                  | 86 +++++++++++++++++-----------------
 include/efi/device-path.h      | 16 +++----
 include/efi/efi-payload.h      |  4 +-
 12 files changed, 83 insertions(+), 83 deletions(-)

diff --git a/arch/x86/mach-efi/reloc_ia32.c b/arch/x86/mach-efi/reloc_ia32.c
index 46929631ec02..c235421ce180 100644
--- a/arch/x86/mach-efi/reloc_ia32.c
+++ b/arch/x86/mach-efi/reloc_ia32.c
@@ -38,7 +38,7 @@
 
 #include <elf.h>
 
-efi_status_t _relocate(long ldbase, Elf32_Dyn *dyn, efi_handle_t image, efi_system_table_t *systab)
+efi_status_t _relocate(long ldbase, Elf32_Dyn *dyn, efi_handle_t image, struct efi_system_table *systab)
 {
 	long relsz = 0, relent = 0;
 	Elf32_Rel *rel = 0;
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index ac034cce4569..953ccd755f98 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -149,7 +149,7 @@ static struct device *acpi_add_device(struct bus_type *bus,
 
 static int acpi_register_devices(struct bus_type *bus)
 {
-	efi_config_table_t *table = bus->dev->priv;
+	struct efi_config_table *table = bus->dev->priv;
 	struct acpi_rsdp *rsdp;
 	struct acpi_rsdt *root;
 	size_t entry_count;
@@ -225,7 +225,7 @@ struct bus_type acpi_bus = {
 
 static int efi_acpi_probe(void)
 {
-	efi_config_table_t *ect, *table = NULL;
+	struct efi_config_table *ect, *table = NULL;
 
 	for_each_efi_config_table(ect) {
 		/* take ACPI < 2 table only if no ACPI 2.0 is available */
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index ad6899ad5c45..f93bbc6a4e50 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -347,7 +347,7 @@ struct bus_type efi_bus = {
 
 static void efi_businfo(struct device *dev)
 {
-	efi_config_table_t *t;
+	struct efi_config_table *t;
 	int i = 0;
 
 	printf("Tables:\n");
diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index 7e94b613a1d1..476015f1c2a2 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -69,10 +69,10 @@ struct efi_simple_network_mode {
 	uint32_t ReceiveFilterSetting;
 	uint32_t MaxMCastFilterCount;
 	uint32_t MCastFilterCount;
-	efi_mac_address MCastFilter[MAX_MCAST_FILTER_CNT];
-	efi_mac_address CurrentAddress;
-	efi_mac_address BroadcastAddress;
-	efi_mac_address PermanentAddress;
+	struct efi_mac_address MCastFilter[MAX_MCAST_FILTER_CNT];
+	struct efi_mac_address CurrentAddress;
+	struct efi_mac_address BroadcastAddress;
+	struct efi_mac_address PermanentAddress;
 	uint8_t IfType;
         bool MacAddressChangeable;
 	bool MultipleTxSupported;
@@ -92,14 +92,14 @@ struct efi_simple_network {
 	efi_status_t (EFIAPI *shutdown) (struct efi_simple_network *This);
 	efi_status_t (EFIAPI *receive_filters) (struct efi_simple_network *This,
 			uint32_t Enable, uint32_t Disable, bool ResetMCastFilter,
-			unsigned long MCastFilterCnt, efi_mac_address *MCastFilter);
+			unsigned long MCastFilterCnt, struct efi_mac_address *MCastFilter);
 	efi_status_t (EFIAPI *station_address) (struct efi_simple_network *This,
-			bool Reset, efi_mac_address *New);
+			bool Reset, struct efi_mac_address *New);
 	efi_status_t (EFIAPI *statistics) (struct efi_simple_network *This,
 			bool Reset, unsigned long *StatisticsSize,
 			struct efi_network_statistics *StatisticsTable);
 	efi_status_t (EFIAPI *mcast_ip_to_mac) (struct efi_simple_network *This,
-			bool IPv6, efi_ip_address *IP, efi_mac_address *MAC);
+			bool IPv6, union efi_ip_address *IP, struct efi_mac_address *MAC);
 	efi_status_t (EFIAPI *nvdata) (struct efi_simple_network *This,
 			bool ReadWrite, unsigned long Offset, unsigned long BufferSize,
 			void *Buffer);
@@ -107,11 +107,11 @@ struct efi_simple_network {
 			uint32_t *InterruptStatus, void **TxBuf);
 	efi_status_t (EFIAPI *transmit) (struct efi_simple_network *This,
 			unsigned long HeaderSize, unsigned long BufferSize, void *Buffer,
-			efi_mac_address *SrcAddr, efi_mac_address *DestAddr,
+			struct efi_mac_address *SrcAddr, struct efi_mac_address *DestAddr,
 			uint16_t *Protocol);
 	efi_status_t (EFIAPI *receive) (struct efi_simple_network *This,
 			unsigned long *HeaderSize, unsigned long *BufferSize, void *Buffer,
-			efi_mac_address *SrcAddr, efi_mac_address *DestAddr, uint16_t *Protocol);
+			struct efi_mac_address *SrcAddr, struct efi_mac_address *DestAddr, uint16_t *Protocol);
 	void *WaitForPacket;
 	struct efi_simple_network_mode *Mode;
 };
@@ -220,7 +220,7 @@ static int efi_snp_eth_open(struct eth_device *edev)
 	}
 
 	efiret = priv->snp->station_address(priv->snp, false,
-			(efi_mac_address *)priv->snp->Mode->PermanentAddress.Addr );
+			(struct efi_mac_address *)priv->snp->Mode->PermanentAddress.Addr );
 	if (EFI_ERROR(efiret)) {
 		dev_err(priv->dev, "failed to set MAC address: %s\n",
 				efi_strerror(efiret));
diff --git a/efi/devicepath.c b/efi/devicepath.c
index 584f1fbd1d7a..fad36c78a260 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -334,14 +334,14 @@ dev_path_mac_addr(struct string *str, void *dev_path)
 }
 
 static void
-cat_print_iPv4(struct string *str, efi_ipv4_address * address)
+cat_print_iPv4(struct string *str, struct efi_ipv4_address * address)
 {
 	cprintf(str, "%d.%d.%d.%d", address->Addr[0], address->Addr[1],
 		address->Addr[2], address->Addr[3]);
 }
 
 static bool
-is_not_null_iPv4(efi_ipv4_address * address)
+is_not_null_iPv4(struct efi_ipv4_address * address)
 {
 	u8 val;
 
@@ -405,7 +405,7 @@ dev_path_iPv4(struct string *str, void *dev_path)
 
 #define cat_print_iPv6_ADD( x , y ) ( ( (u16) ( x ) ) << 8 | ( y ) )
 static void
-cat_print_ipv6(struct string *str, efi_ipv6_address * address)
+cat_print_ipv6(struct string *str, struct efi_ipv6_address * address)
 {
 	cprintf(str, "%x:%x:%x:%x:%x:%x:%x:%x",
 		cat_print_iPv6_ADD(address->Addr[0], address->Addr[1]),
diff --git a/efi/payload/fdt.c b/efi/payload/fdt.c
index dbbc93fb7d68..faa7a5ad8d41 100644
--- a/efi/payload/fdt.c
+++ b/efi/payload/fdt.c
@@ -10,7 +10,7 @@
 
 static int efi_fdt_probe(void)
 {
-	efi_config_table_t *ect;
+	struct efi_config_table *ect;
 
 	for_each_efi_config_table(ect) {
 		struct fdt_header *oftree;
diff --git a/efi/payload/image.c b/efi/payload/image.c
index fb77ce4437fc..f9706c028ed9 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -121,7 +121,7 @@ static void efi_free_file(void *_mem, size_t size)
 		BS->free_pages(mem, DIV_ROUND_UP(size, EFI_PAGE_SIZE));
 }
 
-static int efi_load_image(const char *file, efi_loaded_image_t **loaded_image,
+static int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 		efi_handle_t *h)
 {
 	void *exe;
@@ -158,7 +158,7 @@ static int efi_load_image(const char *file, efi_loaded_image_t **loaded_image,
 static int efi_execute_image(const char *file)
 {
 	efi_handle_t handle;
-	efi_loaded_image_t *loaded_image;
+	struct efi_loaded_image *loaded_image;
 	efi_status_t efiret;
 	struct linux_kernel_header *image_header;
 	const char *options;
@@ -204,7 +204,7 @@ static int efi_execute_image(const char *file)
 }
 
 #ifdef __x86_64__
-typedef void(*handover_fn)(void *image, efi_system_table_t *table,
+typedef void(*handover_fn)(void *image, struct efi_system_table *table,
 		struct linux_kernel_header *header);
 
 static inline void linux_efi_handover(efi_handle_t handle,
@@ -239,7 +239,7 @@ static int do_bootm_efi(struct image_data *data)
 	efi_handle_t handle;
 	int ret;
 	const char *options;
-	efi_loaded_image_t *loaded_image;
+	struct efi_loaded_image *loaded_image;
 	struct linux_kernel_header *image_header, *boot_header;
 
 	ret = efi_load_image(data->os_file, &loaded_image, &handle);
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 6d65f6d53464..4b612e61afb3 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -40,12 +40,12 @@
 #include <bbu.h>
 #include <generated/utsrelease.h>
 
-efi_runtime_services_t *RT;
-efi_boot_services_t *BS;
-efi_system_table_t *efi_sys_table;
+struct efi_runtime_services *RT;
+struct efi_boot_services *BS;
+struct efi_system_table *efi_sys_table;
 efi_handle_t efi_parent_image;
 struct efi_device_path *efi_device_path;
-efi_loaded_image_t *efi_loaded_image;
+struct efi_loaded_image *efi_loaded_image;
 
 void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size)
 {
@@ -269,7 +269,7 @@ device_initcall(efi_init);
 /**
  * efi-main - Entry point for EFI images
  */
-void efi_main(efi_handle_t image, efi_system_table_t *sys_table)
+void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
 {
 	efi_physical_addr_t mem;
 	size_t memsize;
diff --git a/fs/efi.c b/fs/efi.c
index 0789f6ecee6b..0cfd5a3aebf6 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -84,9 +84,9 @@ struct efi_file_info {
 	uint64_t Size;
 	uint64_t FileSize;
 	uint64_t PhysicalSize;
-	efi_time_t CreateTime;
-	efi_time_t LastAccessTime;
-	efi_time_t ModificationTime;
+	struct efi_time CreateTime;
+	struct efi_time LastAccessTime;
+	struct efi_time ModificationTime;
 	uint64_t Attribute;
 	s16 FileName[1];
 };
diff --git a/include/efi.h b/include/efi.h
index f1567f7791b8..10e22f1e9f99 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -92,13 +92,13 @@ typedef guid_t efi_guid_t __aligned(__alignof__(u32));
 /*
  * Generic EFI table header
  */
-typedef	struct {
+struct efi_table_hdr {
 	u64 signature;
 	u32 revision;
 	u32 headersize;
 	u32 crc32;
 	u32 reserved;
-} efi_table_hdr_t;
+};
 
 /*
  * Memory map descriptor:
@@ -165,7 +165,7 @@ typedef int (*efi_freemem_callback_t) (u64 start, u64 end, void *arg);
 #define EFI_TIME_IN_DAYLIGHT     0x2
 #define EFI_UNSPECIFIED_TIMEZONE 0x07ff
 
-typedef struct {
+struct efi_time {
 	u16 year;
 	u8 month;
 	u8 day;
@@ -177,13 +177,13 @@ typedef struct {
 	s16 timezone;
 	u8 daylight;
 	u8 pad2;
-} efi_time_t;
+};
 
-typedef struct {
+struct efi_time_cap {
 	u32 resolution;
 	u32 accuracy;
 	u8 sets_to_zero;
-} efi_time_cap_t;
+};
 
 enum efi_locate_search_type {
 	ALL_HANDLES,
@@ -198,17 +198,17 @@ struct efi_open_protocol_information_entry {
 	u32 open_count;
 };
 
-typedef enum {
+enum efi_timer_delay {
 	EFI_TIMER_CANCEL = 0,
 	EFI_TIMER_PERIODIC = 1,
 	EFI_TIMER_RELATIVE = 2
-} efi_timer_delay_t;
+};
 
 /*
  * EFI Boot Services table
  */
-typedef struct {
-	efi_table_hdr_t hdr;
+struct efi_boot_services {
+	struct efi_table_hdr hdr;
 	void *raise_tpl;
 	void *restore_tpl;
 	efi_status_t (EFIAPI *allocate_pages)(int, int, unsigned long,
@@ -232,7 +232,7 @@ typedef struct {
 	efi_status_t(EFIAPI *create_event)(u32 type , unsigned long tpl,
 			void (*fn) (void *event, void *ctx),
 			void *ctx, void **event);
-	efi_status_t(EFIAPI *set_timer)(void *event, efi_timer_delay_t type, uint64_t time);
+	efi_status_t(EFIAPI *set_timer)(void *event, enum efi_timer_delay type, uint64_t time);
 	efi_status_t(EFIAPI *wait_for_event)(unsigned long number_of_events, void *event,
 			unsigned long *index);
 	void *signal_event;
@@ -298,18 +298,18 @@ typedef struct {
 	void *copy_mem;
 	void *set_mem;
 	void *create_event_ex;
-} efi_boot_services_t;
+};
 
-extern efi_boot_services_t *BS;
+extern struct efi_boot_services *BS;
 
 /*
  * Types and defines for EFI ResetSystem
  */
-typedef enum {
+enum efi_reset_type {
 	EFI_RESET_COLD = 0,
 	EFI_RESET_WARM = 1,
 	EFI_RESET_SHUTDOWN = 2
-} efi_reset_type_t;
+};
 
 /*
  * EFI Runtime Services table
@@ -317,8 +317,8 @@ typedef enum {
 #define EFI_RUNTIME_SERVICES_SIGNATURE ((u64)0x5652453544e5552ULL)
 #define EFI_RUNTIME_SERVICES_REVISION  0x00010000
 
-typedef struct {
-	efi_table_hdr_t hdr;
+struct efi_runtime_services {
+	struct efi_table_hdr hdr;
 	void *get_time;
 	void *set_time;
 	void *get_wakeup_time;
@@ -332,14 +332,14 @@ typedef struct {
 	efi_status_t (EFIAPI *set_variable)(s16 *variable_name, efi_guid_t *vendor,
 			u32 Attributes, unsigned long data_size, void *data);
 	void *get_next_high_mono_count;
-	void (EFIAPI *reset_system)(efi_reset_type_t reset_type, efi_status_t reset_status,
+	void (EFIAPI *reset_system)(enum efi_reset_type reset_type, efi_status_t reset_status,
 			unsigned long data_size, void *reset_data);
 	void *update_capsule;
 	void *query_capsule_caps;
 	void *query_variable_info;
-} efi_runtime_services_t;
+};
 
-extern efi_runtime_services_t *RT;
+extern struct efi_runtime_services *RT;
 
 /*
  *  EFI Configuration Table and GUID definitions
@@ -554,10 +554,10 @@ extern efi_guid_t efi_barebox_vendor_guid;
 extern efi_guid_t efi_systemd_vendor_guid;
 extern efi_guid_t efi_fdt_guid;
 
-typedef struct {
+struct efi_config_table {
 	efi_guid_t guid;
-	unsigned long table;
-} efi_config_table_t;
+	void * table;
+};
 
 #define for_each_efi_config_table(t) \
 	for (t = efi_sys_table->tables; \
@@ -573,8 +573,8 @@ typedef struct {
 #define EFI_1_10_SYSTEM_TABLE_REVISION  ((1 << 16) | (10))
 #define EFI_1_02_SYSTEM_TABLE_REVISION  ((1 << 16) | (02))
 
-typedef struct {
-	efi_table_hdr_t hdr;
+struct efi_system_table {
+	struct efi_table_hdr hdr;
 	unsigned long fw_vendor;	/* physical addr of CHAR16 vendor string */
 	u32 fw_revision;
 	unsigned long con_in_handle;
@@ -583,16 +583,16 @@ typedef struct {
 	struct efi_simple_text_output_protocol *con_out;
 	unsigned long stderr_handle;
 	unsigned long std_err;
-	efi_runtime_services_t *runtime;
-	efi_boot_services_t *boottime;
+	struct efi_runtime_services *runtime;
+	struct efi_boot_services *boottime;
 	unsigned long nr_tables;
-	efi_config_table_t *tables;
-} efi_system_table_t;
+	struct efi_config_table *tables;
+};
 
-typedef struct {
+struct efi_loaded_image {
 	u32 revision;
 	void *parent_handle;
-	efi_system_table_t *system_table;
+	struct efi_system_table *system_table;
 	void *device_handle;
 	void *file_path;
 	void *reserved;
@@ -603,7 +603,7 @@ typedef struct {
 	unsigned int image_code_type;
 	unsigned int image_data_type;
 	unsigned long unload;
-} efi_loaded_image_t;
+};
 
 static inline int
 efi_guidcmp (efi_guid_t left, efi_guid_t right)
@@ -611,7 +611,7 @@ efi_guidcmp (efi_guid_t left, efi_guid_t right)
 	return memcmp(&left, &right, sizeof (efi_guid_t));
 }
 
-__attribute__((noreturn)) void efi_main(efi_handle_t, efi_system_table_t *);
+__attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *);
 
 /*
  * Variable Attributes
@@ -683,23 +683,23 @@ struct efi_simple_input_interface {
 	void *wait_for_key;
 };
 
-typedef struct {
+struct efi_mac_address {
 	uint8_t Addr[32];
-} efi_mac_address;
+};
 
-typedef struct {
+struct efi_ipv4_address {
 	uint8_t Addr[4];
-} efi_ipv4_address;
+};
 
-typedef struct {
+struct efi_ipv6_address {
 	uint8_t Addr[16];
-} efi_ipv6_address;
+};
 
-typedef union {
+union efi_ip_address {
 	uint32_t Addr[4];
-	efi_ipv4_address v4;
-	efi_ipv6_address v6;
-} efi_ip_address;
+	struct efi_ipv4_address v4;
+	struct efi_ipv6_address v6;
+};
 
 struct efi_device_path *device_path_from_handle(efi_handle_t Handle);
 char *device_path_to_str(struct efi_device_path *dev_path);
diff --git a/include/efi/device-path.h b/include/efi/device-path.h
index f3af71465bf8..2882b87d6831 100644
--- a/include/efi/device-path.h
+++ b/include/efi/device-path.h
@@ -194,36 +194,36 @@ struct i2_o_device_path {
 #define MSG_MAC_ADDR_DP                 0x0b
 struct mac_addr_device_path {
 	struct efi_device_path header;
-	efi_mac_address mac_address;
+	struct efi_mac_address mac_address;
 	u8 if_type;
 };
 
 #define MSG_IPv4_DP                     0x0c
 struct ipv4_device_path {
 	struct efi_device_path header;
-	efi_ipv4_address local_ip_address;
-	efi_ipv4_address remote_ip_address;
+	struct efi_ipv4_address local_ip_address;
+	struct efi_ipv4_address remote_ip_address;
 	u16 local_port;
 	u16 remote_port;
 	u16 Protocol;
 	bool static_ip_address;
 	/* new from UEFI version 2, code must check length field in header */
-	efi_ipv4_address gateway_ip_address;
-	efi_ipv4_address subnet_mask;
+	struct efi_ipv4_address gateway_ip_address;
+	struct efi_ipv4_address subnet_mask;
 };
 
 #define MSG_IPv6_DP                     0x0d
 struct ipv6_device_path {
 	struct efi_device_path header;
-	efi_ipv6_address local_ip_address;
-	efi_ipv6_address remote_ip_address;
+	struct efi_ipv6_address local_ip_address;
+	struct efi_ipv6_address remote_ip_address;
 	u16 local_port;
 	u16 remote_port;
 	u16 Protocol;
 	bool IPAddress_origin;
 	/* new from UEFI version 2, code must check length field in header */
 	u8 prefix_length;
-	efi_ipv6_address gateway_ip_address;
+	struct efi_ipv6_address gateway_ip_address;
 };
 
 /**
diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
index a2daff08bb3f..cddd8c8ddd47 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/efi-payload.h
@@ -5,10 +5,10 @@
 #include <efi.h>
 #include <efi/efi-util.h>
 
-extern efi_system_table_t *efi_sys_table;
+extern struct efi_system_table *efi_sys_table;
 extern efi_handle_t efi_parent_image;
 extern struct efi_device_path *efi_device_path;
-extern efi_loaded_image_t *efi_loaded_image;
+extern struct efi_loaded_image *efi_loaded_image;
 
 void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size);
 
-- 
2.39.2



