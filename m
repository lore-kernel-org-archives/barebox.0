Delivery-date: Mon, 22 Nov 2021 09:50:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp52K-0003TY-RU
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:50:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp52H-0000nw-VC
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:50:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jTuFsv1XAKNlma5GSHmkibjeiGYUE0cZgwuTPwWTm4=; b=w1h1lEdVpl73cj
	bOWjqW5Bzo5sL5qQZUb0ZK1vKnaENUI2mqRH7ZLMLduA7+r9gkZCnEPbGakE7F9xoO5ReqxLp6xV4
	MY0jtUN1j0y85D/+Au6H12rXq1A/ZTMZVTr04OQ3nXXYulEn+1IOy/mAKJlreMIidV/MlWBVB8UTO
	TSnfsjmoju0LPCUyCEQ1W3pdoBRSCfXKN2acbwDQGHp8Flt8UXoJ5bjHWfSiBSPLNiFIQeLddiZP/
	eN+Qdr9DJL9q08wo8hQjSUjeDrZvEioLI55g7/r8Kh1bhQAKj3kspdKeyCC6RyMgOuJU4RiggRWI5
	0DRcpJFcsXctJxU8MZ2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp50n-00FLl0-Uq; Mon, 22 Nov 2021 08:49:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zE-00FKzK-MI
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wv-ML; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zA-00Atfw-1w; Mon, 22 Nov 2021 09:47:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:32 +0100
Message-Id: <20211122084732.2597109-31-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004740_787093_7C98AD0E 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 30/30] efi: guid: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Messages have some typos, fix them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/guid.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/efi/guid.c b/common/efi/guid.c
index f1a918f91e19..f16c597a20fc 100644
--- a/common/efi/guid.c
+++ b/common/efi/guid.c
@@ -30,7 +30,7 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_HCDP_TABLE_GUID, "HDCP Table", "HDCP Table GUID in EFI System Table");
 	EFI_GUID_STRING(EFI_UGA_IO_PROTOCOL_GUID, "UGA Protocol", "EFI 1.1 UGA Protocol");
 	EFI_GUID_STRING(EFI_GLOBAL_VARIABLE_GUID, "Efi", "Efi Variable GUID");
-	EFI_GUID_STRING(EFI_UV_SYSTEM_TABLE_GUID, "SAL System Table", "SAL System Table GUID in EFI System Table");
+	EFI_GUID_STRING(EFI_UV_SYSTEM_TABLE_GUID, "UV System Table", "UV System Table GUID in EFI System Table");
 	EFI_GUID_STRING(EFI_LINUX_EFI_CRASH_GUID, "Linux EFI Crash", "Linux EFI Crash GUID");
 	EFI_GUID_STRING(EFI_LOADED_IMAGE_PROTOCOL_GUID, "LoadedImage Protocol", "EFI 1.0 Loaded Image Protocol");
 	EFI_GUID_STRING(EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID, "EFI Graphics Output Protocol", "UEFI Graphics Output Protocol");
@@ -38,7 +38,7 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_UGA_IO_PROTOCOL_GUID, "UGA Protocol", "EFI 1.1 UGA Protocol");
 	EFI_GUID_STRING(EFI_PCI_IO_PROTOCOL_GUID, "PCI IO Protocol", "EFI 1.1 PCI IO Protocol");
 	EFI_GUID_STRING(EFI_USB_IO_PROTOCOL_GUID, "USB IO Protocol", "EFI 1.0 USB IO Protocol");
-	EFI_GUID_STRING(EFI_FILE_INFO_GUID, "File Info", "EFI File Infom");
+	EFI_GUID_STRING(EFI_FILE_INFO_GUID, "File Info", "EFI File Info");
 	EFI_GUID_STRING(EFI_SIMPLE_FILE_SYSTEM_GUID, "Filesystem", "EFI 1.0 Simple FileSystem");
 	EFI_GUID_STRING(EFI_DEVICE_TREE_GUID, "Device Tree", "EFI Device Tree GUID");
 	EFI_GUID_STRING(EFI_DEVICE_PATH_PROTOCOL_GUID, "Device Path Protocol", "EFI 1.0 Device Path protocol");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

