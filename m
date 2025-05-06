Delivery-date: Tue, 06 May 2025 08:36:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBuc-002i00-33
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:36:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBuc-00012E-9s
	for lore@pengutronix.de; Tue, 06 May 2025 08:36:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Lb3kT29ohypqdzStJTXXH/eLSLs48hdLLKsy0CKgxFk=; b=2KonU1PL781ZvO5kepOdGGpQmZ
	PZjqNse88aezEQZRBEbJaA/Yko+yJuiYN1wb+3vX1sGZiqdKRbavZLS+D8BZCKHB5bng67Nauutmw
	tvHus1eGfcrHpTtLM84P8bSaS+TSY+KIfsgRpz6jJIBGEe3kdGkhv2q+v+/g5yHj4ZPQ3+3AKbGei
	DfCqFL/2rBWC1+32x+tQmaOYhfIRQ4xF/pyPSz+yE11JW+KBqJanebivjq586Hie7JBJ6enk7uXd2
	6Pq7PCtz/PL2EL6w7kZZPOGaexOEMrWAG7lJN2z0eX4I7VrCDQjtShy5LI0iDNWMZCTmGtE0qCSN1
	Ddw0aUtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBuD-0000000AibZ-13RE;
	Tue, 06 May 2025 06:35:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBgF-0000000AeNx-0oNE
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:21:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBgE-0005yj-09; Tue, 06 May 2025 08:21:26 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBgD-001LjL-2c;
	Tue, 06 May 2025 08:21:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBgE-00Cy6B-0c;
	Tue, 06 May 2025 08:21:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:21:25 +0200
Message-Id: <20250506062125.3090943-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_232127_227994_44AE22CB 
X-CRM114-Status: UNSURE (   9.22  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include: linux/printk: import Linux dev_err_ptr/case_probe helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For compatibility with Linux, add two helpers for dev_err_probe that
return an error pointer and take either an error pointer or an error
code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/printk.h | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index 1c717a6f6676..d4aafc84e2dd 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -113,7 +113,17 @@ static inline int dev_err_probe(struct device *dev, int err, const char *fmt,
 }
 #endif
 
-#define dev_errp_probe(dev, errptr, args...) dev_err_probe((dev), PTR_ERR(errptr), args)
+/* Simple helper for dev_err_probe() when error is already a pointer. */
+#define dev_errp_probe(dev, errptr, args...) \
+	dev_err_probe((dev), PTR_ERR(errptr), args)
+
+/* Simple helper for dev_err_probe() when ERR_PTR() is to be returned. */
+#define dev_err_ptr_probe(dev, ___err, fmt, ...) \
+	ERR_PTR(dev_err_probe(dev, ___err, fmt, ##__VA_ARGS__))
+
+/* Simple helper for dev_err_probe() when ERR_CAST() is to be returned. */
+#define dev_err_cast_probe(dev, ___err_ptr, fmt, ...) \
+	ERR_PTR(dev_err_probe(dev, PTR_ERR(___err_ptr), fmt, ##__VA_ARGS__))
 
 #define __pr_printk(level, format, args...) \
 	({	\
-- 
2.39.5



