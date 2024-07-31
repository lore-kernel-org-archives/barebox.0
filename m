Delivery-date: Wed, 31 Jul 2024 09:14:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xt-004j0K-2U
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 09:14:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xt-0006dM-4J
	for lore@pengutronix.de; Wed, 31 Jul 2024 09:14:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fXV6jhWPaf9fi9wS0aasI+mpqTVxyR+zjynEKk7i7IA=; b=JPDUG5NpUqhfhVWdgnxN/o9czx
	iLcJA+Me2ikdzQsGtOuNv6d1GIX+qyLDx4jOf/cPhTni7UbhkEHvM017n7CsAWFT6sxWHDwT1xWco
	mE+MkrUMA9W1Z1Iuj2b/3cCMlJ1lyF9CQ70JqW20v9aZS9bGmWpTGwj+U0MEDpU42gsw8oOtGK4L2
	sX2hotCFu31geT/rkZB3Cz6Itd5VB5DV+vSV7SD5vcMl75U6aA2PuQLay8+NVJEX52JIImV2GAToa
	c0Zl3bCzaGhZmonnj3URHDxp/Y+KOJPADrDuT5Wnkuw/ReaZrkOpcC9Ubj19qVV2B1MBhF8bDz5JW
	Ik7uY7Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XS-000000004wA-1X2M;
	Wed, 31 Jul 2024 07:14:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XP-000000004uP-23SJ
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 07:14:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XO-0006Li-4g; Wed, 31 Jul 2024 09:14:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XN-003T7C-Nj; Wed, 31 Jul 2024 09:14:17 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XN-00AjVP-24;
	Wed, 31 Jul 2024 09:14:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 09:14:13 +0200
Message-Id: <20240731071416.2558182-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
References: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_001419_559577_9A557330 
X-CRM114-Status: GOOD (  13.16  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] KASan: report: print shadow memory state to stderr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hexdump is currently printed to stdout via printk in
print_hex_dump. KASAN reports are special: They should be printed to
stderr, but they should not be logged as that would involve
reallocation. Therefore instead of calling print_hex_dump, call eprintf
with the %*ph format specifier instead. This allows us to consolidate
the code some more.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/kasan/Kconfig  | 1 +
 lib/kasan/report.c | 8 ++------
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/lib/kasan/Kconfig b/lib/kasan/Kconfig
index e96638304cd8..895a62d88439 100644
--- a/lib/kasan/Kconfig
+++ b/lib/kasan/Kconfig
@@ -11,6 +11,7 @@ config KASAN
 	depends on (HAVE_ARCH_KASAN && CC_HAS_KASAN_GENERIC)
 	depends on MALLOC_TLSF
 	select CONSTRUCTORS
+	select PRINTF_HEXSTR
 	help
 	  Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
 	  designed to find out-of-bounds accesses and use-after-free bugs.
diff --git a/lib/kasan/report.c b/lib/kasan/report.c
index a9050546e7a6..b7844e93553c 100644
--- a/lib/kasan/report.c
+++ b/lib/kasan/report.c
@@ -116,20 +116,16 @@ static void print_shadow_for_address(const void *addr)
 
 	for (i = -SHADOW_ROWS_AROUND_ADDR; i <= SHADOW_ROWS_AROUND_ADDR; i++) {
 		const void *kaddr = kasan_shadow_to_mem(shadow_row);
-		char buffer[4 + (BITS_PER_LONG/8)*2];
 		char shadow_buf[SHADOW_BYTES_PER_ROW];
 
-		snprintf(buffer, sizeof(buffer),
-			(i == 0) ? ">%px: " : " %px: ", kaddr);
 		/*
 		 * We should not pass a shadow pointer to generic
 		 * function, because generic functions may try to
 		 * access kasan mapping for the passed address.
 		 */
 		memcpy(shadow_buf, shadow_row, SHADOW_BYTES_PER_ROW);
-		print_hex_dump(KERN_ERR, buffer,
-			DUMP_PREFIX_NONE, SHADOW_BYTES_PER_ROW, 1,
-			shadow_buf, SHADOW_BYTES_PER_ROW, 0);
+		eprintf("%c%px: %*ph\n", (i == 0) ? '>' : ' ', kaddr,
+			SHADOW_BYTES_PER_ROW, shadow_buf);
 
 		if (row_is_guilty(shadow_row, shadow))
 			eprintf("%*c\n",
-- 
2.39.2



