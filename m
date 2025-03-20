Delivery-date: Thu, 20 Mar 2025 09:31:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBJg-001ofe-1h
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 09:31:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBJf-0005Az-Cn
	for lore@pengutronix.de; Thu, 20 Mar 2025 09:31:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YckL0VxF0+ZynbpqF+BFbU9NAw8DWMGaiQj9f/c8jF8=; b=GKGYMCF40OFmsORwCK14wS3GwZ
	zzM6KKee5q4Sp7MJsAs6jYxeUwxvSOfBkfHLN3BUCFTzvn/MwpBpOQ0oiAmpuQzM38IJH4/+c4bBc
	SXLo/TnjyMmR1GXI/9LD6kJeELpTMn8oVf6LCKKc4v92XXEM39d+d56esGdN+rMiiloEDNEZjl6dF
	wq4yrqE06DIyGOzWnFLRpnh3g+42UCvpqRi8T1e0G1DKUJK5dPTtqtdgVxGzS0TcslGBsEvFZPA/K
	5Peu2HqcHjk9hCVt8znxOhBkZwOlIk4w+uIBWjsW8H9IPE9VQTPqowavFrDNCEdFiYlFhYEfA1skk
	QgI4qO/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBJ0-0000000BXND-3RBl;
	Thu, 20 Mar 2025 08:31:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBCY-0000000BWIq-03SD
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 08:24:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvBCV-0003Lb-P7; Thu, 20 Mar 2025 09:24:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvBCV-000jCH-0Y;
	Thu, 20 Mar 2025 09:24:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvBCV-008uiz-1d;
	Thu, 20 Mar 2025 09:24:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 09:24:26 +0100
Message-Id: <20250320082426.2124644-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320082426.2124644-1-a.fatoum@pengutronix.de>
References: <20250320082426.2124644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_012430_054341_C34A103E 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] Revert "Documentation: remove info about bridging to matrix"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a new Matrix-to-IRC bridge since March 9th and it should help
users without an IRC bouncer. Let's mention this again in the docs.

This reverts commit 7d2ee65d176776c8a5bad22804c5b30201dc6313.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/introduction.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index 7cd289d73e39..cba1d09986b8 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -49,4 +49,6 @@ and have ``FETCH_HEAD`` point at it::
 CI tests are executed by Github Actions can be used by forking
 `the project on Github <https://github.com/barebox/barebox>`.
 
-There's also an IRC channel: #barebox on Libera Chat
+There's also an IRC channel, which is
+`bridged to Matrix  <https://app.element.io/#/room/#barebox:matrix.org>`_:
+#barebox on Libera Chat.
-- 
2.39.5



