Delivery-date: Fri, 07 May 2021 11:44:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lex2L-0004CP-22
	for lore@lore.pengutronix.de; Fri, 07 May 2021 11:44:45 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lex2J-00044A-Vj
	for lore@pengutronix.de; Fri, 07 May 2021 11:44:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+DIr2W8YehZB0UiY375mfPuW8rMCXK9VontHKzdWebA=; b=ILPijD4huq7G+ndwwP1+PBHEE
	wTkLDvs35slYkw7hv2ujAPXv2Sv2wDgdobN8ZHjiubr6eOHlBSnpI+UgkLm3sh+3qHsmOXI48Utv6
	4OCHCsJjWK+n7gW3OKCuGSMLdJvV2kvwZCWHNQjwQVm41Zxwc2bVTeBWjFBLlQXKkIyOzcAjdOmSg
	sZwVxOxF7AOJC/vAQTmbCD52fUcgttwaGBjB+6Yt1dSKf8V+fDT8AxuetydWv4ijfHm9sqllM1lD7
	JqsUrF51Fuj1olvsT1Ail7jW1FaRJfI9x3Pwy0gPXIu+4yFzhotpKZZK8mlRIJoWneO54FfNc/NVj
	y79iK8H8w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lex1E-006hlH-Fx; Fri, 07 May 2021 09:43:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lex19-006hkY-RC
 for barebox@desiato.infradead.org; Fri, 07 May 2021 09:43:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=FbMiaHBsFW6XE4hA32CTOI8IXFxWrfFId2Mjxd34b1M=; b=DN0QzJjo0updUayU+Z51F/7wLl
 RdJnS5aIR521uwj1NYU9yrU+ZAL3BCMEjVqugIgmuVq/xpv8O6KBFbIb8uc57mYbQQYPmWR7+Q1MA
 CzAG+uJnXExtdoEDBTWqkMWC34ghvt3en/fVUjmQcB+kjETAyisnHYULYqxq72er28+o/98YYair1
 v5H0YlCrwDg8dFxfrvXwGHGgwZ7osnK4Un02aNRUmKWCOQaW81J4nO5q8rzDPdvZH/1m3CBWyCzz2
 nEtC3Kmr7u8urvzrXTZH9/FXvjJCJYv7dBGyOJtaEKJ3bkCbgZHpvXHGjpJc6wBSwaLOI1Zvm1YKg
 fGCudUbw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lex16-006kR1-7S
 for barebox@lists.infradead.org; Fri, 07 May 2021 09:43:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lex12-0003xy-DW; Fri, 07 May 2021 11:43:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lex12-0007v5-44; Fri, 07 May 2021 11:43:24 +0200
