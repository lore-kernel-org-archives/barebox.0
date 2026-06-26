Delivery-date: Fri, 26 Jun 2026 10:47:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Dx-00A16r-2u
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Dx-0007XX-5n
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i/limAGO7gUtbut7KPLY8thboZugGh8HXkMP4cPid60=; b=DtYlNAZ5Hn/gy9QfBZSaN/U0Ky
	LtafhTwqqBq9/fZhavqGTq9T663ulWeiLF7pNPNltAJMM2QB9+DqB6/ZyXZcxVFDowDfR0EZz7JCk
	wPHGyp/U67jlh+K11djm4UBDdZj8Yzp0T+evsyakH4dmm/ZQQprLdEikG8B8d7QW9COplMTzstLkL
	XTtq5mvUGr+e3I/h/iAlujhuB0TTecqmrVSLiYuNSDBTbfJvFZ5UvmZ3WHV0HvBsli1Vffm+wtpq6
	AQrsjZmkE4MuknE7zTy4PXohUevIWtYUNi9alJjNE2b3zFTFst3Qi3XwHQTBQpPeDxjLgzBxYrdoH
	oErb4tKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cl-0000000AtVg-244E;
	Fri, 26 Jun 2026 08:46:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtG9-2Xdg
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=i/limAGO7gUtbut7KPLY8thboZugGh8HXkMP4cPid60=; b=iDmHsUSTj6/IA9UcXlYLu6PEAE
	ycYn4Q4NL0WWv5qzViKsaWPoKn0KaRcsW2B3pSxPuT2ETyOhddDpP3NoT+LWkhOxcgwiPd/b0jK6o
	abZel3mIucHKuKmyrYtrtCwh4dMeTRIGKF+wjjr92sfFIf+UUNUl39fmV3OGPGc/e1ViEolVFlCQG
	N8+OWQATICqCqTEuO0vGi50iNHxor5Gq7cUJs2EtdUCxFSdL336S5bA59O+ep2VcW/BewPsRhMdda
	iOLlVYcTS6Ct8oO7DeeIe0dWeJThWrfPPV5Nge2WHnt5kT6Ih7B+bIN5MsppeCQkusPY6Y6OTdiRN
	6KEpIJ1g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CZ-00000004cm9-2kSu
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CW-0003ZP-Nr; Fri, 26 Jun 2026 10:46:16 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:35 +0200
Message-ID: <20260626084608.1388806-25-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094620_062723_8FADC209 
X-CRM114-Status: GOOD (  10.39  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 24/26] fuzz: add 4K-sector partition ramdisk target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make fuzz_test_ramdisk() take the ramdisk sector size so the partition
parser fuzzer can exercise both 512-byte and 4096-byte block devices.

Keep the existing fuzz-partitions target on 512-byte sectors and
add fuzz-partitions-4k for the 4K-sector case.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/devel/fuzzing.rst | 1 +
 common/partitions.c             | 3 ++-
 images/Makefile.sandbox         | 1 +
 include/fuzz.h                  | 9 +++++----
 4 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/devel/fuzzing.rst b/Documentation/devel/fuzzing.rst
index b475fd12fcea..a34d92b97e2e 100644
--- a/Documentation/devel/fuzzing.rst
+++ b/Documentation/devel/fuzzing.rst
@@ -25,6 +25,7 @@ options to crash barebox on detection of memory safety issues::
   fuzz-dtb
   fuzz-fdt-compatible
   fuzz-partitions
+  fuzz-partitions-4k
 
 All fuzzers generated are symlinks to the same barebox executable. barebox
 will detect that it was invoked via symlink and switch to fuzzing mode.
diff --git a/common/partitions.c b/common/partitions.c
index 617c2770eadf..617b33460429 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -408,7 +408,8 @@ static int fuzz_partition_table_parser(struct block_device *ramdisk)
 	free(buf);
 	return 0;
 }
-fuzz_test_ramdisk("partitions", fuzz_partition_table_parser);
+fuzz_test_ramdisk("partitions", fuzz_partition_table_parser, 512);
+fuzz_test_ramdisk("partitions-4k", fuzz_partition_table_parser, 4096);
 
 /**
  * cdev_unallocated_space - return unallocated space
diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index 210a7bf48ac8..2af83b395f9f 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -9,6 +9,7 @@ fuzzer-$(CONFIG_FITIMAGE)	+= fit
 fuzzer-$(CONFIG_OFTREE)		+= dtb
 fuzzer-$(CONFIG_OFTREE)		+= fdt-compatible
 fuzzer-$(CONFIG_PARTITION)	+= partitions
+fuzzer-$(CONFIG_PARTITION)	+= partitions-4k
 
 ifeq ($(CONFIG_SANDBOX),y)
 
diff --git a/include/fuzz.h b/include/fuzz.h
index 4d637f72b176..559e67a09b50 100644
--- a/include/fuzz.h
+++ b/include/fuzz.h
@@ -47,13 +47,14 @@ extern const struct fuzz_test __barebox_fuzz_tests_end;
 	static __always_unused void * _unused##_func = _func
 #endif
 
-#define fuzz_test_ramdisk(_name, _func)				\
-	static int _func##_ramdisk(const u8 *data, size_t size)	\
+#define fuzz_test_ramdisk(_name, _func, _sector_size)			\
+	static int _func##_ramdisk_##_sector_size(const u8 *data,	\
+						  size_t size)		\
 	{							\
 		static struct ramdisk *ramdisk;			\
 		int ret;					\
 		if (!ramdisk)					\
-			ramdisk = ramdisk_init(512);		\
+			ramdisk = ramdisk_init(_sector_size);	\
 		if (!ramdisk)					\
 			return -ENODEV;				\
 		ramdisk_setup_ro(ramdisk, data, size);		\
@@ -61,7 +62,7 @@ extern const struct fuzz_test __barebox_fuzz_tests_end;
 		ramdisk_setup_ro(ramdisk, NULL, 0);		\
 		return ret;					\
 	}							\
-	fuzz_test(_name, _func##_ramdisk)
+	fuzz_test(_name, _func##_ramdisk_##_sector_size)
 
 #define fuzz_test_str(_name, _func)				\
 	static int _func##_str(const u8 *_data, size_t size)	\
-- 
2.47.3



