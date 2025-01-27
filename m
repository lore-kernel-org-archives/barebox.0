Delivery-date: Mon, 27 Jan 2025 12:15:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcN5i-0055FF-0S
	for lore@lore.pengutronix.de;
	Mon, 27 Jan 2025 12:15:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcN5i-0004lF-7X
	for lore@pengutronix.de; Mon, 27 Jan 2025 12:15:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fixF0pqMG2lpnUNqsxmtLDhtoocNBNJjuFqQFIur494=; b=aQjDOBi6+rNeTClBvrrP+AyIFC
	8KDjTiwE6oPDNVGHSQmQztVfF6wFT55sr/vzanT01OIUfxSsRWuwf95GGmYHTrCvovtNQKzjrfUOF
	WkcmhDt2I4OLJY5VnSVJ+5H23r9DCQrRpHW5LrueG6QPLhrKbBaBWOH4qM2RvFm4TPK1z9diByjYw
	AdCPcQAAIwsPz+YlHOirO5s/IAvDKQzKBAWVze/tyWNbKttgi3dnqOZNCyRifhKQcHvjqCpt/MPvF
	hyrahb2GjJk4b29W3+fi7R7uvwiLJzbFIR14vhAyuA0kYI9OG2Sc4o4L949kFXzuqkYCeo/T3v3bZ
	V9N2M8Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcN5G-00000002CDg-1czA;
	Mon, 27 Jan 2025 11:15:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcN5E-00000002CDM-1AXg
	for barebox@lists.infradead.org;
	Mon, 27 Jan 2025 11:15:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcN5C-0004ez-P7; Mon, 27 Jan 2025 12:15:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcN5C-0027C4-1i;
	Mon, 27 Jan 2025 12:15:10 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcN5C-003HMX-1P;
	Mon, 27 Jan 2025 12:15:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Jan 2025 12:15:09 +0100
Message-Id: <20250127111509.781706-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_031512_316553_9343EAAB 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] scripts: include/linux/types.h: define loff_t for musl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

musl doesn't define loff_t, but glibc does and both of them define
__linux__. This leads to build errors with musl when code makes it into
scripts/ that uses loff_t. This was already fixed once e.g. in commit
c0d065fb0aa0 ("scripts: bareboximd: remove usage of loff_t").
Instead of playing whack-a-mole in future, let's just define loff_t
for non-glibc builds of scripts/.

Fixes: 5171f4d0696f ("scripts: implement read_fd and pread_full for tools")
Reported-by: Enrico Jörns <ejo@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/include/linux/types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/include/linux/types.h b/scripts/include/linux/types.h
index e81d7e810126..02a330cd4e79 100644
--- a/scripts/include/linux/types.h
+++ b/scripts/include/linux/types.h
@@ -14,7 +14,7 @@ typedef int16_t __s16;
 typedef uint8_t __u8;
 typedef int8_t __s8;
 
-#ifndef __linux__
+#ifndef __GLIBC__
 typedef long long loff_t;
 #endif
 
-- 
2.39.5



