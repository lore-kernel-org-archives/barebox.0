Delivery-date: Mon, 25 Nov 2024 16:33:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb5j-000GDy-20
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:33:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb5j-0004JG-Cr
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:33:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vXKVLcSyuiFY27BkRT7KgN98MIda6VCwDpEVjdR71ac=; b=Rh0sAgffSgQoBdkRMc/fWF86Ci
	sF6SwgJBKf6G+mrazanqUwRN5xRHWQmQLQBpVRW/Y8IVh/HnS3/4ciMEc+VGXDIagWne/6ZZIbElj
	gMee6gV84eNO+CtXqy+fl52xy/CAxnQ0LXjGAeqJz+aUjh+E9Yvhc5+FRVjffXh1cBWCYOhKf54SG
	VQqnrW40dgZwSNSbdshiQK9+fKP7ibuZMzaS+weXni7EnnfPt8pBrGngyEVTPdcN/yoLiTXGWnQJr
	cfd6pIEr1PBWmL4i/dmnjZqasANgz7AGflA+3KRkaKDco14wVvr3s2rsqFMPwdbPGbSKq5eF7YBAU
	UT+1cnLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb5N-00000008VMh-1AAJ;
	Mon, 25 Nov 2024 15:33:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb1u-00000008UKg-2a7k
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:29:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1l-00036W-DM; Mon, 25 Nov 2024 16:29:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-0006QY-1R;
	Mon, 25 Nov 2024 16:29:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-002dWd-1c;
	Mon, 25 Nov 2024 16:29:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:29:26 +0100
Message-Id: <20241125152927.546493-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152927.546493-1-a.fatoum@pengutronix.de>
References: <20241125152927.546493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072938_647508_5EB189F4 
X-CRM114-Status: GOOD (  11.09  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] fs: efi: replace allocation with local buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, every probed EFI file system involves an unnecessary
allocation; either a string literal is duplicated or a /efiX path is
formatted.

Avoid that extra allocation by just formatting on the stack as the
buffer is not needed later anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/efi.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/fs/efi.c b/fs/efi.c
index cb0eb40da4c2..2125d54ed632 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -451,11 +451,13 @@ static int efifs_init(void)
 
 coredevice_initcall(efifs_init);
 
-static int index;
+static unsigned index;
 
 static int efi_fs_probe(struct efi_device *efidev)
 {
-	char *path, *device;
+	char buf[sizeof("/efi4294967295")];
+	const char *path;
+	char *device;
 	int ret;
 	struct efi_file_io_interface *volume;
 
@@ -463,10 +465,13 @@ static int efi_fs_probe(struct efi_device *efidev)
 		BS->handle_protocol(efi_loaded_image->device_handle,
 				&efi_simple_file_system_protocol_guid, (void*)&volume);
 
-	if (efi_loaded_image && efidev->protocol == volume)
-		path = xstrdup("/boot");
-	else
-		path = basprintf("/efi%d", index);
+	if (efi_loaded_image && efidev->protocol == volume) {
+		path = "/boot";
+	} else {
+		snprintf(buf, sizeof(buf), "/efi%u", index);
+		path = buf;
+	}
+
 	device = basprintf("%s", dev_name(&efidev->dev));
 
 	ret = make_directory(path);
@@ -483,7 +488,6 @@ static int efi_fs_probe(struct efi_device *efidev)
 
 	ret = 0;
 out:
-	free(path);
 	free(device);
 
 	return ret;
-- 
2.39.5



