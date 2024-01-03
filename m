Delivery-date: Wed, 03 Jan 2024 19:32:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62r-002NZS-09
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62n-0003aE-LL
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3n8hUDERJ4/FW1/YQ1HmlvzVodYoOZuLYf7wWN7I/ro=; b=rhmlKVa2zyW8NjFGAUzyGgrKEY
	6NCPQwBsIz7j2NjmeXytR08rAMmarSVKzWzrHA4L5NU0F1/8Fc/YCsz1sktCaovctCtmc7zSmCNPj
	R40pC53ZbBJtbWSBSzL5PP1oWb10CUGqYb9aBlifts5fnYZV57aGOaQGpHpacEDPmpEh1fdg0hlQ7
	qGSlXJIPhu2dhHK0uy48WrbE/ZnLH8gwO8qabuQGmGQxPBpQYayvkKPXvgDwumFTcCQ9z7AFcmUFA
	3JMz6DymF2xCHS0eaEUkgfdwgQn2wdRWbn+ThI0X/ggIKFpJ2XKYExp55CjjNZYP5/MQPH38x1IkQ
	AoWcciYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61b-00Bhgn-0j;
	Wed, 03 Jan 2024 18:31:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL613-00Bh7n-1n
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001a9-Cr; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000AwE-0E; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-1v;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:13:03 +0100
Message-Id: <20240103181312.409668-104-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103057_613483_DA971B3B 
X-CRM114-Status: GOOD (  11.85  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 103/112] efi: devicepath: use flexible array members for trailing strings
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



