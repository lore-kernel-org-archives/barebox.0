Delivery-date: Thu, 09 Jul 2026 15:20:34 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1whog6-001vLV-2z
	for lore@lore.pengutronix.de;
	Thu, 09 Jul 2026 15:20:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 85798201D9C
	for <lore@pengutronix.de>; Thu, 09 Jul 2026 15:20:34 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OtCg9oKi;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 198.137.202.133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zes64OGTl+Pw8ePgy8Cuzpk+B9j9rsf0tblXwp7mpU4=; b=OtCg9oKigfOuq132CVr1CC7Yj1
	3m5brbFt+dH1hhY2Ed7Hg4upQmdkmZR2F6hY3b1845V+yoMCKUTwDXvmZf6GS5R2pfPKkGq9BRcJp
	kF4gNhKlAtAm1qKwcyQw0Z9G4AQ81uXD4TGaKfYLSCcyiJk9f82iM8l1A3EnLx3dJ7KK+AIpGEwxl
	iKDqic1S0WVwqEL2l9B1Rt9GPoKqC9iYIJeTBzdpE08Fv+WcLIewNsKkrmpMJWhPzXHnmBl9F6Z5W
	fv/HPo9UZFXXBG46rU3xwWT0w55XyOToXN3eHuhdQa3twyOYIEXzVM9Gw8uezXwPjg5b0t3l5r2Cs
	nCyatbPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whoWA-00000002VZE-0ACw;
	Thu, 09 Jul 2026 13:10:18 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whoW6-00000002VYa-2xAn
	for barebox@lists.infradead.org;
	Thu, 09 Jul 2026 13:10:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CC19A2000CA;
	Thu, 09 Jul 2026 15:10:10 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1whoW2-000vM8-2S;
	Thu, 09 Jul 2026 15:10:10 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1whoW2-0000000DqKU-2lPq;
	Thu, 09 Jul 2026 15:10:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] common: fastboot: make CONFIG_FASTBOOT_SPARSE=y the default
Date: Thu,  9 Jul 2026 15:10:06 +0200
Message-ID: <20260709131008.3299405-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_061014_890827_B310392E 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Back in 2018, sparse support was made optional as "[s]parse
    support is not always desired" without further elaboration. Arguably the
   majority of users would benefit from sparse support enabled, so flip the Kconfig
    default to make it opt-out instead. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,198.137.202.133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 85798201D9C
X-Stat-Signature: 7buse8swy649pkxjudxs5zaye4oxxzzw

Back in 2018, sparse support was made optional as "[s]parse support
is not always desired" without further elaboration.

Arguably the majority of users would benefit from sparse support enabled,
so flip the Kconfig default to make it opt-out instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
@Sascha, do you recall what reasons would there be to disable sparse
support? As I can't think of any besides binary size, I chose not to
include a migration guide entry about the default changing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index f7122d89c6e2..85df7f7daec6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1478,6 +1478,7 @@ config FASTBOOT_SPARSE
 	bool
 	select IMAGE_SPARSE
 	prompt "Enable Fastboot sparse image support"
+	default y
 	help
 	  Sparse images are a way for the fastboot protocol to write
 	  images that are bigger than the available memory. If unsure,
-- 
2.47.3



