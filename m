Delivery-date: Mon, 04 Mar 2024 20:11:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDiY-008dqN-0n
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:11:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDiX-00067C-53
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:11:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3n8hUDERJ4/FW1/YQ1HmlvzVodYoOZuLYf7wWN7I/ro=; b=uOXaz2wxjRMWK/HiE/y55hJsy0
	bU5/xzWtp2O/T/RsIJtNMJOiuDwa9xx0JkmVJg7VLXKlhGIPHedvYMhsls4I7ZCNRrWvwqN4qCEiT
	AzeVoeSt0CuAtItylvB9PNv++ROUWyWchtyXEVbuGRZJJmQaA+FXUIyHi3pHN+/ebFzZLCgyiGlKv
	byR/qfXKpWDfFvzKvqQCGhfX2VkSWNw7/JmnaO6BKdLhMbZFnp1bPaTZTftrUXgjffvvfutiB8x1a
	aQ77+5TI0qEGmCjE/+gUXyNODbfPCzr35rv+N1jP3Dsg28XegYiuE8aTNNLglwdFzq5t/ZH9C07rH
	GjymFF+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDi0-0000000ANk9-34f4;
	Mon, 04 Mar 2024 19:10:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaf-0000000AIfH-1QBf
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3n8hUDERJ4/FW1/YQ1HmlvzVodYoOZuLYf7wWN7I/ro=; b=W1Wvt7kEJzmK+ORNNTdKZnt+D3
	8m096oxzJYFPP/79R8sx8PCScPaZJ8lqSULn08m4VqinwFCE1OBXtrX3Q1Ba5NDgccQzOd8jDEt1F
	aCVz/VeBxEe3znZ4lwbcjt7jvfvpozENRRBGUEicyYf85aLavmdqZX/wNu3gqQjAUs6XoKCTOu85y
	IXqaSAMFepdxEQKWINuTPuSzn9aZxgNgelqMQI1WguSJMZiIjbH8JQkNNgAe1TTQKOSZqHXG1zdYB
	H9fMh2T4WfyGrDCMh1tEkmgtztq1M/YVKCt6u7jCdA/0sjnCT6vDjEmfgtIdoKwimD5bpSoASn6Ba
	VkwExHQQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaZ-00000002BSf-0VLH
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-000648-22; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PII-KX; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-2L;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:29 +0100
Message-Id: <20240304190038.3486881-105-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190303_423177_3BFA5BCC 
X-CRM114-Status: GOOD (  10.06  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 104/113] efi: devicepath: use flexible array members for trailing strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When we start using fortified string operations in the future, we will
need to replace zero and one sized trailing arrays with flexible arrays
where required everywhere, but for now let's just avoid having any in
the EFI code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/device-path.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/efi/device-path.h b/include/efi/device-path.h
index 8d64ac4900ac..433233f38c0d 100644
--- a/include/efi/device-path.h
+++ b/include/efi/device-path.h
@@ -65,7 +65,7 @@ struct efi_device_path_expanded_acpi {
 	u32 HID;
 	u32 UID;
 	u32 CID;
-	u8 hid_str[1];
+	u8 hid_str[];
 };
 
 #define DEVICE_PATH_SUB_TYPE_ACPI_ADR_DEVICE 3
@@ -164,7 +164,7 @@ struct efi_device_path_usb_wwid {
 	u16 interface_number;
 	u16 vendor_id;
 	u16 product_id;
-	s16 serial_number[1];	/* UTF-16 characters of the USB serial number */
+	s16 serial_number[];	/* UTF-16 characters of the USB serial number */
 };
 
 /**
@@ -321,7 +321,7 @@ struct efi_device_path_cdrom_path {
 #define DEVICE_PATH_SUB_TYPE_FILE_PATH               0x04
 struct efi_device_path_file_path {
 	struct efi_device_path header;
-	s16 path_name[1];
+	s16 path_name[];
 };
 
 #define SIZE_OF_FILEPATH_DEVICE_PATH offsetof(FILEPATH_DEVICE_PATH,path_name)
@@ -374,7 +374,7 @@ struct efi_device_path_bbs_bbs {
 	struct efi_device_path header;
 	u16 device_type;
 	u16 status_flag;
-	s8 String[1];
+	s8 String[];
 };
 
 /* device_type definitions - from BBS specification */
-- 
2.39.2



