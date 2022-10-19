Delivery-date: Wed, 19 Oct 2022 14:41:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol8Nc-000gc6-5L
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 14:41:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol8NZ-0000ba-IT
	for lore@pengutronix.de; Wed, 19 Oct 2022 14:41:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=shoOZ52hi6Zf0pdotwo8p33WWGfydY1K1+zwhB+TTig=; b=UzR8Y+tpdaRsOmegJOht/KJnoJ
	6ldFGb3SCNgDBnrDPgwSOHyAt7hf6b/j3hTHTLV60ELz2H8gcN1R9a3dM84JsSKRnM63qzC9w6KFd
	5XPpSgLkdwgp97v0bRAyIQeqjRW3KJhpv6K2x+3FP9RsiTA5uRekeBYOpUgGtaTV2L9q+ByrtxEsj
	uqrAVVpQDrVTNpjA1sNx4QHcKW7U+h6wix02o4meCNjPRaASpyD+NoBo83I5n2lKghL3vJvTw3y09
	Od+hD6CShmhfEDZZCR+fy8Wp61NRrd9Ko1oF4PG8tso+NRyeJPF8htmuANmHl2NYfL34dyZnS9Y8m
	s3HKYDxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8M1-001Y9J-HS; Wed, 19 Oct 2022 12:39:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Lv-001Y5p-4W
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 12:39:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Lo-0000FE-TC; Wed, 19 Oct 2022 14:39:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Lo-0007il-6a; Wed, 19 Oct 2022 14:39:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Ln-007Em0-BG; Wed, 19 Oct 2022 14:39:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 19 Oct 2022 14:38:15 +0200
Message-Id: <20221019123817.1659468-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_053919_191770_2B009E07 
X-CRM114-Status: GOOD (  11.71  )
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
Subject: [PATCH 1/3] include: debug_ll: define puthexc_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

puthex_ll prints a single zero-padded unsigned long, which for a single
byte is not very readable, especially on 64-bit systems. Define
puthexc_ll() as well, which just accepts a byte and formats its nibbles
as hexadecimal characters.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/debug_ll.h | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index 735033b314cc..856a157bf52c 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -33,17 +33,25 @@ static inline void putc_ll(char value)
 	PUTC_LL(value);
 }
 
-static inline void puthex_ll(unsigned long value)
+static inline void puthexc_ll(unsigned char value)
 {
 	int i; unsigned char ch;
 
-	for (i = sizeof(unsigned long) * 2; i--; ) {
+	for (i = 2; i--; ) {
 		ch = ((value >> (i * 4)) & 0xf);
 		ch += (ch >= 10) ? 'a' - 10 : '0';
 		putc_ll(ch);
 	}
 }
 
+static inline void puthex_ll(unsigned long value)
+{
+	int i;
+
+	for (i = sizeof(unsigned long); i--; )
+		puthexc_ll(value >> (i * 8));
+}
+
 /*
  * Be careful with puts_ll, it only works if the binary is running at the
  * link address which often is not the case during early startup. If in doubt
@@ -66,6 +74,10 @@ static inline void putc_ll(char value)
 {
 }
 
+static inline void puthexc_ll(unsigned char value)
+{
+}
+
 static inline void puthex_ll(unsigned long value)
 {
 }
-- 
2.30.2



