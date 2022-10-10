Delivery-date: Mon, 10 Oct 2022 08:10:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlzQ-0033Xf-30
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:10:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlzO-0008Ql-77
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:10:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=llKB8Fry3GClW3x34KpQ2ryRyh3llZDbXKih3i7tZv0=; b=jZwrddyYxyROfvzbTw6ZFBqGhk
	xjq/V5upnxzW1KLlA5aNo6kcdCZPZfftDpk7ZDvVj7/blyNen0rt+FXXlgYZmNSVZMnI0bI2g3/Cn
	LxLbulk58GYM+fLRVZfl0FUb7+WtmcvIMhi9/J3EX7k7PL+/M3lauL8PyofvNiqdCnFkkcxLIAJjU
	xXdzu6Je8scG2xn2wV1uBmY2T2GKIvmSep3hkIVgJKVtuDsytbwqGOxnqON0A4WSI4R/Jv0mMiEQN
	IlSMrLvl4ShKVd8L+BnfOf39f34qUfqpQ+UMnIsWT9VgkB9Hr8rQAHoqFFLrn39nMFtGJxzwPrDAf
	7rnQzW8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohlyD-00H9e3-KW; Mon, 10 Oct 2022 06:08:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohly3-00H9aL-Cc
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:08:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly2-0008Ck-69; Mon, 10 Oct 2022 08:08:46 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly1-000d9G-Fw; Mon, 10 Oct 2022 08:08:45 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly0-008k2Y-88; Mon, 10 Oct 2022 08:08:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:08:38 +0200
Message-Id: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_230847_459091_60A180FA 
X-CRM114-Status: GOOD (  10.78  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] efi: retire efi_bool_t
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GCC defaults to a one-byte bool on all its platform, except for IBM RS/6000,
which will most likely never support. Thus just drop the efi_bool type
we only use at a single place and use bool directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi.h           | 1 -
 include/efi/efi-stdio.h | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/include/efi.h b/include/efi.h
index a1b22f2d8f88..691e3d5493fc 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -62,7 +62,6 @@ struct efi_device_path;
 #define EFI_ERROR(a)	(((signed long) a) < 0)
 
 typedef unsigned long efi_status_t;
-typedef u8 efi_bool_t;
 typedef u16 efi_char16_t;		/* UNICODE character */
 typedef u64 efi_physical_addr_t;
 typedef void *efi_handle_t;
diff --git a/include/efi/efi-stdio.h b/include/efi/efi-stdio.h
index 66fb0afc36b3..e8af244bfcf6 100644
--- a/include/efi/efi-stdio.h
+++ b/include/efi/efi-stdio.h
@@ -8,7 +8,7 @@ struct efi_simple_text_input_ex_protocol;
 
 typedef efi_status_t (EFIAPI *efi_input_reset_ex)(
 	struct efi_simple_text_input_ex_protocol *this,
-	efi_bool_t extended_verification
+	bool extended_verification
 );
 
 struct efi_key_state {
-- 
2.30.2



