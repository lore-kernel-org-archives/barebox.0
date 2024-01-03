Delivery-date: Wed, 03 Jan 2024 19:36:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66k-002OFJ-0U
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66d-00087d-R0
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kVKJN3ZpSQOn0QhEOVuwccH/VX03t/+YJhfMIeOGMKY=; b=DEpPqRk8hU5zLvN84jz1vSC72e
	HeT4QJ7LBezp4r1MxCzKUQJMekUKqW+tRL63hpo9fzU+5oji25ADg3TDuQNYYIXhoxniMFLjsiYnV
	ABNqnxZ0FeTHB2ESGfZUjqEEasrZCHQbinK4cwJe2o/MT62BJkgrPrAfcnrNcQ2n+ijE5JoXr/U2x
	rZ6e+yva8wPr/clru/xo1j6YcjYDMWzaV7uf5jE/m2QSP/w4boAbHvTmLkCferf/4rENFu4a5q8p5
	OQm741sTlBJ0EgjmZgqGl1hqHtCURZV0wte12OZ7y6k1db8z5S2Ee6JrSG5Eu5vGuy+lKcjTdlskW
	qhlVWIgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64x-00BlhH-1J;
	Wed, 03 Jan 2024 18:34:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61N-00BhRV-1a
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kVKJN3ZpSQOn0QhEOVuwccH/VX03t/+YJhfMIeOGMKY=; b=Kh0RCUHVecwCFm+2MhW/uk2ily
	9TZLn2POY4N/GO8+DmARVn6w4qtWFhFgwF2FZDH4orD6NEdW52n+5D/7WAPR3tp228I90CIkcDcfI
	Hq9Weei0avT6HH3ZQoaSAofuNxgWqH9m0AI1qqxO4TQuIybpepJOVgA7iKIqPCsgRkwiJsyiI/Q1f
	Zgn+7Knou+PU8IRCEd4F0Ayzrmhn77/fcEdnHjQTgFhQZqEv90No7BvsdJEqPoBUFyfUqzSuY3vfO
	lOVEkteygEa5s7lu2riB9zftcFdYyH+jiIPF+Vnvm2ROQDWdjb5WPZlBCDABdlZd61PxHlNn/rI+C
	6PKRw3wQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61D-00DIm9-Jz
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001Xe-J2; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000AvO-6K; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-35;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:13:11 +0100
Message-Id: <20240103181312.409668-112-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183110_022757_BA8F3356 
X-CRM114-Status: GOOD (  12.64  )
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
Subject: [PATCH 111/112] commands: efi_handle_dump: use guid_parse instead of open-coding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have GUID parsing functions, let's start using them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/efi_handle_dump.c | 69 +++++---------------------------------
 1 file changed, 8 insertions(+), 61 deletions(-)

diff --git a/commands/efi_handle_dump.c b/commands/efi_handle_dump.c
index 74d53c9a17c5..461d330c2fa4 100644
--- a/commands/efi_handle_dump.c
+++ b/commands/efi_handle_dump.c
@@ -8,6 +8,7 @@
 #include <common.h>
 #include <command.h>
 #include <efi.h>
+#include <linux/uuid.h>
 #include <efi/efi-mode.h>
 #include <efi/efi-device.h>
 
@@ -58,75 +59,22 @@ static void efi_dump(struct efi_boot_services *bs, efi_handle_t *handles, unsign
 	printf("\n");
 }
 
-static unsigned char to_digit(unsigned char c)
-{
-	if (c >= '0' && c <= '9')
-		c -= '0';
-	else if (c >= 'A' && c <= 'F')
-		c -= 'A' - 10;
-	else
-		c -= 'a' - 10;
-
-	return c;
-}
-
-#define read_xbit(src, dest, bit) 					\
-	do {								\
-		int __i;						\
-		for (__i = (bit - 4); __i >= 0; __i -= 4, src++)	\
-			dest |= to_digit(*src) << __i;			\
-	} while (0)
-
 static int do_efi_protocol_dump(struct efi_boot_services *bs, int argc, char **argv)
 {
 	unsigned long handle_count = 0;
 	efi_handle_t *handles = NULL;
 	int ret;
 	efi_guid_t guid;
-	u32 a = 0;
-	u16 b = 0;
-	u16 c = 0;
-	u8 d0 = 0;
-	u8 d1 = 0;
-	u8 d2 = 0;
-	u8 d3 = 0;
-	u8 d4 = 0;
-	u8 d5 = 0;
-	u8 d6 = 0;
-	u8 d7 = 0;
 
 	/* Format 220e73b6-6bdb-4413-8405-b974b108619a */
 	if (argc == 1) {
-		char *s = argv[0];
-		int len = strlen(s);
-
-		if (len != 36)
-			return -EINVAL;
-
-		read_xbit(s, a, 32);
-		if (*s != '-')
-			return -EINVAL;
-		s++;
-		read_xbit(s, b, 16);
-		if (*s != '-')
-			return -EINVAL;
-		s++;
-		read_xbit(s, c, 16);
-		if (*s != '-')
-			return -EINVAL;
-		s++;
-		read_xbit(s, d0, 8);
-		read_xbit(s, d1, 8);
-		if (*s != '-')
-			return -EINVAL;
-		s++;
-		read_xbit(s, d2, 8);
-		read_xbit(s, d3, 8);
-		read_xbit(s, d4, 8);
-		read_xbit(s, d5, 8);
-		read_xbit(s, d6, 8);
-		read_xbit(s, d7, 8);
+		ret = guid_parse(argv[0], &guid);
+		if (ret)
+			return ret;
 	} else if (argc == 11) {
+		u32 a;
+		u16 b, c;
+		u8 d0, d1, d2, d3, d4, d5, d6, d7;
 		/* Format :
 		 *	220e73b6 6bdb 4413 84 05 b9 74 b1 08 61 9a
 		 *   or
@@ -143,12 +91,11 @@ static int do_efi_protocol_dump(struct efi_boot_services *bs, int argc, char **a
 		d5 = simple_strtoul(argv[8], NULL, 16);
 		d6 = simple_strtoul(argv[9], NULL, 16);
 		d7 = simple_strtoul(argv[10], NULL, 16);
+		guid = EFI_GUID(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7);
 	} else {
 		return -EINVAL;
 	}
 
-	guid = EFI_GUID(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7);
-
 	printf("Searching for:\n");
 	printf("  %pUl: %s\n", &guid, efi_guid_string(&guid));
 
-- 
2.39.2



