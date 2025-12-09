Delivery-date: Tue, 09 Dec 2025 10:09:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vStib-009Vcv-1t
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 10:09:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vStiY-00019n-9d
	for lore@pengutronix.de; Tue, 09 Dec 2025 10:09:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TAQHJ+3pBcqn+QnPoWKMT1vS5BVfVTHJC1jbjmIAyxk=; b=prwRfB8IMcpdhc4GJsDvnydkvA
	HZ2HamMoXlfE7Vik6GNSXWhZZNthl+Bw6Wy6N/yBTe+EjcCvD+EZtc6clSmyeY3XS03pbhJftBw9C
	k9paJZXlPxFGIXFgskYTWv/3u248f7ZhR5Vbp44awnomVdCligw+QQBc3XBUnsZ0ds+sUofxfWMEx
	d9cESIomGUex5PcF8ihP1tQ4VrNFhlkXW0qi6S1VAwvcr57XWR2NGlFakyig0k0gnfmVWFYheXiEh
	wm5m1ttT1YdzD7560dPHW+j7P7e0FRDhthuJpRzEk/o0z/QwJ8ChxC50mP4/2b0xDT+ekkd6v0ZbX
	uqaJxkdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSti5-0000000E1qP-26pD;
	Tue, 09 Dec 2025 09:08:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSti2-0000000E1q2-3QVp
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 09:08:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSti1-00014K-8X; Tue, 09 Dec 2025 10:08:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSti0-004lFF-10;
	Tue, 09 Dec 2025 10:08:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSti0-0000000GL8X-0nZ2;
	Tue, 09 Dec 2025 10:08:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Dec 2025 10:08:35 +0100
Message-ID: <20251209090835.3894490-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_010838_876975_0BC56EDC 
X-CRM114-Status: GOOD (  11.27  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] partitions: gpt: allow to create barebox state partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Allow to create barebox state partitions with the GUID
4778ed65-bf42-45fa-9c5b-287a1dc4aab1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/parted.c       | 2 +-
 common/partitions/efi.c | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/commands/parted.c b/commands/parted.c
index f03dc37c05..dd79def62a 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -435,7 +435,7 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("<unit> can be one of \"s\" (sectors), \"B\" (bytes), \"kB\", \"MB\", \"GB\", \"TB\",")
 BAREBOX_CMD_HELP_TEXT("\"KiB\", \"MiB\", \"GiB\" or \"TiB\"")
 BAREBOX_CMD_HELP_TEXT("<type> must be \"gpt\" or \"msdos\"")
-BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext4\", \"fat16\", \"fat32\" or \"bbenv\"")
+BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext4\", \"fat16\", \"fat32\", \"bbenv\" or \"barebox-state\"")
 BAREBOX_CMD_HELP_TEXT("<name> for MBR partition tables can be one of \"primary\", \"extended\" or")
 BAREBOX_CMD_HELP_TEXT("\"logical\". For GPT this is a name string.")
 BAREBOX_CMD_HELP_TEXT("<end> can be \"max\" it will take all remaining space")
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 88d8a2d739..56a3a4c43f 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -17,6 +17,7 @@
 #include <init.h>
 #include <asm/unaligned.h>
 #include <crc.h>
+#include <state.h>
 #include <linux/ctype.h>
 
 #include <efi/partition.h>
@@ -616,6 +617,7 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 static guid_t partition_linux_data_guid = PARTITION_LINUX_DATA_GUID;
 static guid_t partition_basic_data_guid = PARTITION_BASIC_DATA_GUID;
 static guid_t partition_barebox_env_guid = PARTITION_BAREBOX_ENVIRONMENT_GUID;
+static guid_t partition_barebox_state_guid = BAREBOX_STATE_PARTITION_GUID;
 
 static const guid_t *fs_type_to_guid(const char *fstype)
 {
@@ -631,6 +633,8 @@ static const guid_t *fs_type_to_guid(const char *fstype)
 		return &partition_basic_data_guid;
 	if (!strcmp(fstype, "bbenv"))
 		return &partition_barebox_env_guid;
+	if (!strcmp(fstype, "barebox-state"))
+		return &partition_barebox_state_guid;
 
 	return NULL;
 }
-- 
2.47.3



