Delivery-date: Wed, 09 Apr 2025 16:13:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2WBZ-00ARP0-1F
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:13:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2WBY-0001aU-OR
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:13:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=G9q+RRPcpHAnnsIt7C+S9KK31vblfk97ZxamBtmkRWI=; b=SzCWiZeyhSyTYNOEbirlEbJSou
	97FlSKeMPLdOXKTNm8nJtWFuZK+kO13t5c81iI3eGcI8JxRqQj21WW/iZubQBXKDtWVv9YtEUeofu
	agPJ/E0vgVxBx+TDIYiGdvtBDwVcAgJWtPY6XNtt2m9qX57MZfQNTdbG1yE2hwyuamk4VpD/SpQfL
	qErE0/5jR00qQXjZgCrx9tTRJJW2+f4hGC/wCIAZ+WBmBXR5R3zMdp6MLTIrIsOFpC6NPHIgu3b0Y
	7cipPFY/uYpPTGPw+tq8/5/T7Og9ey+6ym2iTxt0OjHhaVu7Ap+ER+AAb2+waSMTYhDys3xA9YUzb
	AnhVKkew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WAy-00000007PE8-1srm;
	Wed, 09 Apr 2025 14:13:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2VKs-00000007GvQ-4AVE
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 13:19:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKr-0006iL-PE; Wed, 09 Apr 2025 15:19:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKr-0046qK-1s;
	Wed, 09 Apr 2025 15:19:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKr-008BBO-1Z;
	Wed, 09 Apr 2025 15:19:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 15:19:19 +0200
Message-Id: <20250409131920.1949534-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_061923_031851_FD2C8E46 
X-CRM114-Status: GOOD (  14.07  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: stm32mp: switch internal SoC code to hexadecimal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

stm32mp_code() is used internally in SoC support code to record the
information what SoC we are running on per device tree.

By changing the information to hexadecimal, we can more easily apply
bitmasks to check if we are on STM32MP15 or STM32MP13.

Do that and while at it, rename the function as not to confuse any
out-of-tree users.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/init.c       | 14 +++++++-------
 arch/arm/mach-stm32mp/stm32image.c |  2 +-
 include/mach/stm32mp/stm32.h       |  2 +-
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 2eb8b6beec2a..b24649e86658 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -229,9 +229,9 @@ static int stm32mp15_setup_cpu_type(void)
 	return 0;
 }
 
-static int __st32mp_soc;
+static unsigned __st32mp_soc;
 
-int stm32mp_soc(void)
+unsigned stm32mp_soc_code(void)
 {
 	return __st32mp_soc;
 }
@@ -241,17 +241,17 @@ static int stm32mp_init(void)
 	u32 boot_ctx;
 
 	if (of_machine_is_compatible("st,stm32mp135"))
-		__st32mp_soc = 32135;
+		__st32mp_soc = 0x32135;
 	else if (of_machine_is_compatible("st,stm32mp151"))
-		__st32mp_soc = 32151;
+		__st32mp_soc = 0x32151;
 	else if (of_machine_is_compatible("st,stm32mp153"))
-		__st32mp_soc = 32153;
+		__st32mp_soc = 0x32153;
 	else if (of_machine_is_compatible("st,stm32mp157"))
-		__st32mp_soc = 32157;
+		__st32mp_soc = 0x32157;
 	else
 		return 0;
 
-	if (__st32mp_soc == 32135) {
+	if (__st32mp_soc == 0x32135) {
 		boot_ctx = readl(STM32MP13_TAMP_BOOT_CONTEXT);
 	} else {
 		stm32mp15_setup_cpu_type();
diff --git a/arch/arm/mach-stm32mp/stm32image.c b/arch/arm/mach-stm32mp/stm32image.c
index 37d7c731209e..1b2e8c618c85 100644
--- a/arch/arm/mach-stm32mp/stm32image.c
+++ b/arch/arm/mach-stm32mp/stm32image.c
@@ -46,7 +46,7 @@ static struct image_handler image_handler_stm32_image_v1_handler = {
 
 static int stm32mp_register_stm32image_image_handler(void)
 {
-	if (!stm32mp_soc())
+	if (!stm32mp_soc_code())
 		return 0;
 
 	return register_image_handler(&image_handler_stm32_image_v1_handler);
diff --git a/include/mach/stm32mp/stm32.h b/include/mach/stm32mp/stm32.h
index f698ebfaf4f1..a37d62cdaedb 100644
--- a/include/mach/stm32mp/stm32.h
+++ b/include/mach/stm32mp/stm32.h
@@ -28,6 +28,6 @@
 #define STM32_DDR_BASE			0xC0000000
 #define STM32_DDR_SIZE			SZ_1G
 
-int stm32mp_soc(void);
+unsigned stm32mp_soc_code(void);
 
 #endif /* _MACH_STM32_H_ */
-- 
2.39.5



