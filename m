Delivery-date: Mon, 20 Jun 2022 11:42:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3DvF-007wva-Jf
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 11:42:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3DvF-0007TJ-29
	for lore@pengutronix.de; Mon, 20 Jun 2022 11:42:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HmEwptiRGbQa2qSO+E+9SRhcH9acKtE4gVd0qhE98JE=; b=iQbSBBrpPet1oFrb+n3Xac6ALg
	Wfxal3pjHkXrTdxYo793uYdWGxCa5dvBQqq58PBLq1PnH25a4dLoTpaHO+zvVl9cgE+HXZSN6hVg0
	UDP3H1J8h00zcdmZki8hUMLBUnEo79H40S5PzLCW86e7ecoEV1Nu7mN0+qwrKfFoWN/l9vJqf9jwV
	+PVXGJqS36FgZRgekbyckZdWsY6v7Ugc8LUIIs3Frg9zHgFVAPJmXqzYGOEOAax3SJVSFCXJwi2A0
	U4EscX3FCamO9ZRrP5YpuiM6duySJrWY7UbZ7jGzb1XrzEvohOG8HQthpuAJR8B4WnbQjPsxBWRpG
	bHDvKB5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Dtp-00HGqj-Vh; Mon, 20 Jun 2022 09:40:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Dt9-00HGdG-M9
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 09:40:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o3Dt8-0006xO-Cr; Mon, 20 Jun 2022 11:40:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o3Dt5-001cCf-IE; Mon, 20 Jun 2022 11:40:04 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o3Dt6-0007VA-AW; Mon, 20 Jun 2022 11:40:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Jun 2022 11:39:53 +0200
Message-Id: <20220620093953.24822-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220620093953.24822-1-s.hauer@pengutronix.de>
References: <20220620093953.24822-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_024007_822009_0C675107 
X-CRM114-Status: GOOD (  14.78  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] treewide: Simplify setenv() calls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We now have pr_setenv() which is a setenv() variant that takes a
format string. Use it where appropriate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/clk.c      | 10 +++-------
 commands/crc.c      | 14 ++++----------
 commands/hwclock.c  |  4 +---
 commands/loadb.c    |  4 +---
 commands/loads.c    |  4 +---
 common/bootsource.c |  8 ++------
 common/menutree.c   |  9 +--------
 7 files changed, 13 insertions(+), 40 deletions(-)

diff --git a/commands/clk.c b/commands/clk.c
index dfbc7c988f..b1741b9da4 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -139,13 +139,9 @@ static int do_clk_get_rate(int argc, char *argv[])
 
 	rate = clk_get_rate(clk);
 
-	if (variable_name) {
-		char *t;
-
-		t = basprintf("%lu", rate);
-		setenv(variable_name, t);
-		free(t);
-	} else
+	if (variable_name)
+		pr_setenv(variable_name, "%lu", rate);
+	else
 		printf("%lu\n", rate);
 
 	return COMMAND_SUCCESS;
diff --git a/commands/crc.c b/commands/crc.c
index 80ecf7fe29..23ffd4360b 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -83,17 +83,11 @@ static int do_crc(int argc, char *argv[])
 	printf("CRC32 for %s 0x%08lx ... 0x%08lx ==> 0x%08lx",
 			filename, (ulong)start, (ulong)start + total - 1, crc);
 
-	if (crcvarname) {
-		char *crcstr = basprintf("0x%lx", crc);
-		setenv(crcvarname, crcstr);
-		kfree(crcstr);
-	}
+	if (crcvarname)
+		pr_setenv(crcvarname, "0x%lx", crc);
 
-	if (sizevarname) {
-		char *sizestr = basprintf("0x%lx", total);
-		setenv(sizevarname, sizestr);
-		kfree(sizestr);
-	}
+	if (sizevarname)
+		pr_setenv(sizevarname, "0x%lx", total);
 
 #ifdef CONFIG_CMD_CRC_CMP
 	if (vfilename) {
diff --git a/commands/hwclock.c b/commands/hwclock.c
index abb0500e6a..c594e070ac 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -153,11 +153,9 @@ static int do_hwclock(int argc, char *argv[])
 
 	if (env_name) {
 		unsigned long time;
-		char t[12];
 
 		rtc_tm_to_time(&tm, &time);
-		snprintf(t, 12, "%lu", time);
-		setenv(env_name, t);
+		pr_setenv(env_name, "%lu", time);
 	} else {
 		printf("%s\n", time_str(&tm));
 	}
diff --git a/commands/loadb.c b/commands/loadb.c
index 17d3af84b5..7ab989f459 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -542,7 +542,6 @@ packet_error:
 static ulong load_serial_bin(void)
 {
 	int size, i;
-	char buf[32];
 
 	/* Try to allocate the buffer we shall write to files */
 	write_buffer = malloc(MAX_WRITE_BUFFER);
@@ -576,8 +575,7 @@ static ulong load_serial_bin(void)
 		write_idx = 0;
 	}
 	printf("## Total Size      = 0x%08x = %d Bytes\n", size, size);
-	sprintf(buf, "%X", size);
-	setenv("filesize", buf);
+	pr_setenv("filesize", "%X", size);
 
 err_quit:
 	free(write_buffer);
diff --git a/commands/loads.c b/commands/loads.c
index 8260673c51..7c5df31251 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -65,7 +65,6 @@ static ulong load_serial(ulong offset)
 	int	type;				/* return code for record type	*/
 	ulong	addr;				/* load address from S-Record	*/
 	ulong	size;				/* number of bytes transferred	*/
-	char	buf[32];
 	ulong	store_addr;
 	ulong	start_addr = ~0;
 	ulong	end_addr   =  0;
@@ -100,8 +99,7 @@ static ulong load_serial(ulong offset)
 			    "## Total Size      = 0x%08lX = %ld Bytes\n",
 			    start_addr, end_addr, size, size
 			    );
-			sprintf(buf, "%lX", size);
-			setenv("filesize", buf);
+			pr_setenv("filesize", "%lX", size);
 			return addr;
 		case SREC_START:
 			break;
diff --git a/common/bootsource.c b/common/bootsource.c
index 1f8d053a81..79dacfd1d0 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -113,16 +113,12 @@ void bootsource_set(enum bootsource src)
 
 void bootsource_set_instance(int instance)
 {
-	char buf[32];
-
 	bootsource_instance = instance;
 
 	if (instance < 0)
-		sprintf(buf, "unknown");
+		setenv("bootsource_instance","unknown");
 	else
-		snprintf(buf, sizeof(buf), "%d", instance);
-
-	setenv("bootsource_instance", buf);
+		pr_setenv("bootsource_instance", "%d", instance);
 }
 
 enum bootsource bootsource_get(void)
diff --git a/common/menutree.c b/common/menutree.c
index 7fa835a7fe..751350d754 100644
--- a/common/menutree.c
+++ b/common/menutree.c
@@ -34,14 +34,7 @@ static void menutree_action(struct menu *m, struct menu_entry *me)
 
 static void setenv_bool(const char *var, bool val)
 {
-	const char *str;
-
-	if (val)
-		str = "1";
-	else
-		str = "0";
-
-	setenv(var, str);
+	pr_setenv(var, "%d", val);
 }
 
 static void menutree_box(struct menu *m, struct menu_entry *me)
-- 
2.30.2