Date: Fri, 7 May 2021 11:43:24 +0200
To: Neeraj Pal <neerajpal09@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210507094324.GV19819@pengutronix.de>
References: <CANi4_RUqt-U_p_dCMN7CnVgvdk8SAC8ZFoNvd1wCFHE9c=s+ew@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANi4_RUqt-U_p_dCMN7CnVgvdk8SAC8ZFoNvd1wCFHE9c=s+ew@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:41:37 up 78 days, 13:05, 100 users,  load average: 0.37, 0.31,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_024328_302328_C86C60E9 
X-CRM114-Status: GOOD (  24.73  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [BUG] Stack buffer overflow WRITE of size 1 in barebox_printf
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Sun, Apr 18, 2021 at 12:49:16AM +0530, Neeraj Pal wrote:
> Hi,
> 
> I have found the stack buffer overflow issue with WRITE of size 1 in
> barebox_printf function common/console_common.c:240 which further goes
> and crashes into a call vsnprintf lib/vsprintf.c:440
> 
> Tested on:
> - barebox-2021.04.0
> - git commit af0f068a6edad45b033e772056ac0352e1ba3613

Thanks again for reporting. I can confirm this issue happens here as well.

It happens because we are printing into fixed size buffers without
checking the length. The following changes this to use (v)snprintf
instead and should fix this issue.

Regards,
 Sascha

-------------------------------8<----------------------------------

>From a4221fe41b8d4a4b49f533e2869719b721416ff4 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 7 May 2021 11:37:27 +0200
Subject: [PATCH] console: Fix printbuffer overflowing

The barebox printf functions are not safe against too long strings. The
pattern is always the same: We (v)sprintf into a fixed size buffer. Use
(v)snprintf instead to not overwrite the fixed size buffer. We stand
back from using dynamically sized buffer though, as the barebox printf
like functions might be called before the malloc pool is initialzed.

Reported-by: Neeraj Pal <neerajpal09@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_common.c | 14 +++++++-------
 pbl/console.c           |  4 ++--
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 4c1230464c..2460fb21bd 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -126,7 +126,7 @@ int pr_print(int level, const char *fmt, ...)
 		return 0;
 
 	va_start(args, fmt);
-	i = vsprintf(printbuffer, fmt, args);
+	i = vsnprintf(printbuffer, CFG_PBSIZE, fmt, args);
 	va_end(args);
 
 	pr_puts(level, printbuffer);
@@ -144,13 +144,13 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 		return 0;
 
 	if (dev->driver && dev->driver->name)
-		ret += sprintf(printbuffer, "%s ", dev->driver->name);
+		ret += snprintf(printbuffer, CFG_PBSIZE - ret, "%s ", dev->driver->name);
 
-	ret += sprintf(printbuffer + ret, "%s: ", dev_name(dev));
+	ret += snprintf(printbuffer + ret, CFG_PBSIZE - ret, "%s: ", dev_name(dev));
 
 	va_start(args, format);
 
-	ret += vsprintf(printbuffer + ret, format, args);
+	ret += vsnprintf(printbuffer + ret, CFG_PBSIZE - ret, format, args);
 
 	va_end(args);
 
@@ -235,7 +235,7 @@ int printf(const char *fmt, ...)
 	 * For this to work, printbuffer must be larger than
 	 * anything we ever want to print.
 	 */
-	i = vsprintf (printbuffer, fmt, args);
+	i = vsnprintf(printbuffer, CFG_PBSIZE, fmt, args);
 	va_end(args);
 
 	/* Print the string */
@@ -254,7 +254,7 @@ int vprintf(const char *fmt, va_list args)
 	 * For this to work, printbuffer must be larger than
 	 * anything we ever want to print.
 	 */
-	i = vsprintf(printbuffer, fmt, args);
+	i = vsnprintf(printbuffer, CFG_PBSIZE, fmt, args);
 
 	/* Print the string */
 	puts(printbuffer);
@@ -342,7 +342,7 @@ int dprintf(int file, const char *fmt, ...)
 	 * For this to work, printbuffer must be larger than
 	 * anything we ever want to print.
 	 */
-	vsprintf(printbuffer, fmt, args);
+	vsnprintf(printbuffer, CFG_PBSIZE, fmt, args);
 	va_end(args);
 
 	/* Print the string */
diff --git a/pbl/console.c b/pbl/console.c
index 007e4e4b83..ec96b20054 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -54,7 +54,7 @@ int printf(const char *fmt, ...)
 	char printbuffer[CFG_PBSIZE];
 
 	va_start(args, fmt);
-	i = vsprintf(printbuffer, fmt, args);
+	i = vsnprintf(printbuffer, CFG_PBSIZE, fmt, args);
 	va_end(args);
 
 	console_puts(CONSOLE_STDOUT, printbuffer);
@@ -69,7 +69,7 @@ int pr_print(int level, const char *fmt, ...)
 	char printbuffer[CFG_PBSIZE];
 
 	va_start(args, fmt);
-	i = vsprintf(printbuffer, fmt, args);
+	i = vsnprintf(printbuffer, CFG_PBSIZE, fmt, args);
 	va_end(args);
 
 	console_puts(CONSOLE_STDOUT, printbuffer);
-- 
2.29.2



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

