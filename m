Delivery-date: Wed, 03 Jan 2024 19:32:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62I-002NRU-1g
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62F-0002w7-RF
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d52pek+LWtWH3J5Cb+FdcWHAbaKOuMy1V2fcYwZTZmc=; b=JU5ITbHRczl7cjuNJTH4DmUyw0
	lGekCXjws58SPBCwAijQaYzC1sUvPmQjvdrIfNHoJbUan8s5sA5ynUexLGxTlb9tH3lnOfPyjDdYc
	Jo+ECABHey2cFOxK+sOjVwSC/aG5njCosffrXNNADaJL/5cxXcL7hT8VrGUknnX6qmYtr+4LIBqRh
	LEPl0HRNH7YE2vsQ88ICz500U62EpmSK0dfjSTEtgougENdYpOFFQkcR67LPtUbAlI2OoWkNVvbBK
	PXYg3NwmSc6gaT65TFSqSz5fRm9IvJgrno5zoEVmcgyMXLeKq6OcaO3r624sJ5ix9tZ19+DCf8APi
	oI55mcRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL613-00Bh7h-1Z;
	Wed, 03 Jan 2024 18:30:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL60z-00Bh16-1Y
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001NQ-4J; Wed, 03 Jan 2024 19:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60x-000Ary-Nz; Wed, 03 Jan 2024 19:30:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-1M;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:59 +0100
Message-Id: <20240103181312.409668-100-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103053_548871_F13E1258 
X-CRM114-Status: GOOD (  10.51  )
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
Subject: [PATCH 099/112] efi: devicepath: format GUIDs as little endian
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



