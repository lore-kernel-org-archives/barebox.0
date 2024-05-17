Delivery-date: Fri, 17 May 2024 15:27:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xcf-001lNZ-2R
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 15:27:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xce-0003YI-Qh
	for lore@pengutronix.de; Fri, 17 May 2024 15:27:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oYREcI/SWf7SKA60pSjNLa6ruwLNp0xNGC8SQToAHyU=; b=3nG09q2V2HqyuFpIPPcAFzYfjR
	x7pdcuci6eUZrk+S/0aNoXif+9lcmiOREbHyPtXusAz0t2B/R2/Ghs2NtKOaUvfPJsapqiEu3979o
	ivXLXxKafB72Yk/wM1yhQlMUAbHGawoCS7g2/5BsaJ+KmFb+meRYCEYBJe9L+76LhpsSGVB9V86ow
	6KXtuEtEoNHTAnyXVVmf8y4zc0Hh0aGmhQHJh2/PRpEKjiGBk/miOjKb6ZclYesK71mqQypjItX0t
	sMecX6Wr5Tf69W7J89+zxgrKZLtuv8E5AzyyxUPwqCXvn+rAsajomcv7DhN+THJjz6plyQTmylcOR
	/sjluLWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xc3-00000007wnj-0Ou0;
	Fri, 17 May 2024 13:27:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xbx-00000007wjW-40Jd
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 13:27:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00032n-Li; Fri, 17 May 2024 15:26:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-001sCO-8o; Fri, 17 May 2024 15:26:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00DEM4-0b;
	Fri, 17 May 2024 15:26:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 15:26:53 +0200
Message-Id: <20240517132656.3151273-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
References: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_062702_121544_1C026938 
X-CRM114-Status: UNSURE (   9.04  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] sandbox: stdio: fix ctrlc link error when CONFIG_CONSOLE_NONE=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While sandbox defines arch_ctrlc() unconditionally, ctrlc() is not
defined when CONFIG_CONSOLE_NONE=y for all architectures, so we need the
inline stub on sandbox too to avoid a link error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/stdio.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index b6ded805cc21..d53f29039376 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -60,13 +60,11 @@ static inline int vprintf(const char *fmt, va_list args)
 	return 0;
 }
 
-#ifndef CONFIG_ARCH_HAS_CTRLC
 /* test if ctrl-c was pressed */
 static inline int ctrlc (void)
 {
 	return 0;
 }
-#endif /* CONFIG_ARCH_HAS_CTRLC */
 
 #endif
 
-- 
2.39.2



