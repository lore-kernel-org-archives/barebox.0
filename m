Delivery-date: Sat, 17 Apr 2021 23:13:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXsGK-0003hM-9w
	for lore@lore.pengutronix.de; Sat, 17 Apr 2021 23:13:56 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXsGJ-0006EI-GV
	for lore@pengutronix.de; Sat, 17 Apr 2021 23:13:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Dz3sTQ4Eyie/TIRCDjZ5Cr+pCGMXgMjtynaxSioeS4E=; b=KfiCe7m2imW3FVFWpH8mDv0DZe
	c8JRVALeMaJ+kakPa4evxTx1+d1gu49XdCPCZOeS7+Q3g32LlzJCDQyby/8+Outj7yafycHT3hO8n
	yTnhC6hJNV5YYhXNYLWnI0OmMYj8dLoJm+TAogTLNAdLjkkgm9HFr7xWJhxqfrqLIV/sykwYQSeYv
	lnKSeKkwxhK8AmYtGGpOdD0OMIW1kBMb962UkPbBO5wcHp8h7Woj274fanz7Iq//5o7GTwiwczPjy
	brILSm0+Quws8dW01bt09kuPv++wQV8xPHON8XjEvUCD7RmxSnl2sBmsYwxeHoHV7VR+59cAtj5uX
	zr8bv/dw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXsEm-006Gg5-Dl; Sat, 17 Apr 2021 21:12:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXsEg-006GfO-77
 for barebox@desiato.infradead.org; Sat, 17 Apr 2021 21:12:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=VYR3UNagbwEPAiTl9+PdGdRxaeu2NkV+Au2okdn5fE8=; b=dhFEkqziMhvhAeZEsDKwKx6ixt
 S5PSy6M13V4E0aPUdcG+b70j/3fQ98XGGnSM578WB3XIPE+T81wMEyW6ifzE+2Pz4SSZ7w9W8P0Va
 JKqcc73TZcD05IL/lZmat2l7AsC2+943kUjN0lW6QkW0zHquZv4LvgxrVQ1vM6OdcfPYGS7kyvDUJ
 JYYs6fAjBZFUcKlkWnzEd0m75LErNL0NS3CffFBh/lBbhdSH3fJlK+2KS3BHUvEOtLvQoVeAwmRAc
 gGu+Bsfd0CK+s6v/vyi2pGjXcTUZioywfyKWp+CTNRUURRVNeOsvkQStGq7HfmT6lxA1d70LeFo5m
 GbxTystg==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXsEd-00ABix-58
 for barebox@lists.infradead.org; Sat, 17 Apr 2021 21:12:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 15D701AA2C2
 for <barebox@lists.infradead.org>; Sat, 17 Apr 2021 21:12:06 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KNM8KITA;
 Sat, 17 Apr 2021 21:12:05 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id D4EB51AA2C1;
 Sat, 17 Apr 2021 21:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id CCFC727E05B1;
 Sat, 17 Apr 2021 23:12:05 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id LlyBT72czjQ9; Sat, 17 Apr 2021 23:12:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2C3FB27E062F;
 Sat, 17 Apr 2021 23:12:05 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 2C3FB27E062F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1618693925;
 bh=VYR3UNagbwEPAiTl9+PdGdRxaeu2NkV+Au2okdn5fE8=;
 h=From:To:Date:Message-Id;
 b=J5T7lbIJfu4duBDlFTDS0dK+MXjJsy8DwkeyRt548HKBTK2oeEgSvOJOPHyUdT3dF
 pjkhhz8OTzmWHSfGNmPMbFfVx41dGhrujGY2sMPI3SARHXpYaCfKF3qPHmQ0sTdXp3
 faNDoYSu1vUR7tQB66pk3ljutZ/SLVDvTNzBBuEY=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 98i9LywPLu-k; Sat, 17 Apr 2021 23:12:05 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 0861E27E05B1;
 Sat, 17 Apr 2021 23:12:05 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Neeraj Pal <neerajpal09@gmail.com>,
	Jules Maselbas <jmaselbas@kalray.eu>
Date: Sat, 17 Apr 2021 23:11:44 +0200
Message-Id: <20210417211144.26466-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_141211_511051_3980CC0A 
X-CRM114-Status: UNSURE (   6.79  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] common: console_common: Replace vsprintf with vsnprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Replace the *sprintf to their *snprintf version when printing
to the fixed size printbuffer.

Reported-by: Neeraj Pal <neerajpal09@gmail.com>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/console_common.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 3e0741572..dc3a611e1 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -126,7 +126,7 @@ int pr_print(int level, const char *fmt, ...)
 		return 0;
 
 	va_start(args, fmt);
-	i = vsprintf(printbuffer, fmt, args);
+	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
 	va_end(args);
 
 	pr_puts(level, printbuffer);
@@ -139,18 +139,19 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 	va_list args;
 	int ret = 0;
 	char printbuffer[CFG_PBSIZE];
+	size_t size = sizeof(printbuffer);
 
 	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
 		return 0;
 
 	if (dev->driver && dev->driver->name)
-		ret += sprintf(printbuffer, "%s ", dev->driver->name);
+		ret += snprintf(printbuffer, size, "%s ", dev->driver->name);
 
-	ret += sprintf(printbuffer + ret, "%s: ", dev_name(dev));
+	ret += snprintf(printbuffer + ret, size - ret, "%s: ", dev_name(dev));
 
 	va_start(args, format);
 
-	ret += vsprintf(printbuffer + ret, format, args);
+	ret += vsnprintf(printbuffer + ret, size - ret, format, args);
 
 	va_end(args);
 
@@ -237,7 +238,7 @@ int printf(const char *fmt, ...)
 	 * For this to work, printbuffer must be larger than
 	 * anything we ever want to print.
 	 */
-	i = vsprintf (printbuffer, fmt, args);
+	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
 	va_end(args);
 
 	/* Print the string */
@@ -256,7 +257,7 @@ int vprintf(const char *fmt, va_list args)
 	 * For this to work, printbuffer must be larger than
 	 * anything we ever want to print.
 	 */
-	i = vsprintf(printbuffer, fmt, args);
+	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
 
 	/* Print the string */
 	puts(printbuffer);
@@ -344,7 +345,7 @@ int dprintf(int file, const char *fmt, ...)
 	 * For this to work, printbuffer must be larger than
 	 * anything we ever want to print.
 	 */
-	vsprintf(printbuffer, fmt, args);
+	vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
 	va_end(args);
 
 	/* Print the string */
-- 
2.30.2



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

