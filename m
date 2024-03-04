Delivery-date: Mon, 04 Mar 2024 20:08:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfe-008dUr-1F
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:08:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfd-0003D7-Lf
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:08:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d52pek+LWtWH3J5Cb+FdcWHAbaKOuMy1V2fcYwZTZmc=; b=YRcgbS0HWObi/XPpHKVTl6vZeC
	yd1C5omGtlI0Z7DeMWxY92MHthH5VwTT0ZvchGtfO2Qbl/u5BwrorTfBHPWeqCUVHQlMKTfCixWo1
	BHHD+8a+P/h9lw/Vlup9jiCskLyCKAUHZhC2WuxCn4k4qg9k8SfWd6HUiUaevFQ3jl9YQTsvuPoS7
	GaIVd8i6N3BCSivNYVR3VexlvYW4Qxd9OJLOvgE4d1e19xV15HyxVmxqVY4RcVktJHRwF83sdpgW0
	X7js5CMd/viO7FIYxGU/JverprITZW4sis2/yDjnk+T1Y16mOS80+RF1rXrE7ImlE2CO1dSSckj/v
	sjrA5VWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDf9-0000000ALeC-2aFT;
	Mon, 04 Mar 2024 19:07:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaT-0000000AIHP-3YBj
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006B8-Eu; Mon, 04 Mar 2024 20:02:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PKf-T5; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-1k;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:25 +0100
Message-Id: <20240304190038.3486881-101-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110258_327968_99B85087 
X-CRM114-Status: GOOD (  11.04  )
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
Subject: [PATCH v2 100/113] efi: devicepath: format GUIDs as little endian
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default for %pU is to format as big endian, which isn't the correct
representation for EFI GUIDs, which are little endian.

Fix the format specifier to avoid the confusion.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 53387d8bd127..d3a0204bd380 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -207,7 +207,7 @@ dev_path_vendor(struct string *str, const void *dev_path)
 		break;
 	}
 
-	cprintf(str, "Ven%s(%pU", type, &Vendor->Guid);
+	cprintf(str, "Ven%s(%pUl", type, &Vendor->Guid);
 	if (efi_guidcmp(Vendor->Guid, efi_unknown_device_guid) == 0) {
 		/* GUID used by EFI to enumerate an EDD 1.1 device */
 		unknown_dev_path =
@@ -301,7 +301,7 @@ dev_path1394(struct string *str, const void *dev_path)
 	const struct f1394_device_path *F1394;
 
 	F1394 = dev_path;
-	cprintf(str, "1394(%pU)", &F1394->Guid);
+	cprintf(str, "1394(%pUl)", &F1394->Guid);
 }
 
 static void
@@ -464,7 +464,7 @@ dev_path_infini_band(struct string *str, const void *dev_path)
 	const struct infiniband_device_path *infini_band;
 
 	infini_band = dev_path;
-	cprintf(str, "Infiniband(0x%x,%pU,0x%llx,0x%llx,0x%llx)",
+	cprintf(str, "Infiniband(0x%x,%pUl,0x%llx,0x%llx,0x%llx)",
 		infini_band->resource_flags, &infini_band->port_gid,
 		infini_band->service_id, infini_band->target_port_id,
 		infini_band->device_id);
@@ -553,10 +553,7 @@ dev_path_hard_drive(struct string *str, const void *dev_path)
 		    );
 		break;
 	case SIGNATURE_TYPE_GUID:
-		cprintf(str, "HD(Part%d,Sig%pU)",
-			hd->partition_number,
-			(efi_guid_t *) & (hd->signature[0])
-		    );
+		cprintf(str, "HD(Part%d,Sig%pUl)", hd->partition_number, (guid_t *)hd->signature);
 		break;
 	default:
 		cprintf(str, "HD(Part%d,mbr_type=%02x,sig_type=%02x)",
@@ -595,7 +592,7 @@ dev_path_media_protocol(struct string *str, const void *dev_path)
 	const struct media_protocol_device_path *media_prot;
 
 	media_prot = dev_path;
-	cprintf(str, "%pU", &media_prot->Protocol);
+	cprintf(str, "%pUl", &media_prot->Protocol);
 }
 
 static void
-- 
2.39.2



