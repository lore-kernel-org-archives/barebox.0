Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a9Mkl-0002yt-PE
 for barebox@lists.infradead.org; Thu, 17 Dec 2015 00:49:08 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 17 Dec 2015 00:48:24 +0000
Message-ID: <1450313304.26955.188.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <BC59819D32B5E84D82524F08F70D54A6@kymetacorp.com>
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
Subject: [PATCH 1/4] partitions/efi: Add partuuid to partition description
To: barebox <barebox@lists.infradead.org>

In commit bc31d85c6e23d724664e76bcfc3b2eda778012a3 the partition UUID
was added to the partition struct and thence to the cdev(s) for the
partition.  But just for DOS partitions.  Do this for GPT aka EFI
partitions too.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 common/partitions/Kconfig | 1 +
 common/partitions/efi.c   | 1 +
 2 files changed, 2 insertions(+)

diff --git a/common/partitions/Kconfig b/common/partitions/Kconfig
index 90238ad..be9405a 100644
--- a/common/partitions/Kconfig
+++ b/common/partitions/Kconfig
@@ -16,6 +16,7 @@ config PARTITION_DISK_DOS
 config PARTITION_DISK_EFI
 	depends on PARTITION_DISK
 	select CRC32
+	select PRINTF_UUID
 	bool "EFI: GPT partition support"
 	help
 	  Add support to handle partitions in GUID Partition Table style.
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 61abf00..a9945dd 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -457,6 +457,7 @@ static void efi_partition(void *buf, struct block_device *blk,
 		pentry->size = le64_to_cpu(ptes[i].ending_lba) - pentry->first_sec;
 		pentry->size++;
 		part_set_efi_name(&ptes[i], pentry->name);
+		snprintf(pentry->partuuid, sizeof(pentry->partuuid), "%pUl", &ptes[i].unique_partition_guid);
 		pd->used_entries++;
 	}
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
