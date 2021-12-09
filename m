Delivery-date: Thu, 09 Dec 2021 12:00:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH9k-0010kd-No
	for lore@lore.pengutronix.de; Thu, 09 Dec 2021 12:00:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH9j-0001E4-8k
	for lore@pengutronix.de; Thu, 09 Dec 2021 12:00:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dQINj5PqzLeDMw7GZi4QHV5mQ64LcHcoYR0nBE8GRf8=; b=em9wN7SyVXb/OS
	nU8pZXVXPTQTBH+3kaJYCA+E5uJHGHTCAXMBmmymbG+w9I17RNcyEiX3GTo80eVg4lHLS96IQGUqf
	JIxmdgKXxUeEEK9TEyBkPbusJ1g/rjAJAopMvxOgMZhgnftNaCFE5yElrJqvVCSSKmAKn/Hfa8NjP
	h+uqam+zAkRIMzwocYWwHV5BN3jf0nyNEs6xdUEvjOvCiDj65muuQWRkoaAJ2CzxuJTlK0JBAlgrJ
	BKK9E7Qg5ToSMSvleZvonW4auARmQBG9zyBFZgutmDRkrb5XN6E+kMRZSa2quMfvkAvdgZD2qyM8A
	Cp+kqwUQ7Ez2HrfFNmbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvH8N-00FhMl-P8; Thu, 09 Dec 2021 10:58:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvH8F-00FhJS-2Q
 for barebox@lists.infradead.org; Thu, 09 Dec 2021 10:58:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH8D-0000lL-RJ; Thu, 09 Dec 2021 11:58:33 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH8D-00ElJ6-CZ; Thu, 09 Dec 2021 11:58:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Dec 2021 11:58:32 +0100
Message-Id: <20211209105832.3518384-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_025835_156982_D75A94A1 
X-CRM114-Status: UNSURE (   9.56  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] crypto: crc32: add big endian CRC implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This implementation is a straight copy of the tableless
implementation inside Linux' lib/crc32.c

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/crc32.c | 12 ++++++++++++
 include/crc.h  |  1 +
 2 files changed, 13 insertions(+)

diff --git a/crypto/crc32.c b/crypto/crc32.c
index 232c023adb88..998cbc9de297 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -187,6 +187,18 @@ STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
     return crc;
 }
 
+STATIC uint32_t crc32_be(uint32_t crc, const void *_buf, unsigned int len)
+{
+	const unsigned char *buf = _buf;
+	int i;
+	while (len--) {
+		crc ^= *buf++ << 24;
+		for (i = 0; i < 8; i++)
+			crc = (crc << 1) ^ ((crc & 0x80000000) ? 0x04c11db7 : 0);
+	}
+	return crc;
+}
+
 STATIC int file_crc(char *filename, ulong start, ulong size, ulong *crc,
 		    ulong *total)
 {
diff --git a/include/crc.h b/include/crc.h
index eb972705c21a..a5204aaabb9c 100644
--- a/include/crc.h
+++ b/include/crc.h
@@ -36,6 +36,7 @@ static inline u16 crc_itu_t_byte(u16 crc, const u8 data)
 #endif
 
 uint32_t crc32(uint32_t, const void *, unsigned int);
+uint32_t crc32_be(uint32_t, const void *, unsigned int);
 uint32_t crc32_no_comp(uint32_t, const void *, unsigned int);
 int file_crc(char *filename, unsigned long start, unsigned long size,
 	     unsigned long *crc, unsigned long *total);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

