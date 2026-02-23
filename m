Delivery-date: Mon, 23 Feb 2026 16:39:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuY2J-004sL1-0b
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 16:39:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuY2J-0001i9-HQ
	for lore@pengutronix.de; Mon, 23 Feb 2026 16:39:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lz9Q0bCqcY7MRFk+zvCSDDSYMHfwculdvJB97xN50sY=; b=ahvciT0GTN/2R3j/E32kxBP2QH
	3Nf4Ml8Bh9GSJljsneWo0d5jGKmy0ntk9vMF05eZHg8Fg4tz/ppW4SXVd+U7hR7vUOvxsWy7N5xLF
	n3/lNn35RfqljxdzvH76rs2R5PkXxB8lN0wldFzTHw8f02rNC4JAhvHnVbJbU0I5P6vY29j/sSj1e
	lIvjfKuo5nO6n60T0lOsd61V68aTg98U1krTmGq7UKdYlOBgTFMCP1kebneSNM7HDIhFY/nrChizI
	a5BJDhc5/ToC07brjCIpPr02pF4FI9s/AxfG3kndRNJbAMUrWqF/tiUskYtJqIB8GKP+ajfR975IE
	L/gmVnDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuY1g-00000000aXZ-1qGm;
	Mon, 23 Feb 2026 15:39:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuY1e-00000000aX1-27uy
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 15:39:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuY1d-0001XA-0b; Mon, 23 Feb 2026 16:39:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuY1b-002Fpv-1Z;
	Mon, 23 Feb 2026 16:39:08 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuY1c-00000007pxL-36OP;
	Mon, 23 Feb 2026 16:39:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 23 Feb 2026 16:39:08 +0100
Message-ID: <20260223153908.1867811-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_073910_551633_1725A25F 
X-CRM114-Status: GOOD (  11.77  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Debug: add Kconfig option to abort autoboot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For debugging purposes it's sometimes useful when barebox doesn't boot
through, but stops at the prompt. This allows for automated debugging
without having to catch the autoboot timeout first. This normally works
thanks to labgrid, but at the cost that messages are eaten up by the
barebox strategy.

This adds a Kconfig option to just stop at the prompt.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig.debug | 6 ++++++
 common/startup.c     | 4 +++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig.debug b/common/Kconfig.debug
index b307b84202..13a686d0ad 100644
--- a/common/Kconfig.debug
+++ b/common/Kconfig.debug
@@ -56,6 +56,12 @@ config DEBUG_INITCALLS
 	help
 	  If enabled this will print initcall traces.
 
+config DEBUG_AUTOBOOT_ABORT
+	bool "Abort autoboot"
+	help
+	  If enabled barebox will not automatically boot but start a shell
+	  instead.
+
 config DEBUG_PBL
 	bool "Print PBL debugging information"
 	depends on PBL_CONSOLE
diff --git a/common/startup.c b/common/startup.c
index 055d94fe6a..7551813a50 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -189,7 +189,9 @@ void set_autoboot_state(enum autoboot_state autoboot)
  */
 enum autoboot_state do_autoboot_countdown(void)
 {
-	static enum autoboot_state autoboot_state = AUTOBOOT_UNKNOWN;
+	static enum autoboot_state autoboot_state =
+		IS_ENABLED(CONFIG_DEBUG_AUTOBOOT_ABORT) ?
+			AUTOBOOT_ABORT : AUTOBOOT_UNKNOWN;
 	unsigned flags = CONSOLE_COUNTDOWN_EXTERN;
 	int ret;
 	struct stat s;
-- 
2.47.3



