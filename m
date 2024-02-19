Delivery-date: Mon, 19 Feb 2024 15:52:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc50b-00EkUx-1c
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 15:52:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc50a-0007Hn-RZ
	for lore@pengutronix.de; Mon, 19 Feb 2024 15:52:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2FsGlizwP9PMnLnDN1dGhcvPw1+LIl4Bb2PNgbrojHQ=; b=iPqne8mmSN7dpN0RSdOnQYE5oS
	/kbdrKhH645Skp2Xkxepam8xd2zyIexhtnsrb51ybdnKs6VuJZuQEMz0xCOV8tF4Ra14GPoX0X+hb
	+5l/WPnc+bJMg/OrCgXLHy5d2QTbGdTfV9no+QbB3qOOChccrlXpki/YNr2DmcxnxiFChmnKpA7At
	14tt9vhQeBJ1pl5YlfjL0LaKXAhDSgEUFJxAi6g+whGsuBPRuDZn1FOfa8CJjm8dLUPI0ilsJbkXI
	9XVbotNGY+coCaYK7lv3X5f2nFJ184mHSL6U0Xt/M8iMtQuYrrs+7Ur2MP5boJ/HyRfnze4/EjBis
	9KfGMy0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc502-0000000AveM-3Wfe;
	Mon, 19 Feb 2024 14:52:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc4zy-0000000AvcN-3bwa
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 14:52:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc4zx-0006ld-A4; Mon, 19 Feb 2024 15:52:01 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc4zw-001fcM-Tq; Mon, 19 Feb 2024 15:52:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc4zw-008lEV-2f;
	Mon, 19 Feb 2024 15:52:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 15:51:57 +0100
Message-Id: <20240219145159.1962618-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219145159.1962618-1-s.hauer@pengutronix.de>
References: <20240219145159.1962618-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_065202_936932_8C69114E 
X-CRM114-Status: GOOD (  13.39  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] partitions: efi: Allow to create barebox environment partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a GUID for partitions to use for barebox environment. Add an
option for parted to create these.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/parted.c       | 2 +-
 common/partitions/efi.c | 3 +++
 include/efi/partition.h | 3 +++
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/commands/parted.c b/commands/parted.c
index 02bb1cff0c..6af18cdc57 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -360,7 +360,7 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("<unit> can be one of \"s\" (sectors), \"B\" (bytes), \"kB\", \"MB\", \"GB\", \"TB\",")
 BAREBOX_CMD_HELP_TEXT("\"KiB\", \"MiB\", \"GiB\" or \"TiB\"")
 BAREBOX_CMD_HELP_TEXT("<type> must be \"gpt\"")
-BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext4\", \"fat16\" or \"fat32\"")
+BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext4\", \"fat16\", \"fat32\" or \"bbenv\"")
 BAREBOX_CMD_HELP_TEXT("<name> for MBR partition tables can be one of \"primary\", \"extended\" or")
 BAREBOX_CMD_HELP_TEXT("\"logical\". For GPT this is a name string.")
 BAREBOX_CMD_HELP_END
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 67d4978244..d102370b24 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -559,6 +559,7 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 
 static guid_t partition_linux_data_guid = PARTITION_LINUX_DATA_GUID;
 static guid_t partition_basic_data_guid = PARTITION_BASIC_DATA_GUID;
+static guid_t partition_barebox_env_gui = PARTITION_BAREBOX_ENVIRONMENT_GUID;
 
 static const guid_t *fs_type_to_guid(const char *fstype)
 {
@@ -572,6 +573,8 @@ static const guid_t *fs_type_to_guid(const char *fstype)
 		return &partition_basic_data_guid;
 	if (!strcmp(fstype, "fat32"))
 		return &partition_basic_data_guid;
+	if (!strcmp(fstype, "bbenv"))
+		return &partition_barebox_env_gui;
 
 	return NULL;
 }
diff --git a/include/efi/partition.h b/include/efi/partition.h
index 40ff4c557f..184b4fd961 100644
--- a/include/efi/partition.h
+++ b/include/efi/partition.h
@@ -57,6 +57,9 @@
 #define PARTITION_LINUX_LVM_GUID \
 	GUID_INIT( 0xe6d6d379, 0xf507, 0x44c2, \
 		0xa2, 0x3c, 0x23, 0x8f, 0x2a, 0x3d, 0xf9, 0x28)
+#define PARTITION_BAREBOX_ENVIRONMENT_GUID \
+	GUID_INIT( 0x6c3737f2, 0x07f8, 0x45d1, \
+		0xad, 0x45, 0x15, 0xd2, 0x60, 0xaa, 0xb2, 0x4d)
 
 /* based on linux/include/genhd.h */
 struct legacy_partition {
-- 
2.39.2



