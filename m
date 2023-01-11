Delivery-date: Wed, 11 Jan 2023 16:56:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFdT3-008x8G-Up
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 16:56:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFdRy-000610-Hf
	for lore@pengutronix.de; Wed, 11 Jan 2023 16:55:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SUM91a2z0ZnZ1E7eJ9N7fvZc/l+GOwLpmtQsEYwVJjQ=; b=FB6u3spSuowmOxrBiV6PxOTjnt
	rtJHdJ+ck5RSe2mS/u2SFxRz1hBO/AZktyCId/QPRLReiSb2Up3cVhL5DdjViXuxd5BWLFtiGko4x
	6tYUdMSUhnqxyeI34loMsosi82j9fKaOZgfNU4mDEjFX+QC59mLNj0xEurByt7KVy7Ax6IL7vY90q
	Xfw8WvT9xyr6suKRfyPXvjmG8lOATuCHKOHVu0GmSC9vwobP+amhD7QSBd+MPJVoPFLD09SHVcdGd
	KnxQNREc3b8FdQG220dDPCtHoxFoXoApHmfiVg8WxchuoBuIn+itkSzXy33ux0b3zqVrUkIdE2nKz
	H/j8h+bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFd2F-00Bzg5-6a; Wed, 11 Jan 2023 15:29:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFd2A-00BzeC-8u
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 15:28:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFd1v-0002jA-TR; Wed, 11 Jan 2023 16:28:43 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFd1v-005KmA-9s; Wed, 11 Jan 2023 16:28:43 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFd1u-006UyZ-Os; Wed, 11 Jan 2023 16:28:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 16:28:36 +0100
Message-Id: <20230111152836.1548942-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_072858_326758_CD094DFA 
X-CRM114-Status: GOOD (  15.00  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] ARM: i.MX8M: bootrom-cmd: clean up pointer casting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At first glance:

	const u32 *rom_log_addr;
	kstrtoul(optarg, 0, (ulong *)&rom_log_addr) with

looks like it would conflate u32/ulong. While the code is fine,
it is better to just use the correct types and forego the case.

While at it, let's guard against the ROM log pointer being NULL
as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/arm/mach-imx/bootrom-cmd.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
index 0238d09b169f..63197e02ae2c 100644
--- a/arch/arm/mach-imx/bootrom-cmd.c
+++ b/arch/arm/mach-imx/bootrom-cmd.c
@@ -51,6 +51,9 @@ static int imx8m_bootrom_decode_log(const u32 *rom_log)
 {
 	int i;
 
+	if (!rom_log)
+		return -ENODATA;
+
 	for (i = 0; i < 128; i++) {
 		u8 event_id = FIELD_GET(ROM_EVENT_FORMAT_V1_ID, rom_log[i]);
 		u8 event_id_idx = FIELD_GET(ROM_EVENT_FORMAT_V1_ID_IDX, rom_log[i]);
@@ -178,18 +181,19 @@ static int imx8m_bootrom_decode_log(const u32 *rom_log)
 
 static int do_bootrom(int argc, char *argv[])
 {
-	const struct imx_scratch_space *scratch = arm_mem_scratch_get();
-	const u32 *rom_log_addr = scratch->bootrom_log;
+	union {
+		const u32 *ptr;
+		ulong addr;
+	} rom_log = { NULL };
 	bool log = false;
 	int ret, opt;
 
 	while((opt = getopt(argc, argv, "la:")) > 0) {
 		switch(opt) {
 		case 'a':
-			ret = kstrtoul(optarg, 0, (ulong *)&rom_log_addr);
+			ret = kstrtoul(optarg, 0, &rom_log.addr);
 			if (ret)
 				return ret;
-			rom_log_addr = (const u32 *)rom_log_addr;
 		case 'l':
 			log = true;
 			break;
@@ -198,8 +202,13 @@ static int do_bootrom(int argc, char *argv[])
 		}
 	}
 
+	if (!rom_log.addr) {
+		const struct imx_scratch_space *scratch = arm_mem_scratch_get();
+		rom_log.ptr = scratch->bootrom_log;
+	}
+
 	if (log)
-		return imx8m_bootrom_decode_log(rom_log_addr);
+		return imx8m_bootrom_decode_log(rom_log.ptr);
 
 	return COMMAND_ERROR_USAGE;
 }
-- 
2.30.2



