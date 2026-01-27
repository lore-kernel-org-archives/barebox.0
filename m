Delivery-date: Tue, 27 Jan 2026 09:46:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeie-005q5z-0r
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 09:46:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeic-000118-I2
	for lore@pengutronix.de; Tue, 27 Jan 2026 09:46:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iwLcgZgxqnHru9jgJu7t8930J02gHxi/lfXcjKvUKOM=; b=NAZXXvitcho3dbvN5HKq7SI/qK
	HbMPQPt55ZV8jlAGS8KZAzN4W1QTNJHzsNkBTWqRlesLBHNtDt7zubmJzZ13vgzkJGzYjED+3UlQ3
	Vf4+dWSYZoM1q5Yq0oqO7F7FZwVYoCu3c0sAlhAdx0GoSGJvv89AI4TuraEnORYrG+P86gd6aM7bj
	5HVYrLUa+GPj6PFtPBMVig8+XC9TEMYA8gk9H/qlkYJ3p2lPxiCTIHz4K8PtNFXvdguAc/0SEsih5
	IG12fJlc5oI6dUGOzZ6djLN2B0RCnn+n6E+slyYBIfoA7E3QfAmcfIOztHeYwZ+6snYfNgcK8DqxB
	bVMC0Ddg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehy-0000000DrMQ-47kQ;
	Tue, 27 Jan 2026 08:45:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehu-0000000DrDy-1gb4
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 08:45:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000W4-Qn; Tue, 27 Jan 2026 09:45:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-002ifw-0f;
	Tue, 27 Jan 2026 09:45:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000000FmwP-40Bp;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:16 +0100
Message-ID: <20260127084546.3751357-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_004554_646369_E742FA9E 
X-CRM114-Status: GOOD (  12.22  )
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
Subject: [PATCH 06/15] bootm: cache os_file for appendroot purposes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Even if we were to use an override, we want appendroot to follow the
original file as the root device can already be overridden by
$global.bootm.root_dev.

Therefore cache os_file to make it easier to reorder execution during
the incoming refactor.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 17c94b281eb2..a2301ea72458 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -548,6 +548,7 @@ static int bootm_image_name_and_part(const char *name, char **filename, char **p
  */
 int bootm_boot(struct bootm_data *bootm_data)
 {
+	char *os_file;
 	struct image_data *data;
 	struct image_handler *handler;
 	int ret;
@@ -575,9 +576,11 @@ int bootm_boot(struct bootm_data *bootm_data)
 	data->os_entry = bootm_data->os_entry;
 	data->efi_boot = bootm_data->efi_boot;
 
-	ret = read_file_2(data->os_file, &size, &data->os_header, PAGE_SIZE);
+	os_file = xstrdup(data->os_file);
+
+	ret = read_file_2(os_file, &size, &data->os_header, PAGE_SIZE);
 	if (ret < 0 && ret != -EFBIG) {
-		pr_err("could not open %s: %pe\n", data->os_file, ERR_PTR(ret));
+		pr_err("could not open %s: %pe\n", os_file, ERR_PTR(ret));
 		goto err_out;
 	}
 	if (size < PAGE_SIZE)
@@ -655,11 +658,11 @@ int bootm_boot(struct bootm_data *bootm_data)
 			if (root_cdev)
 				cdev_close(root_cdev);
 		} else {
-			struct fs_device *fsdev = get_fsdevice_by_path(AT_FDCWD, data->os_file);
+			struct fs_device *fsdev = get_fsdevice_by_path(AT_FDCWD, os_file);
 			if (fsdev)
 				fsdev_get_linux_root_options(fsdev, &root, &rootopts);
 			else
-				pr_err("no fsdevice under path: %s\n", data->os_file);
+				pr_err("no fsdevice under path: %s\n", os_file);
 		}
 
 		if (!root) {
@@ -739,8 +742,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		free(hostname_bootarg);
 	}
 
-	pr_info("\nLoading %s '%s'", file_type_to_string(data->kernel_type),
-		data->os_file);
+	pr_info("\nLoading %s '%s'", file_type_to_string(data->kernel_type), data->os_file);
 	if (data->kernel_type == filetype_uimage &&
 			data->os->header.ih_type == IH_TYPE_MULTI)
 		pr_info(", multifile image %d", uimage_part_num(data->os_part));
@@ -798,6 +800,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	free(data->oftree_file);
 	free(data->initrd_file);
 	free(data->tee_file);
+	free(os_file);
 	free(data);
 
 	return ret;
-- 
2.47.3



