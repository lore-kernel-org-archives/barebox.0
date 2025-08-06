Delivery-date: Wed, 06 Aug 2025 16:04:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelD-007eyd-14
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 16:04:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelC-0004Ad-Pj
	for lore@pengutronix.de; Wed, 06 Aug 2025 16:04:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=quqWzhmRcfXE5Y1Lq4BCB+aZVJ8CkoAuUJ3nzo6HK7I=; b=rnmKrnFH3CxmL2mReAsqu14+2Y
	w4E/kiF53LYRhblqCHRcPDfg5544UjyT1LwhMXLyFAQvPo139eAcmURsGAjEQgCEpuy466+S44oHR
	JNAc8ohn/frx8c/kat45sVXxMrk2qSJiRFe1JWq1/4i+/R0ESAUBQcUytokutf/8TD7CX8aGKePkw
	WsKk3rLXs0i+fkI9EtTxhlRDLWAxKPq24Kf+gsT2IvVtXnCEIV7KBt3vhOtmNGl9aq0Sjshq8jyHh
	iKRzI8nlNlYTwLxXVthg3AG0eVjAf9xmBPEAGf8JmoJeyOZ5tGh1TpMiV9W123QLEwrU1U4AJxvTf
	Xk6GA9Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujekn-0000000FNfI-20Kd;
	Wed, 06 Aug 2025 14:04:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujegZ-0000000FMt2-2Cxl
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 14:00:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujegY-0002eR-7M; Wed, 06 Aug 2025 16:00:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 16:00:02 +0200
Message-Id: <20250806140005.2866622-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806140005.2866622-1-a.fatoum@barebox.org>
References: <20250806140005.2866622-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_070007_562827_59168734 
X-CRM114-Status: UNSURE (   6.86  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] security: mark weaker passwords hashing algorithms insecure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's well known that MD5 and SHA1 aren't suitable password hashing
algorithms. Let's alert users to that fact by selecting
HAS_INSECURE_DEFAULTS.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 security/Kconfig | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/security/Kconfig b/security/Kconfig
index 88ebdeed2f64..3e21e1416e2f 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -63,10 +63,21 @@ choice
 config PASSWD_SUM_MD5
 	bool "MD5"
 	select DIGEST_MD5_GENERIC
+	select HAS_INSECURE_DEFAULTS
+	help
+	  MD5 had been widely used historically as a cryptographic hash function,
+	  but has been found to suffer from extensive vulnerabilities.
+	  Use of MD5 to hash passwords is strongly discouraged.
 
 config PASSWD_SUM_SHA1
 	bool "SHA1"
 	select DIGEST_SHA1_GENERIC
+	select HAS_INSECURE_DEFAULTS
+	help
+	  SHA1 had been widely used historically as a cryptographic hash function,
+	  but has since been cryptographically broken.
+	  SHA-1 was designed for speed and thus use as password hash is strongly
+	  discouraged as it's easier for an attacker to brute force.
 
 config PASSWD_SUM_SHA256
 	bool "SHA256"
-- 
2.39.5



