Delivery-date: Mon, 22 Nov 2021 09:49:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp514-0003Nd-KP
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:49:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp513-00006F-LC
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:49:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icZKQZIDfgFGDepf+f58/MRM9S7dbUma7UCdO/SrVqA=; b=SImIcAF2VHJEKV
	QAToD1Go8wGMSeLlUW3F480T/Z4sfL/vkm63zafFYAazJ+TA6IbIx//xM4cqbyfPUfiMKDXsaDwoR
	TNZhbejPYfVH734Q7Li7XLXPOhSqaeNKKuL6h6LTGVIgDQGG5Jxpr+Hn5KYdIqjR/k0y9COjeITu0
	kfefXEW4drmDdUJh9taYyndi56oB3FgQ7HJetCpgeLmyrWdIOqNmnjlIalS6qz21OcuT+eq+0IoRQ
	Q2JEPjVZKs9GQvZy5vkpMVd+uqXkt3WySUmzRpbsp5yBvoY81R8oXJU0e6MyK3NkCJnXYoMTqPx3a
	fWfknOYYk+D32bsrBDRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp4zf-00FLES-WF; Mon, 22 Nov 2021 08:48:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zD-00FKyv-Oc
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zA-0007wH-H8; Mon, 22 Nov 2021 09:47:36 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atek-B7; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:08 +0100
Message-Id: <20211122084732.2597109-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004739_857979_4325FE77 
X-CRM114-Status: GOOD (  10.01  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/30] efi: align LOAD_FILE_PROTOCOL_GUID's name with other
 PROTOCOL_GUIDs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Convention is to m/EFI_.*_PROTOCOLG_GUID/. Rename LOAD_FILE_PROTOCOL_GUID
for uniformity.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi-guid.c | 2 +-
 include/efi.h     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/efi-guid.c b/common/efi-guid.c
index 2bf2395e8540..fbe96ecd048c 100644
--- a/common/efi-guid.c
+++ b/common/efi-guid.c
@@ -72,7 +72,7 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_MANAGED_NETWORK_SERVICE_BINDING_PROTOCOL_GUID, "Managed Network Service Binding Protocol", "Managed Network Service Binding Protocol");
 	EFI_GUID_STRING(EFI_VLAN_CONFIG_PROTOCOL_GUID, "VlanConfig Protocol", "VlanConfig Protocol");
 	EFI_GUID_STRING(EFI_HII_CONFIG_ACCESS_PROTOCOL_GUID, "HII Config Access Protocol", "HII Config Access 2.1 protocol");
-	EFI_GUID_STRING(LOAD_FILE_PROTOCOL_GUID, "LoadFile Protocol", "EFI 1.0 Load File Protocol");
+	EFI_GUID_STRING(EFI_LOAD_FILE_PROTOCOL_GUID, "LoadFile Protocol", "EFI 1.0 Load File Protocol");
 	EFI_GUID_STRING(EFI_COMPONENT_NAME2_PROTOCOL_GUID, "Component Name2 Protocol", "UEFI 2.0 Component Name2 Protocol");
 	EFI_GUID_STRING(EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID_31, "Network Interface Identifier Protocol_31",  "EFI1.1 Network Interface Identifier Protocol");
 	EFI_GUID_STRING(EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID, "Network Interface Identifier Protocol", "EFI Network Interface Identifier Protocol");
diff --git a/include/efi.h b/include/efi.h
index 439803c29437..36452d296dd4 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -485,7 +485,7 @@ extern efi_runtime_services_t *RT;
 #define EFI_HII_CONFIG_ACCESS_PROTOCOL_GUID \
 	EFI_GUID(0x330d4706, 0xf2a0, 0x4e4f, 0xa3, 0x69, 0xb6, 0x6f, 0xa8, 0xd5, 0x43, 0x85)
 
-#define LOAD_FILE_PROTOCOL_GUID \
+#define EFI_LOAD_FILE_PROTOCOL_GUID \
 	EFI_GUID(0x56ec3091, 0x954c, 0x11d2, 0x8e, 0x3f, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
 
 #define EFI_COMPONENT_NAME2_PROTOCOL_GUID \
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

