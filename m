Delivery-date: Mon, 04 Mar 2024 20:03:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDb7-008czb-17
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:03:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDb4-00076S-Sz
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:03:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OKjJ8bVLSMGyPjuCbfYWDFMCIACQtIaiF8GdrV+ybks=; b=Fnk+yo/+MOgM42C+m8LekdOtXr
	RAwfXReF2+D3+HW4iRTml+N7LzRC+e7khaYXPVkjPP2STc1GUM1QqAZfuzFuQd16d5Zb792UX1ljY
	pW5tFNSKe1+QJX5GOsROgVpcaGBb56hBbz2RV5cUHyIaSft9OYusnoDFXhxD5NhPhrS0LMnfdPFO1
	xlK0H9OKH2r6gd/2qFjO5hgD/JerIurKIdC65szh2knSScZ0k8XHj4WnAnzs0LvRty+nGl5QBbobZ
	oJzlNL+DlT55MUMjhEG7GZJSFzor+0SC1mFKDrcTto5UWj7iZ0TntavvVl6CzTU0s+vZw/PuxNthD
	AmCytTDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaZ-0000000AIYS-2fOf;
	Mon, 04 Mar 2024 19:03:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaE-0000000AIHJ-1cIF
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaC-0005xx-WC; Mon, 04 Mar 2024 20:02:41 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaC-004PGB-Iq; Mon, 04 Mar 2024 20:02:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-03;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:13 +0100
Message-Id: <20240304190038.3486881-89-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110242_642716_3932BB95 
X-CRM114-Status: GOOD (  12.06  )
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
Subject: [PATCH v2 088/113] efi: refactor device_path_to_partuuid for code reuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Continuing walk of a device path until the next compatible node will
come in handy later as well, so factor that out into a new
device_path_next_compatible_node().

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 41 ++++++++++++++++++++++++-----------------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 6ec0c3780f37..d562bf482955 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -801,33 +801,40 @@ u8 device_path_to_subtype(const struct efi_device_path *dev_path)
 	return dev_path->sub_type;
 }
 
+static const struct efi_device_path *
+device_path_next_compatible_node(const struct efi_device_path *dev_path,
+				 u8 type, u8 subtype)
+{
+	for (; !is_device_path_end(dev_path);
+	     dev_path = next_device_path_node(dev_path)) {
+
+		if (device_path_type(dev_path) != type)
+			continue;
+
+		if (dev_path->sub_type != subtype)
+			continue;
+
+		return dev_path;
+	}
+
+	return NULL;
+}
 
 char *device_path_to_partuuid(const struct efi_device_path *dev_path)
 {
-	const struct efi_device_path *dev_path_node;
-	struct harddrive_device_path *hd;
-	char *str = NULL;;
-
 	dev_path = unpack_device_path(dev_path);
 
-	for (dev_path_node = dev_path; !is_device_path_end(dev_path_node);
-	     dev_path_node = next_device_path_node(dev_path_node)) {
-
-		if (device_path_type(dev_path_node) != MEDIA_DEVICE_PATH)
-			continue;
-
-		if (dev_path_node->sub_type != MEDIA_HARDDRIVE_DP)
-			continue;
-
-		hd = (struct harddrive_device_path *)dev_path_node;
+	while ((dev_path = device_path_next_compatible_node(dev_path,
+				 MEDIA_DEVICE_PATH, MEDIA_HARDDRIVE_DP))) {
+		struct harddrive_device_path *hd =
+			(struct harddrive_device_path *)dev_path;
 
 		if (hd->signature_type != SIGNATURE_TYPE_GUID)
 			continue;
 
-		str = xasprintf("%pUl", (efi_guid_t *)&(hd->signature[0]));
-		break;
+		return xasprintf("%pUl", (efi_guid_t *)&(hd->signature[0]));
 	}
 
-	return str;
+	return NULL;
 }
 
-- 
2.39.2



