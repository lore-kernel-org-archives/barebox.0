Delivery-date: Fri, 26 Jun 2026 13:07:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd4Oq-00A3Kf-0m
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 13:07:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd4Op-0006Ex-Ki
	for lore@pengutronix.de; Fri, 26 Jun 2026 13:07:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QPimKmoARL94mdKFsx0tdEMNX+tWv2Hr9JIPohbaB+c=; b=uFhWA+S+MA65MrEuDME1YNo8Q3
	8+iKYErwuUw2eVK/VPd/07/6iQ5NyoidcQXGvO5R//+gGMAIBmjvO6cfGTx4iyxPR0Y77Iaaxnx4d
	HslFl926pkLQibeZ6OMAzxWpmN/6inzwo909fHc3DZYemNSyf5L/bjp+GMRGVS8R/AFrs+mKHrJDx
	Ioadgb0h2c/gzEX1YEy9cO45k7IA5/2RZqJutqvSBnWMipmzjpG3qivwaKMftbija/EBV1bfOlRxM
	qkshpTqO1N8mtGGy2HO6R5GnRqhiU1W8eFhJsO1idV0q33jZxRHcfyrw+SFYcuXDPd3OjaLY0YRxs
	6yjVp7NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cf-0000000AtIb-1EWw;
	Fri, 26 Jun 2026 08:46:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cb-0000000AtDL-2E04
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QPimKmoARL94mdKFsx0tdEMNX+tWv2Hr9JIPohbaB+c=; b=BrwsSMoGAkM06qGy4eqwPppz3I
	0O/ojHkAAjY5VfgrNnH5QzxipsPnp+RG+KknIXKAwS5MTOgmb75qQMtO4CAYofOZ+PyCiHL51UDUf
	iIwMCrm0jk4csPwk0R/bvhG6udlCejFmjhXkcw9OSjQPlfcXFsCQQVW1u1Lofjeu2q5lVFqa2miPm
	ALbvGDcz10MKwVwvdLhgJXqvbFvSsMhMHRqSaTds+Md9shYtrtoIQXm/94e8wI9wKYGBM9M3yo0jY
	BYNIq/5yA+Cv9KDkXHXszxDkOqbV8h50/L2TMwuQLhxvFhg0FJCTU0Qz2+AyRmXPyDSqD3tPKWBGd
	QQkzaccw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CY-00000004cly-085y
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CV-0003ZP-9d; Fri, 26 Jun 2026 10:46:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:28 +0200
Message-ID: <20260626084608.1388806-18-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094618_377123_581504C3 
X-CRM114-Status: GOOD (  10.49  )
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
Subject: [PATCH 17/26] efi: loader: file: report cdev block size in file info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In a similar vein to the changes to the block I/O protocol, also adapt
the file protocol, so EFI_FILE_SYSTEM_INFO reports the actual block
size.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/file.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/efi/loader/protocols/file.c b/efi/loader/protocols/file.c
index 0796b3f0c26a..ea7b0df82ea8 100644
--- a/efi/loader/protocols/file.c
+++ b/efi/loader/protocols/file.c
@@ -24,6 +24,7 @@
 #include <wchar.h>
 #include <string.h>
 #include <libfile.h>
+#include <block.h>
 #include <disks.h>
 #include <charset.h>
 #include <malloc.h>
@@ -743,7 +744,7 @@ static efi_status_t EFIAPI efi_file_get_info(struct efi_file_handle *file,
 		 * space. The volume size is the best upper bound we have.
 		 */
 		info->free_space = info->volume_size;
-		info->block_size = SECTOR_SIZE;
+		info->block_size = cdev_blocksize(fh->fs->cdev);
 		/*
 		 * TODO: The volume label is not available in barebox.
 		 */
-- 
2.47.3



