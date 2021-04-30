Delivery-date: Fri, 30 Apr 2021 15:31:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTEl-0004xg-Kg
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:31:19 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTEi-0006mb-Tr
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:31:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AoPBspi8r/vbGQVELeXyjRckiqKj2kjJmCaOjQbcAAM=; b=rZFnpNtlTVxoQVPMWwLbqZIOP
	97V98rL5caBGART/bfhgoT0AhM6b8Vql3xG0r/71mQYFw0dQRcesAwzDqhbARHfKD/0oM64VSGJrB
	t+7Vt7d0AYRgDZZvqyWnvKLSi2Eb0200514SNjqmC5tV4Ih9EHEH/Y51wGnObcvwhhwELzhjR/FG8
	i8B394Fx9kBFuVOLQ9iPlcxssiGbPP41B6FDODEP+P9c7Szwn5eHHSIHHx8RrISuQsKWAZocLCTrU
	vfHTPCzNHklrbAPEHJaXQBPIOPDmAnFgGyDHt+K4PZz3EV4oCoC0FibrlzyUw4ZMy+7zNy36G9RsX
	9sH2rufBA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTDe-007uZ1-EI; Fri, 30 Apr 2021 13:30:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDU-007uYC-Vy
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=xKdtA51rlvFItVZ0Cxaj+Lm3gzGs0xYTcfcBAvuAXig=; b=Q/x62Pf8Qt9Sdgxrv/fhu+Eaku
 I4HI3RdWtgCDqLbpDvLdsmD9TotyDJ7f/N3Q7ebxSXm+62CS6mtuaAVCwPiwFH2IMz2E+d1TvlxSL
 6L6U8kY67YGqG9cY23U6WqEGhrk+muhFUBGtk+4ZWBy6AZxI5SBh2RFZCUwOKHDEwLx4vloHqoMUU
 +QO0VnW83XtapWeqqvon4MuXKpNv2CRCwKSLW8Eryp3OT52+dsIr202VuHgyA4yK2ORjknsqd5/uv
 CKvW9E9v2UTKnraNhqEEXTZVW7prxIw897PMv2TIr6OwgFt4sJEE2V8cWut4EKJ1Z3RzBsaK9+729
 r8WqtNlw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDS-001PHS-7Q
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:29:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDO-00069p-5C; Fri, 30 Apr 2021 15:29:54 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDN-0003qf-2G; Fri, 30 Apr 2021 15:29:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Apr 2021 15:29:38 +0200
Message-Id: <20210430132949.14617-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430132949.14617-1-a.fatoum@pengutronix.de>
References: <20210430132949.14617-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_062958_284645_4192668E 
X-CRM114-Status: UNSURE (   9.93  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/15] vsprintf: introduce %m shorthand for "%s",
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

