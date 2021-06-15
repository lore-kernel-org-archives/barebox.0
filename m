Delivery-date: Tue, 15 Jun 2021 18:46:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCDC-0002PA-Oj
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 18:46:50 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCDA-0004RV-NF
	for lore@pengutronix.de; Tue, 15 Jun 2021 18:46:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dJaSvsjJ/7Qbzexgl3ZXrTI47j36utD13spBxmmtUk=; b=dtZMJ8zih5tRGa
	ogGG40bSLGz76wOR3nQpatim+JOGOUu5I1MgeQpC4Uy20HJ5KhBBaYbg7U/OEDKsVU18wep2x3S4d
	ClGEb076yV3T/8o7XhOCBQOUASYQBgto8C4jbrIfDLBJPA/JDKW3szWP6LVrxucAucEFoBjybKBiS
	dUAgo8cqrbIRmFm9k8TM/3KsnbH4rxNZ4DndmozG02PKawRfkixhbOmM32IF2uIW0HGGTgRRIi56i
	b9qtEcCoM3jNjOQEszraxQfttYwCGL9pL3FV4EkSMy6//871UzEmdTpPUbNDUI/f0Pa4w70mJ4UQY
	nDtwd4N1kf51Q0flkjsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltC7w-001R6p-Tn; Tue, 15 Jun 2021 16:41:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9s0-000WK1-Qg
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 14:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Qt/zYpQxzxdWPXN4VGWXgwMP6RXrdPnN8eSKCAspYLI=; b=DhrO/0N3c6oktoWbt+RZsMCCiA
 c1jo4PMBTMgI+7gW43FBL+oavNXEwsJE6HgiFKuz89JOvfMa90poZtCkJru4Fsg7IRbFz9rWxw93X
 i3HDXQU1SOgj163NVVhMDLz6iXZ7Xylms+85jFB7cjtdcAr+ohxVH/Fj9kzO9Cd6GLZ+1t6g+do/E
 DxkWjdQvLRAEY188AiwL0jHzo6kbJAL8S5r0gpwbH0RtpbyFMhkWL2wKD/BEZniah9IDOVChVxTIc
 4SNY2NMp/8ZYIJ0YyqU1SYUaywEX2m1FVw73XBgDqL7eKieKC0GZhYka2pcplsdkhNKyD1S4HYojA
 PoCXhk6w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9rp-007zs9-5W
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 14:16:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9rv-0000uJ-Go; Tue, 15 Jun 2021 16:16:43 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9ru-0001J3-Q7; Tue, 15 Jun 2021 16:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 16:16:39 +0200
Message-Id: <20210615141641.31577-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615141641.31577-1-s.hauer@pengutronix.de>
References: <20210615141641.31577-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_151644_142816_E7D109A6 
X-CRM114-Status: GOOD (  20.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/11] ARM: rockchip: Add bootm handler for RKNS images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The rk3568 utilizes boot images starting with the magic 'RKNS'. Add a
bootm handler for these to allow them to be chainloaded.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/Makefile |   1 +
 arch/arm/mach-rockchip/bootm.c  | 116 ++++++++++++++++++++++++++++++++
 2 files changed, 117 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/bootm.c

diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index b7bab1fb73..9c9b3778bf 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -3,3 +3,4 @@ pbl-y += atf.o
 obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
 obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
+obj-$(CONFIG_ARCH_RK3568) += bootm.o
diff --git a/arch/arm/mach-rockchip/bootm.c b/arch/arm/mach-rockchip/bootm.c
new file mode 100644
index 0000000000..5d6181ebd7
--- /dev/null
+++ b/arch/arm/mach-rockchip/bootm.c
@@ -0,0 +1,116 @@
+#define pr_fmt(fmt) "rockchip-bootm-barebox: " fmt
+
+#include <bootm.h>
+#include <common.h>
+#include <init.h>
+#include <memory.h>
+
+struct newidb_entry {
+	uint32_t sector;
+	uint32_t unknown_ffffffff;
+	uint32_t unknown1;
+	uint32_t image_number;
+	unsigned char unknown2[8];
+	unsigned char hash[64];
+};
+
+struct newidb {
+	uint32_t magic;
+	unsigned char unknown1[4];
+	uint32_t n_files;
+	uint32_t hashtype;
+	unsigned char unknown2[8];
+	unsigned char unknown3[8];
+	unsigned char unknown4[88];
+	struct newidb_entry entries[4];
+	unsigned char unknown5[40];
+	unsigned char unknown6[512];
+	unsigned char unknown7[16];
+	unsigned char unknown8[32];
+	unsigned char unknown9[464];
+	unsigned char hash[512];
+};
+
+#define SECTOR_SIZE 512
+
+static int do_bootm_rkns_barebox_image(struct image_data *data)
+{
+	void (*barebox)(unsigned long x0, unsigned long x1, unsigned long x2,
+			unsigned long x3);
+	resource_size_t start, end;
+	struct newidb *idb;
+	int ret, i, n_files;
+	void *buf;
+	resource_size_t image_size;
+
+	ret = memory_bank_first_find_space(&start, &end);
+	if (ret)
+		return ret;
+
+	ret = bootm_load_os(data, start);
+	if (ret)
+		return ret;
+
+	idb = (void *)data->os_res->start;
+	buf = (void *)data->os_res->start;
+
+	image_size = resource_size(data->os_res);
+
+	if (image_size < SECTOR_SIZE)
+		return -EINVAL;
+
+	n_files = idb->n_files >> 16;
+	if (n_files > 4)
+		n_files = 4;
+
+	if (data->verbose)
+		printf("RKNS image contains %d binaries:\n", n_files);
+
+	for (i = 0; i < n_files; i++) {
+		struct newidb_entry *entry = &idb->entries[i];
+		unsigned int entry_size = (entry->sector >> 16) * SECTOR_SIZE;
+		unsigned int entry_start = (entry->sector & 0xffff) * SECTOR_SIZE;
+		enum filetype filetype;
+
+		filetype = file_detect_type(buf + entry_start, SECTOR_SIZE);
+
+		if (entry_start + entry_size > image_size) {
+			printf("image %d expands outside the image\n", i);
+			continue;
+		}
+
+		if (data->verbose)
+			printf("image %d: size: %d offset: %d type: %s\n",
+				i, entry_size, entry_start,
+				file_type_to_string(filetype));
+
+		if (filetype == filetype_arm_barebox) {
+			barebox = buf + entry_start;
+			goto found;
+		}
+	}
+
+	return -EIO;
+
+found:
+
+	printf("Starting barebox image at 0x%p\n", barebox);
+
+	shutdown_barebox();
+
+	barebox(0, 0, 0, 0);
+
+	return -EINVAL;
+}
+
+static struct image_handler image_handler_rkns_barebox_image = {
+	.name = "Rockchip RKNS barebox image",
+	.bootm = do_bootm_rkns_barebox_image,
+	.filetype = filetype_rockchip_rkns_image,
+};
+
+static int rockchip_register_barebox_image_handler(void)
+{
+	return register_image_handler(&image_handler_rkns_barebox_image);
+}
+late_initcall(rockchip_register_barebox_image_handler);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

