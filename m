Delivery-date: Wed, 03 Jan 2024 19:36:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66u-002OIf-0g
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66o-0008LQ-Hh
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZnYaKTpV25Yac2EVAgTFNnTXlcGjiUth0Tqk0BOAkSM=; b=31TSQxgoIazm1LOTJfvK2eDRbQ
	vXPFpBJLWCD82kZ/fP3aU/13Qk1h/6Sv48t5xNeg6MxxTmc7hd34hRvjSDX0i4tbyLNNkYAZwtayq
	O/R39/ozX/n9gskFnVFGJl2W86I6kApf2Xc2DuiHerc85iEtx6YA8KxY4N1Wkwn5XMwOF68YUT0ea
	9RnbtIGyjQngeUC/X8r6z3kIxrFvLuOM7LkPsT0gw3hhuajY+iNPI1jzAlsTWq2R/IgBjKFljZqys
	hHUnvSrpdsv+NZdobMJQH1JkhwD7dNlRXnhwl8jppM0YrPji8rxflHdb14BCYEuTQ9mvuQ0qqhgbW
	/PmmaDpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL65B-00BlxJ-0Q;
	Wed, 03 Jan 2024 18:35:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61P-00BhUN-2d
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZnYaKTpV25Yac2EVAgTFNnTXlcGjiUth0Tqk0BOAkSM=; b=EEVL4evFGAsAfiExYbS99bmjkT
	jczY9WtesdQzf2XmGy+rmhvA+MMRHfNHl5PaZALotvWiIhgPk0MoyK3L6SUPM9LNrFSIoSIbQkTsp
	z472V31L7oJGTuTRF6cYRGdaEoqfELXfXOtixKBEf8bSSV+lNVRelR2ko5NOX3aqpQLxwawpa2cpe
	9JHr1dNeJ9uaq95tTi1XzefshtTJxifQVUxln3FvC3QCNGYxGNqkckbogdDRK+D83mHaMC9tKlfi9
	7nupI9CZ/QtoIFPhW29H/TRvXEZr3cOLZYczyQn0OXkiwpw/WqSoPlBv59pzrOyyFwvJZ2FL0Da9s
	GeHo4wBw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61G-00DIm3-Vj
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001W3-2Z; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000Aut-Lz; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-2w;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:13:10 +0100
Message-Id: <20240103181312.409668-111-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183112_209155_AC0A871E 
X-CRM114-Status: UNSURE (   8.48  )
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
Subject: [PATCH 110/112] commands: efi_handle_dump: print loaded image devpath
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Device Path and Loaded Image Device Path are different things.
Print both for maximum utility.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/efi_handle_dump.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/commands/efi_handle_dump.c b/commands/efi_handle_dump.c
index 1f7b1caa13f9..74d53c9a17c5 100644
--- a/commands/efi_handle_dump.c
+++ b/commands/efi_handle_dump.c
@@ -11,20 +11,23 @@
 #include <efi/efi-mode.h>
 #include <efi/efi-device.h>
 
-static void efi_devpath(struct efi_boot_services *bs, efi_handle_t handle)
+static void efi_devpath(struct efi_boot_services *bs,
+			efi_handle_t handle,
+			const efi_guid_t *guid,
+			const char *desc)
 {
 	efi_status_t efiret;
 	void *devpath;
 	char *dev_path_str;
 
-	efiret = bs->open_protocol(handle, &efi_device_path_protocol_guid,
-				   &devpath, NULL, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
+	efiret = bs->open_protocol(handle, guid, &devpath, NULL, NULL,
+				   EFI_OPEN_PROTOCOL_GET_PROTOCOL);
 	if (EFI_ERROR(efiret))
 		return;
 
 	dev_path_str = device_path_to_str(devpath);
 	if (dev_path_str) {
-		printf("  Devpath: \n  %s\n", dev_path_str);
+		printf("  %s: \n  %s\n", desc, dev_path_str);
 		free(dev_path_str);
 	}
 }
@@ -46,7 +49,11 @@ static void efi_dump(struct efi_boot_services *bs, efi_handle_t *handles, unsign
 		for (j = 0; j < num_guids; j++)
 			printf("  %d: %pUl: %s\n", j, guids[j],
 					efi_guid_string(guids[j]));
-		efi_devpath(bs, handles[i]);
+
+		efi_devpath(bs, handles[i], &efi_device_path_protocol_guid,
+			    "Devpath");
+		efi_devpath(bs, handles[i], &efi_loaded_image_device_path_guid,
+			    "Image Devpath");
 	}
 	printf("\n");
 }
-- 
2.39.2



