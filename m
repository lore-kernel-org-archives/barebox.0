Delivery-date: Tue, 13 Apr 2021 00:36:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5Ap-0006E4-RB
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:36:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5Ao-00075s-MZ
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:36:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AoPBspi8r/vbGQVELeXyjRckiqKj2kjJmCaOjQbcAAM=; b=N+It9KCRtdALw3hPjxg0Qx/7A
	AQkpFBl29XaYp1nuzrYdYtNcFmnIxBzR1UHD7BsmpaPjYClyb+INagsZ/Bhgo8emO9z2irGfq16xA
	PlEHClkT3+OQHK1Vmz/WJuqMK9tyXkGpxg4ayyOennBFDBdMc/GfxRhjjj1bb1Y5chP4oX1HE+znn
	ahEJEQm2kJ7Gm/f8Jm27TVsswf06iTfl6jOhJniicr2Do27m4teDsYQ7hQcvfam72UVWrB+WN2EuM
	bocKQJ4c00INpbGqki34iqIR2ZTHuDXaQ0hmgvWmd5Qkt0iwc1+YE63Zf0nXloX7jVZXIoQI+UxgI
	gLn9s48vg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW59i-007nDG-1K; Mon, 12 Apr 2021 22:35:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59D-007n6s-Qu
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=xKdtA51rlvFItVZ0Cxaj+Lm3gzGs0xYTcfcBAvuAXig=; b=2pawuxuAlcMYaU87fuiIAVWtWY
 bg4O6RskHRg/af8BpdH5GHPpsJ+mZgzW2Gih453e5JNBFUWnvHwJU1qEanIdEn/jERkyhMjw9LOgK
 Hm86oXRcD2yFtS1NZsLtLIZhAMMjmam1kWYmQiBTWvi8erZsbKUq8ejbY/t9Gj7fCWGKBjV1ZKeyh
 MQH+togKBaUdtiQEPPbtCIKeq/3xLjcUCMqikJ0anAJRFYkLl6yWkgHcmsBQ9MQLWjlZWh1Br/grH
 r16fLWyRJqOluVz9JZTXMkBhfEvR3xr3W2DX7Zxg37Yk1iAqTwnOfMTqKO1rrJrJgqXiehnpowpeX
 GPBNl3Iw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW598-006ap4-IH
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW597-0006BK-6S; Tue, 13 Apr 2021 00:35:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0003sd-CQ; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:34:52 +0200
Message-Id: <20210412223502.29691-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153506_720435_FEA95E79 
X-CRM114-Status: UNSURE (   9.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/14] vsprintf: introduce %m shorthand for "%s",
 strerror(errno)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have many places across the code base that use either do
printf("%s..", errno_str()) or printf("%s..", strerror(errno).
We already have %pe support for printing arbitrary errors and it's not
much work to add %m to print errno as well. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/vsprintf.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 1d82adc73368..237aab0c02a1 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -373,12 +373,21 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
 	return raw_pointer(buf, end, ptr, field_width, precision, flags);
 }
 
+static char *errno_string(char *buf, const char *end, int field_width, int precision, int flags)
+{
+	return string(buf, end, strerror(errno), field_width, precision, flags);
+}
 #else
 static char *pointer(const char *fmt, char *buf, const char *end, const void *ptr,
 		     int field_width, int precision, int flags)
 {
 	return raw_pointer(buf, end, ptr, field_width, precision, flags);
 }
+
+static char *errno_string(char *buf, const char *end, int field_width, int precision, int flags)
+{
+	return buf;
+}
 #endif
 
 /**
@@ -569,6 +578,10 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 			case 'u':
 				break;
 
+			case 'm':
+				str = errno_string(str, end, field_width, precision, flags);
+				continue;
+
 			default:
 				if (str < end)
 					*str = '%';
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

