Delivery-date: Tue, 28 Oct 2025 13:19:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDifL-00CgL9-2G
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 13:19:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDifL-0002AY-5N
	for lore@pengutronix.de; Tue, 28 Oct 2025 13:19:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ciVBFo/oQ34fTgcf1ePOVy2/qayTt9CFRtiZKMb9kaU=; b=d0+znK9SzezWpCA9XEsI6p4y0r
	3KiTc2Qj5T1Ee6GnzJLfVJepx2okGhD4cu5J4dUgkTnwxlyWOeJN5n2yant/GzSKJZKLsCwCQ5Hc9
	L8nJpqwDxc2OA2DX9BNSk1hXc4sYMVjtWsDIRaEinWgOSF2uXzSkXlwiAedG/v5UzSOKU2CIpomD5
	GoUid/7xroheNZVqfWmskVZK5T8Ux4lOpoJSKoNlp3pu70+4HSmqR/K6nFeYKCuC0LFozN4ljc7VW
	/kGaSdB7/VtgfQquJSw5+U8ftzoEx7sCoedblT22SSf74t1k+YI6D/WzbkSEQXprK8BevRagaCqRb
	yAPUfAZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDien-0000000FuPt-3Tm7;
	Tue, 28 Oct 2025 12:18:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDiek-0000000FuO0-2Knb
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 12:18:32 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vDieh-0001zX-Qv; Tue, 28 Oct 2025 13:18:27 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 28 Oct 2025 13:18:19 +0100
Message-ID: <20251028121820.1242298-2-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251028121820.1242298-1-f.pflug@pengutronix.de>
References: <20251028121820.1242298-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_051830_590359_8DB0CF3A 
X-CRM114-Status: GOOD (  10.19  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] startup: autoboot: disable on deactivated console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the console input is deactivated either globally or through a
security policy, then it does not make sense to wait for user input, but
instead boot the system directly.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 common/startup.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 3bc2609006..ea5436afa6 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -188,9 +188,11 @@ enum autoboot_state do_autoboot_countdown(void)
 	if (autoboot_state != AUTOBOOT_UNKNOWN)
 		return autoboot_state;
 
-	if (!console_get_first_active() &&
-	    global_autoboot_state != AUTOBOOT_ABORT &&
-	    global_autoboot_state != AUTOBOOT_HALT) {
+	if ((!console_get_first_active() &&
+	     global_autoboot_state != AUTOBOOT_ABORT &&
+	     global_autoboot_state != AUTOBOOT_HALT) ||
+	    !IS_ALLOWED(SCONFIG_CONSOLE_INPUT) ||
+		IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT)) {
 		printf("\nNon-interactive console, booting system\n");
 		return autoboot_state = AUTOBOOT_BOOT;
 	}
-- 
2.47.3



