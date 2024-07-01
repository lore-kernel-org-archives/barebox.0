Delivery-date: Mon, 01 Jul 2024 09:55:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBsT-000Qjj-2e
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:55:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBsT-0001EX-6k
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:55:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QqahZALtXXFy2q01JmC7iJbMZ7AbIVPO+YcWzByqfFM=; b=iPm+DVffl0gDYwUY6IrObFiDUf
	7zYOkM37GdWguzZ0dongpuX0UWfqet1Ki0aP9t6JU3zFVFlHnH8lqWB1iTlnHuk43dsvElAuVIYUC
	xzQKsXhDhtz0Pf/crDtKlnwJYxQRGIr5s2DijeueLtBx8LL9zwT8wLVTlfoOBxn43UGQCg5rjS8oO
	9HSrg7xmRjWRO3o4NYKsvVpY4aGoU+nFLe4Py+9Xl5NySrSG8oiUtngSPhmu5s857PFBHOZjVZmF1
	bT4kZWEITRmxJQnu6BTEy1RBL6NM3HU8DOpFeJe3Ez/jRUrVblaJ+0la8E87EinKZlFpi9q8IuywD
	SQZz4XRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBs1-000000028iV-3IqI;
	Mon, 01 Jul 2024 07:54:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBrx-000000028gq-3LVt
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:54:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBrw-00012F-F9; Mon, 01 Jul 2024 09:54:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBrw-006JxR-2f; Mon, 01 Jul 2024 09:54:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBrv-000vQJ-3D;
	Mon, 01 Jul 2024 09:54:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:54:33 +0200
Message-Id: <20240701075434.220378-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701075434.220378-1-a.fatoum@pengutronix.de>
References: <20240701075434.220378-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_005437_865922_A29D2DC9 
X-CRM114-Status: GOOD (  15.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] lib: strtox: implement new simple_strtofract
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have no floating point support in barebox and no strtod. Still some
user interaction could benefit from being able to supply command
arguments or device parameters in a format with decimal points.

This new simple_strtofract() function parses a fixed point format consisting
of a 32 bit integer and 32 bit fractional part and returns it multiplied
by a division argument. e.g.

  simple_strtofract("1.02", NULL, 1000) == 1020

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/kernel.h |  1 +
 lib/strtox.c           | 57 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index cd7dac73f93a..dd108ba0abf7 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -92,6 +92,7 @@ extern unsigned long simple_strtoul(const char *,char **,unsigned int);
 extern long simple_strtol(const char *,char **,unsigned int);
 extern unsigned long long simple_strtoull(const char *,char **,unsigned int);
 extern long long simple_strtoll(const char *,char **,unsigned int);
+extern s64 simple_strtofract(const char *cp, char **endp, u32 division);
 
 /* The `const' in roundup() prevents gcc-3.3 from calling __divdi3 */
 #define roundup(x, y) (					\
diff --git a/lib/strtox.c b/lib/strtox.c
index 76927743a72c..5ef0f0923a9e 100644
--- a/lib/strtox.c
+++ b/lib/strtox.c
@@ -78,3 +78,60 @@ long long simple_strtoll(const char *cp, char **endp, unsigned int base)
 	return simple_strtoull(cp, endp, base);
 }
 EXPORT_SYMBOL(simple_strtoll);
+
+static unsigned int simple_strtouint(const char *cp, char **endp, unsigned int base)
+{
+	unsigned int ret;
+
+	ret = simple_strtoull(cp, endp, base);
+	if (ret != (unsigned int)ret) {
+		if (endp)
+			*endp = (char *)cp;
+		return  0;
+	}
+
+	return ret;
+}
+
+s64 simple_strtofract(const char *cp, char **endp, u32 division)
+{
+	char *end = (char *)cp;
+	s64 integer, fract, scale, result = 0;
+	int fract_len = 0, sign = 1;
+
+	switch (*cp) {
+	case '-':
+		sign = -1;
+		fallthrough;
+	case '+':
+		cp++;
+	}
+
+	if (!isdigit(*cp))
+		goto out;
+
+	integer = simple_strtouint(cp, &end, 10);
+	if (end == cp)
+		goto out;
+
+	if (*end == '.' || *end == ',') {
+		cp = end + 1;
+		fract = simple_strtouint(cp, &end, 10);
+		fract_len = end - cp;
+	}
+
+	result = integer * division;
+
+	scale = 1;
+	for (int i = 0; i < fract_len; i++)
+		scale *= 10;
+	if (fract_len > 0)
+		result += (fract * division) / scale;
+
+out:
+	if (endp)
+		*endp = end;
+
+	return sign * result;
+}
+EXPORT_SYMBOL(simple_strtofract);
-- 
2.39.2



