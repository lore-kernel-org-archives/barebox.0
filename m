Delivery-date: Fri, 25 Aug 2023 19:24:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZaYA-008gl2-BT
	for lore@lore.pengutronix.de; Fri, 25 Aug 2023 19:24:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZaY8-00058P-2p
	for lore@pengutronix.de; Fri, 25 Aug 2023 19:24:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=o9cz6prLXQikLKPvbb4UYC3SJbP/BUcP9c/9JBBCxG8=; b=hA883hkszzQhaUxAnQyeAoeHAu
	lwVKJHklBLLjjUjAeTjttiI5zSMGPi0MCjd02eCerFWOTQVVHWnrkT3l9DsSzQ5Gxr/1eVJOpOKCL
	Ximvcf9OsF92ix6rz2cDh01bVDzVUvA6ZOyMZXV4IWnpQUFponspP2pDwkhdi7CPl5sbpu/pdrkQt
	kcyJv2yw6dPfPpRlJC6o40D3aQzB/8779Rc7gtVUb1W1kj/K1FJZn6zVgl0YYjlCR/reiUx46aafn
	kccdEwS1IiBJPv5RLPDn42xxoWARYYXPFTCLujUdQ24GI1a+neqegUTNBpzmuTnoDbPaL0d7wAzJc
	FQrxoTfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZaWV-005mgI-32;
	Fri, 25 Aug 2023 17:23:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZaWS-005mff-2Q
	for barebox@lists.infradead.org;
	Fri, 25 Aug 2023 17:23:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qZaWM-0004ul-W5; Fri, 25 Aug 2023 19:22:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qZaWM-001Ys6-AK; Fri, 25 Aug 2023 19:22:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qZaWL-00BzM9-2Y;
	Fri, 25 Aug 2023 19:22:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rhi@pengutronix.de,
	jzi@pengutronix.de,
	ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 25 Aug 2023 19:22:50 +0200
Message-Id: <20230825172250.2857448-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_102300_812967_198667D9 
X-CRM114-Status: GOOD (  16.43  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fastboot: scale default sparse max_download_size with available memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The fastboot host tool chokes when asked to sparse images that are not
4K-aligned:

  error: write_sparse_skip_chunk: don't care size 4280912 is not a multiple
  of the block size 4096

This is often not a problem, because disk images tend to be 4K-aligned
and are best converted to sparse images properly explicitly anyway, so
don't care holes are preserved.

Bootloader binaries on the other hand are smaller than the default
fastboot.max_download_size of 8M, so they are downloaded as a single
chunk without problems.

Situation is different for kernel and FIT images, which aren't
necessarily 4K aligned, usually bigger than 8M, and are usually
compressed, so explicitly sparsing them doesn't save time and thus is
usually not done.

Short of fixing the fastboot host tool, users can skip sparsing kernel
images as well by choosing a suitable larger fastboot.max_download_size
than the 8M default.

To improve user experience, let's scale max_download_size with the
available memory. The minimum default value remains 8M, but the value
can go up to 128M now and is computed by dividing available malloc
area by 8 (roughly 1/16th of total SDRAM). For ARM systems, buffer
sizes would now look like this:

  SDRAM Size	Fastboot Buffer size

  1024M		64M
   512M		32M
   256M		16M
   128M		8M

To err on the side of caution, we only generate powers-of-two sizes.
This only affects the default value and users can as before override
it in the environment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 9 ++++++++-
 include/memory.h  | 5 +++++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index f91f398d7a95..645aaa6a9f3f 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -30,7 +30,9 @@
 #include <ubiformat.h>
 #include <unistd.h>
 #include <magicvar.h>
+#include <linux/log2.h>
 #include <linux/sizes.h>
+#include <memory.h>
 #include <progress.h>
 #include <environment.h>
 #include <globalvar.h>
@@ -940,9 +942,14 @@ struct file_list *get_fastboot_partitions(void)
 
 static int fastboot_globalvars_init(void)
 {
-	if (IS_ENABLED(CONFIG_FASTBOOT_SPARSE))
+	if (IS_ENABLED(CONFIG_FASTBOOT_SPARSE)) {
+		fastboot_max_download_size
+			= roundup_pow_of_two(clamp_t(ulong, mem_malloc_size() / 8,
+						     SZ_8M, SZ_128M));
 		globalvar_add_simple_int("fastboot.max_download_size",
 				 &fastboot_max_download_size, "%u");
+	}
+
 	globalvar_add_simple_bool("fastboot.bbu", &fastboot_bbu);
 	globalvar_add_simple_string("fastboot.partitions",
 				    &fastboot_partitions);
diff --git a/include/memory.h b/include/memory.h
index ffd66db02ba0..73642dd5aaa5 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -10,6 +10,11 @@ void mem_malloc_init(void *start, void *end);
 ulong mem_malloc_start(void);
 ulong mem_malloc_end(void);
 
+static inline ulong mem_malloc_size(void)
+{
+	return mem_malloc_end() - mem_malloc_start();
+}
+
 struct memory_bank {
 	struct list_head list;
 	unsigned long start;
-- 
2.39.2



