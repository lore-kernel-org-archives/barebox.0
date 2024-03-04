Delivery-date: Mon, 04 Mar 2024 20:10:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhM-008diH-1X
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:10:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhL-00054K-8U
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:10:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GX7Rljg7b1rcAGPvv4gg+OLSOO31W+pZTv4NtuWXOyI=; b=VNPk6fTrhIatPBDYzotPGvUUrx
	bxxlBr6W2V8HA/acNDosxIeXwg7WahxAsAhgttndPFidIoCE8pXKSG5fX/j58bF4Hqge7BoTXdSDn
	XpbxAgu3VK0lb/XnrwVGPiFjcp1KG62ugJ8yVcHkRq9jIt885sTwOc0cQtmptqcLiGZY42iyCJjw6
	ZNLkd0m6aPDlvQuDK3dClZQQS3XLsT4lUvJ6cnFuF5up2eoVIikaqd3zcKHXdAMBEh7cNBCJst3P2
	DCdTStYphE8WpCwRObTTtLK+ifrZVKy7jwf+L7rbcjTVtXi3ieK/RlEgdTMaBLxPCuRKw6HlzCijx
	ClVq/5Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDgp-0000000AMsy-0zxI;
	Mon, 04 Mar 2024 19:09:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDab-0000000AIb8-2Zm0
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GX7Rljg7b1rcAGPvv4gg+OLSOO31W+pZTv4NtuWXOyI=; b=ULT/dvaLX6UZyhVIAli20HmoOp
	/RmBkU09MrTkn3YRCMHGoDhh/t6VgxqZ3dprppqMGw3PIPAp2pzjm1X9BOlHrJQWCfbFu/MFkvCbB
	AI+IBMGfSwiXKBbPXRG7VJs1h2q7xHX0/wPqv3EXIu5Lbm/1ZKXri98y1GOFn475y3NC0XTKJdLx4
	i3zR01r8DcATlD0YX7WAR1GjlLr41Bhj/9O7bY00CyJebHQEaPU9F/Sk28nlPWkUfFkanN7Kfc1z7
	MyhNTdVWPG/WFTsZ1pu23bv5TLurX5sM7RihTXMF6lfjXa2zL+SkE9vuyK3A1SvvLgvl+14O9wmH6
	4SlCKivg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaU-000000051w4-0FNf
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-00069r-S1; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PKB-EB; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-2l;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:32 +0100
Message-Id: <20240304190038.3486881-108-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190258_291500_E4FDB861 
X-CRM114-Status: GOOD (  11.62  )
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
Subject: [PATCH v2 107/113] efi: devicepath: correct formatting of BBS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's the BIOS boot specification (BBS) and not BSS. Fix the typo in
preparation for abusing it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 0df43f222018..23963aa0cbb7 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -536,13 +536,13 @@ dev_path_media_protocol(struct string *str, const void *dev_path)
 }
 
 static void
-dev_path_bss_bss(struct string *str, const void *dev_path)
+dev_path_bbs_bbs(struct string *str, const void *dev_path)
 {
-	const struct efi_device_path_bbs_bbs *Bss;
+	const struct efi_device_path_bbs_bbs *bbs;
 	char *type;
 
-	Bss = dev_path;
-	switch (Bss->device_type) {
+	bbs = dev_path;
+	switch (bbs->device_type) {
 	case BBS_TYPE_FLOPPY:
 		type = "Floppy";
 		break;
@@ -569,7 +569,7 @@ dev_path_bss_bss(struct string *str, const void *dev_path)
 		break;
 	}
 
-	cprintf(str, "Bss-%s(%s)", type, Bss->String);
+	cprintf(str, "BBS(%s,%s)", type, bbs->String);
 }
 
 static void
@@ -666,7 +666,7 @@ struct {
 	DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_VENDOR_PATH, dev_path_vendor}, {
 	DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_FILE_PATH, dev_path_file_path}, {
 	DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_MEDIA_PROTOCOL, dev_path_media_protocol}, {
-	DEVICE_PATH_TYPE_BBS_DEVICE, DEVICE_PATH_SUB_TYPE_BBS_BBS, dev_path_bss_bss}, {
+	DEVICE_PATH_TYPE_BBS_DEVICE, DEVICE_PATH_SUB_TYPE_BBS_BBS, dev_path_bbs_bbs}, {
 	DEVICE_PATH_TYPE_END, DEVICE_PATH_SUB_TYPE_INSTANCE_END,
 		    dev_path_end_instance}, {
 	0, 0, NULL}
-- 
2.39.2



