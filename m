Delivery-date: Thu, 07 Aug 2025 10:20:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujvrE-007vWa-2n
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 10:20:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujvrE-00074H-B5
	for lore@pengutronix.de; Thu, 07 Aug 2025 10:20:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eKHpiV/1xYvNnQLm7BbRMWJkfWGMiuQGeSMZN2OcSvw=; b=mCetllUJC6paL5FtaKVbeps9kp
	Tsvfgy/ZkYT2bncjP9w4zW//+v7bRcsBA37YtJlZkSp1C5z2m0KFyKWxL1Z2SqphWErRCdZ3/5DZu
	qon8WsMaIBpNcbdDhY5j33tFTaLQInXmXNZSx6r03dSOxpdTL+x/0W5fydvVyc4hKpXfQ68sxNA2K
	6RmsHONJepArFhD9MraVH34NUqnTmnnCpLsEBzRzB+pQSMLSBxYTUsmnLMiU1KSV0jiu3kgMXKCyv
	MjVQcLDCpEPvNVo/pppSbIhtUKD/yeQi06+3aUzByQ/uaYJuicKCcrxfBtzViyR9K5XsoLRyIcyhL
	0nsJjRew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvqo-0000000HZtL-2Hce;
	Thu, 07 Aug 2025 08:19:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvqj-0000000HZrO-1E37
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 08:19:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujvqh-0006oL-Mv
	for barebox@lists.infradead.org; Thu, 07 Aug 2025 10:19:43 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujvqh-00CLTK-1f
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 10:19:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujvqh-0015nQ-1M
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 10:19:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  7 Aug 2025 10:19:41 +0200
Message-Id: <20250807081942.250226-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250807081942.250226-1-a.fatoum@pengutronix.de>
References: <20250807081942.250226-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_011945_339592_A7CE0904 
X-CRM114-Status: UNSURE (   8.04  )
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
Subject: [PATCH v2 4/5] security: password: make PBKDF2 the default instead of MD5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

MD5 was the first entry in the choice and thus automatically the
default. This is a bad idea, so make PBKDF2 the explicit default.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - unchanged
---
 security/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/security/Kconfig b/security/Kconfig
index b9447e73fc6f..372fd275fde9 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -39,6 +39,7 @@ if PASSWORD
 
 choice
 	prompt "passwd checksum"
+	default PASSWD_CRYPTO_PBKDF2
 
 config PASSWD_SUM_MD5
 	bool "MD5"
-- 
2.39.5



