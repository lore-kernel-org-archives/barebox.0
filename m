Delivery-date: Wed, 03 Jan 2024 19:36:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66a-002ODl-1D
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66U-0007xi-Ss
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LbSAup7YN5QjzgncvKZhMOOJmqzIM94Y9Mmk3Tb/bAA=; b=lMYTGB8KpiCpihXnH6Xlrg3z2B
	F9KcrfzlW5mQyk93EAeBHc7WQHAXiNVxtNX2Ja5DQRs7YLF9QlUarfH8aw+5aNpNUozYOKJyOv568
	4/jh6hBJQBzEPQnm9mFX4i2Veqouvn4slXNb/SFAtDJkQZZqbxJOa0dBl+gb+ex73FkoFQm5lu6ua
	RV7Foexe2awzSFCxZrrrii5oUd0xeD03bN0+In/4vhDmUuP3auuQmx/VIy7L2lRqdmCgeQqsTR0WE
	RIW7dL14m4fEdBL1xNFRuY4OtAsH0aLEi0HzAN0SmiZlhYbO8xQ5uTyrZn37y9MjnuHy83jpqg0Ny
	KquGOv0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64t-00BlZt-1Q;
	Wed, 03 Jan 2024 18:34:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61M-00BhQn-2s
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LbSAup7YN5QjzgncvKZhMOOJmqzIM94Y9Mmk3Tb/bAA=; b=UZGsfayAzAzZEWjngyWm+Nr4cq
	SQr1AP6pGmEOTCR6/lihJPt2WqWXdD3OK1x0pKJ96XSgUqLE5gSOk4uDhuTXxJlPh2cxhu5ZrhJOZ
	8rFT8JrmWgDyUhTgp1dLzq2667dq+SHcDJJmnLKUc2gI2mfYcbRSm1PkxdTIQBQCG7nRl5c0aprbd
	TzydorPOsw5Btw5Vu9he2BDQ0zLoot/aT7qa0mfpzPzbRjsRyJK5zMOrF9Z15sedU8WD5Dm4xq4/j
	wJIh0LCbzmDMX6rWkWdkNSjwNpbvfceNm292jVPABARjuFeIMGfGnFjGhhRYEeA+AtRh5rGp0pLMB
	0x23voew==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61F-005eBv-1j
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001YX-Ti; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000Avi-G5; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-01;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:50 +0100
Message-Id: <20240103181312.409668-91-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183109_790696_F83E8BC8 
X-CRM114-Status: GOOD (  10.67  )
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
Subject: [PATCH 090/112] vsprintf: add %pD for printing EFI device path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have a few users that will want to print EFI device paths and
will gain quite a few more with incoming loader support, so let's allow
printing them directly with printf with the %pD format specifier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/vsprintf.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index ea092c06d3d6..e41a1abee652 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -20,6 +20,7 @@
 #include <kallsyms.h>
 #include <wchar.h>
 #include <of.h>
+#include <efi.h>
 
 #include <common.h>
 #include <pbl.h>
@@ -348,6 +349,15 @@ char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
 	return string(buf, end, uuid, field_width, precision, flags);
 }
 
+static char *device_path_string(char *buf, const char *end, const struct efi_device_path *dp,
+				int field_width, int precision, int flags)
+{
+	if (!dp)
+		return string(buf, end, NULL, field_width, precision, flags);
+
+	return buf + device_path_to_str_buf(dp, buf, end - buf);
+}
+
 static noinline_for_stack
 char *hex_string(char *buf, const char *end, const u8 *addr, int field_width,
 		 int precision, int flags, const char *fmt)
@@ -519,6 +529,10 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
 	case 'J':
 		if (fmt[1] == 'P' && IS_ENABLED(CONFIG_JSMN))
 			return jsonpath_string(buf, end, ptr, field_width, precision, flags, fmt);
+	case 'D':
+		if (IS_ENABLED(CONFIG_EFI_DEVICEPATH))
+			return device_path_string(buf, end, ptr, field_width, precision, flags);
+		break;
 	}
 
 	return raw_pointer(buf, end, ptr, field_width, precision, flags);
-- 
2.39.2



