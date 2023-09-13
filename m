Delivery-date: Wed, 13 Sep 2023 14:58:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPS7-00DmCW-4z
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:58:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPS4-0007Vk-PH
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:58:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O1b0C16j9HA7uSedYlbpcQ8/U9jIB+sCK/UwUm4B2vk=; b=3RBXRV/ukExXQGhmDjsB7/vj48
	XLGdUCYxp6H7vMat2YXPnLPQ4Sb1WOkS930fbCs9IitLr6OQ2O1qrNe1NrMU5IM2bbPrPWqGrDgtT
	IhBZbldKI7gtw+CfzbpXRMx+oPZJVc2Vr81UbQ0VhN53bPwalDND1mlx4QLWETC4EvdpsdxMjbNRI
	avbeHIvFKjQB4oe1gn+UgjlqVr/kW9voC7DqE7PlTqnrUQL+l+sKB1WzE2Cuml6PDCGAnTVkQjcgz
	D27+cHGQGDP8oNN1H0aBqlNVK7CDF260tkKmlOrQKZQ0NWyxwwrXpm/0y1eyizMqvty7Ntu5OTV2x
	9Q6RMseA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPQw-005uT9-0T;
	Wed, 13 Sep 2023 12:57:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPQo-005uRA-33
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:57:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-0006hO-LB; Wed, 13 Sep 2023 14:57:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-0064XC-1f; Wed, 13 Sep 2023 14:57:18 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-008zj9-00;
	Wed, 13 Sep 2023 14:57:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 14:57:13 +0200
Message-Id: <20230913125715.2142524-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230913125715.2142524-1-a.fatoum@pengutronix.de>
References: <20230913125715.2142524-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_055723_097796_C7D88053 
X-CRM114-Status: GOOD (  12.82  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] common: elf: support loading to address 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Many platforms have DRAM starting at address 0, which clashes with
barebox placing kernel images there, as barebox does that before
shutting down and turning off the MMU.

The <zero_page.h> header allows temporarily disabling the faulting
zero page and is already used for boot other types of kernel images,
so use it for ELF images as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/elf.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index c9b3d7bb3791..62f793010fad 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -10,6 +10,7 @@
 #include <libfile.h>
 #include <memory.h>
 #include <unistd.h>
+#include <zero_page.h>
 #include <linux/fs.h>
 #include <linux/list_sort.h>
 
@@ -100,7 +101,7 @@ static int elf_section_cmp(void *priv, struct list_head *a, struct list_head *b)
 static int load_elf_to_memory(struct elf_image *elf)
 {
 	void *dst;
-	int ret, fd = -1;
+	int ret = 0, fd = -1;
 	u64 p_filesz, p_memsz, p_offset;
 	struct elf_section *r;
 	struct list_head *list = &elf->list;
@@ -113,6 +114,8 @@ static int load_elf_to_memory(struct elf_image *elf)
 		}
 	}
 
+	zero_page_access();
+
 	list_for_each_entry(r, list, list) {
 		p_offset = elf_phdr_p_offset(elf, r->phdr);
 		p_filesz = elf_phdr_p_filesz(elf, r->phdr);
@@ -127,14 +130,13 @@ static int load_elf_to_memory(struct elf_image *elf)
 			if (ret == -1) {
 				pr_err("lseek at offset 0x%llx failed\n",
 				       p_offset);
-				close(fd);
-				return ret;
+				goto out;
 			}
 
 			if (read_full(fd, dst, p_filesz) < 0) {
 				pr_err("could not read elf segment: %m\n");
-				close(fd);
-				return -errno;
+				ret = -errno;
+				goto out;
 			}
 		} else {
 			memcpy(dst, elf->hdr_buf + p_offset, p_filesz);
@@ -144,9 +146,12 @@ static int load_elf_to_memory(struct elf_image *elf)
 			memset(dst + p_filesz, 0x00, p_memsz - p_filesz);
 	}
 
+out:
+	zero_page_faulting();
+
 	close(fd);
 
-	return 0;
+	return ret >= 0 ? 0 : ret;
 }
 
 static int load_elf_image_segments(struct elf_image *elf)
-- 
2.39.2



