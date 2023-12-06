Delivery-date: Wed, 06 Dec 2023 14:13:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAriE-005jHf-2I
	for lore@lore.pengutronix.de;
	Wed, 06 Dec 2023 14:13:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAriE-000158-Oo
	for lore@pengutronix.de; Wed, 06 Dec 2023 14:13:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YG1yE3JZUl6EJwHIUq+uiwwn+qZXPhMp6owB++4y23A=; b=qP7jyj5/abkRlEtkK2hswOewtJ
	bcRKi6tH3y9ZAm9923Oxhw2a5f/crvE3pd+TqCwVURfuCzXxNc30HHy79eBpVGDLu2/ukVSxTpy8Q
	J0ymPjc044naO9dw/zPVNh/7id2DYI2TEae7uz2uOXTNDQReyfq2yzuE6qxxt7CB7kvlxzshSdVcl
	Sw6RbC3YzPr+pKZ9KSXfbcDSHPfTecFxodOj8xqmSMXyP2Dq5xgfHzoNJrdy26PcWIS0Gi0/u6h0h
	TtRESlexYw+GZRQd2Mfdm9jr2DbZYTbjC3NiX2mD6b9CbLQZZuyn5Mo3OrgtV3Mh4LCyCzU26lT+1
	3s3fBWsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rArgz-00AMWX-34;
	Wed, 06 Dec 2023 13:11:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rArgw-00AMVv-2S
	for barebox@lists.infradead.org;
	Wed, 06 Dec 2023 13:11:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mol@pengutronix.de>)
	id 1rArgr-0000mG-Tm; Wed, 06 Dec 2023 14:11:49 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mol@pengutronix.de>)
	id 1rArgr-00DyNg-HD; Wed, 06 Dec 2023 14:11:49 +0100
Received: from mol by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mol@pengutronix.de>)
	id 1rArgr-00CzRS-1b;
	Wed, 06 Dec 2023 14:11:49 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Wed,  6 Dec 2023 14:11:44 +0100
Message-Id: <20231206131145.3096043-1-m.olbrich@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_051154_820237_C3F0ECFC 
X-CRM114-Status: UNSURE (   7.15  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] efi: add more helper functions to write EFI variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 common/efi/payload/init.c | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index b990b54b2678..19be7ff07fb6 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -107,6 +107,44 @@ int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec)
 				(strlen(buf)+1) * sizeof(wchar_t));
 }
 
+static int efi_set_variable_printf(char *name, efi_guid_t *vendor, const char *fmt, ...)
+{
+	va_list args;
+	char *buf;
+	wchar_t *buf16;
+
+	va_start(args, fmt);
+	buf = xvasprintf(fmt, args);
+	va_end(args);
+	buf16 = xstrdup_char_to_wchar(buf);
+
+	return efi_set_variable(name, vendor,
+				EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				EFI_VARIABLE_RUNTIME_ACCESS, buf16,
+				(strlen(buf)+1) * sizeof(wchar_t));
+	free(buf);
+	free(buf16);
+}
+
+static int efi_set_variable_uint64_le(char *name, efi_guid_t *vendor, uint64_t value)
+{
+	uint8_t buf[8];
+
+	buf[0] = (uint8_t)(value >> 0U & 0xFF);
+	buf[1] = (uint8_t)(value >> 8U & 0xFF);
+	buf[2] = (uint8_t)(value >> 16U & 0xFF);
+	buf[3] = (uint8_t)(value >> 24U & 0xFF);
+	buf[4] = (uint8_t)(value >> 32U & 0xFF);
+	buf[5] = (uint8_t)(value >> 40U & 0xFF);
+	buf[6] = (uint8_t)(value >> 48U & 0xFF);
+	buf[7] = (uint8_t)(value >> 56U & 0xFF);
+
+	return efi_set_variable(name, vendor,
+				EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				EFI_VARIABLE_RUNTIME_ACCESS, buf,
+				sizeof(buf));
+}
+
 struct efi_boot {
 	u32 attributes;
 	u16 file_path_len;
-- 
2.39.2



