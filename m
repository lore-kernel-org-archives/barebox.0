Delivery-date: Mon, 15 Aug 2022 17:41:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcDz-006bHB-Ds
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 17:41:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcDz-0000dv-Fq
	for lore@pengutronix.de; Mon, 15 Aug 2022 17:41:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HsS5SY2vpuPyv/isnzEvYzMCYJMyxVlaLa2cSzDMmhM=; b=UVVis0mMtYz7+X8dsuB0KAuTHo
	dAHLpK5LragEp+d/EpplpXPRQmFF/kJPv7wINH3yf6Hh9lxzvVZdo6Y1q6NuZJa5U3DqtdKs6GI0v
	Jw8xD/7fjzPBbPDHyisKoHzUCDlsCjkcckXVzCgDJm6NQJGD0eQMWORVXad/EV2HwlPDjtZfn7W8Q
	ykpgbYvYnQ8ArmpUYRAqskYCbNqI8o5gZ/QcFngrA+GRMWCPd9ujuKCw6xUFejbW6PSJcWy4yt7Yd
	kxOFwH99ifesRlSDiUci2wvQ3MbHcKeWC05Mjy4jJcJ6zO1ZhoHkaKHBz7+ZCEdGWGySm0fDwYlJu
	zFRirWUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNcBv-000yi0-O8; Mon, 15 Aug 2022 15:39:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNc4i-000uCR-CY
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 15:32:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4b-0007A4-Fu; Mon, 15 Aug 2022 17:32:13 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Y-003wma-Dh; Mon, 15 Aug 2022 17:32:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Z-00AAGG-Fa; Mon, 15 Aug 2022 17:32:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 17:32:03 +0200
Message-Id: <20220815153209.2422662-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
References: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_083220_546883_F96A5524 
X-CRM114-Status: GOOD (  14.17  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/10] init: define new postmem_initcall()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Memory banks are added in mem_initcall() and are used in mmu_initcall()
which directly follows it to set caching attributes for the banks.

Code that requires memory banks to be registered, thus has to use
mmu_initcall(), but this is not possible for code that reliably needs to
run before MMU init: We need to give board code and device tree parsing
code the chance to reserve_sdram_region parts of SDRAM that contain
secure firmware to avoid speculative execution into them once the MMU is
turned on. For this reason, define a new postmem_initcall() level and
already use it for add_mem_devices, which has nothing to do with
mmu_initcall. Another user that can't be mmu_initcall() will follow in a
later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c                   |  2 +-
 include/asm-generic/barebox.lds.h |  1 +
 include/init.h                    | 21 +++++++++++----------
 3 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 347f83fd4cf8..40c795d2cde1 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -195,7 +195,7 @@ static int add_mem_devices(void)
 
 	return 0;
 }
-mmu_initcall(add_mem_devices);
+postmem_initcall(add_mem_devices);
 
 /*
  * Request a region from the registered sdram
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index a22e251c9d64..48c10b173852 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -35,6 +35,7 @@
 	KEEP(*(.initcall.13))			\
 	KEEP(*(.initcall.14))			\
 	KEEP(*(.initcall.15))			\
+	KEEP(*(.initcall.16))			\
 	__barebox_initcalls_end = .;
 
 #define BAREBOX_EXITCALLS			\
diff --git a/include/init.h b/include/init.h
index c695f99867ff..d0343fdf05cc 100644
--- a/include/init.h
+++ b/include/init.h
@@ -58,16 +58,17 @@ typedef void (*exitcall_t)(void);
 #define console_initcall(fn)		__define_initcall("3",fn,3)
 #define postconsole_initcall(fn)	__define_initcall("4",fn,4)
 #define mem_initcall(fn)		__define_initcall("5",fn,5)
-#define mmu_initcall(fn)		__define_initcall("6",fn,6)
-#define postmmu_initcall(fn)		__define_initcall("7",fn,7)
-#define coredevice_initcall(fn)		__define_initcall("8",fn,8)
-#define fs_initcall(fn)			__define_initcall("9",fn,9)
-#define device_initcall(fn)		__define_initcall("10",fn,10)
-#define crypto_initcall(fn)		__define_initcall("11",fn,11)
-#define of_populate_initcall(fn)	__define_initcall("12",fn,12)
-#define late_initcall(fn)		__define_initcall("13",fn,13)
-#define environment_initcall(fn)	__define_initcall("14",fn,14)
-#define postenvironment_initcall(fn)	__define_initcall("15",fn,15)
+#define postmem_initcall(fn)		__define_initcall("6",fn,6)
+#define mmu_initcall(fn)		__define_initcall("7",fn,7)
+#define postmmu_initcall(fn)		__define_initcall("8",fn,8)
+#define coredevice_initcall(fn)		__define_initcall("9",fn,9)
+#define fs_initcall(fn)			__define_initcall("10",fn,10)
+#define device_initcall(fn)		__define_initcall("11",fn,11)
+#define crypto_initcall(fn)		__define_initcall("12",fn,12)
+#define of_populate_initcall(fn)	__define_initcall("13",fn,13)
+#define late_initcall(fn)		__define_initcall("14",fn,14)
+#define environment_initcall(fn)	__define_initcall("15",fn,15)
+#define postenvironment_initcall(fn)	__define_initcall("16",fn,16)
 
 #define early_exitcall(fn)		__define_exitcall("0",fn,0)
 #define predevshutdown_exitcall(fn)	__define_exitcall("1",fn,1)
-- 
2.30.2



