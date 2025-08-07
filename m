Delivery-date: Thu, 07 Aug 2025 10:20:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujvrF-007vWl-0L
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 10:20:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujvrE-00074L-Hu
	for lore@pengutronix.de; Thu, 07 Aug 2025 10:20:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H9/bR+gaPg2saWDaeVPlJ59nP9cKZ1k7nq3VwncwLyk=; b=K2qZxn//rfblqTC8o/2qIQev63
	OVoYrR5pLyUJ030/oQmi9AooNJp3S4+21AtJUDRkAmn5Nt4PZHZ1UJKGa3U9aNpMRFEcTLKZIcTpE
	2ZSjQNBMAg7UqWl4vui47CMrzJ1k1EpY8+Oi09JY8Ls01f2H9kt1EbHuijD+T8kgOLK13hiN1CgbX
	LzhjSKLx8oYL3XlPQ/zVLEgOklKObaD9dehaWbLGvx+Fij/U+GB3Y+sup2lMunai8OsFaQR8aL59t
	i1hQWNaywuCR21l5KXqyGmwZ+zuKUm7+Qn2LLActIVZLjrJs3EfoaYQcDfDXtO4DYP50N47v7jDh3
	00xQDLSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvqm-0000000HZt0-2EwA;
	Thu, 07 Aug 2025 08:19:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvqj-0000000HZrM-1DgG
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 08:19:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujvqh-0006oJ-Jc
	for barebox@lists.infradead.org; Thu, 07 Aug 2025 10:19:43 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujvqh-00CLTE-1L
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 10:19:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujvqh-0015nQ-14
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 10:19:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  7 Aug 2025 10:19:39 +0200
Message-Id: <20250807081942.250226-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250807081942.250226-1-a.fatoum@pengutronix.de>
References: <20250807081942.250226-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_011945_333517_384A3B6A 
X-CRM114-Status: UNSURE (   7.76  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/5] security: mark weaker passwords hashing algorithms insecure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

It's well known that MD5 and SHA1 aren't suitable password hashing
algorithms. Let's alert users to that fact by selecting
HAS_INSECURE_DEFAULTS.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - unchanged
---
 security/Kconfig | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/security/Kconfig b/security/Kconfig
index 95c062201acf..b9447e73fc6f 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -43,10 +43,21 @@ choice
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



