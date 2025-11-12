Delivery-date: Wed, 12 Nov 2025 16:11:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJCVZ-000DCG-0e
	for lore@lore.pengutronix.de;
	Wed, 12 Nov 2025 16:11:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJCVY-00068e-Lg
	for lore@pengutronix.de; Wed, 12 Nov 2025 16:11:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KRS4Yo+/S0fNxVQxjlS0rR1ZkQDqFrxueqMxiTa2yNs=; b=4HmrLzItpVQ6NQPdzJWMt6geIj
	Gzu/ukiN85gVcE8GvszPuxPhLIK1ssIg1/U/fAUSavr6dLt/rizPMtCW7IOsjrpMfdQm6HVb2iWEO
	ygLB0psGUEroJOocLdOJDpn05N2wt3GGtitFyPAOTVwfTNALGARg6H6IaonNab4FZ1uy9KCFYux+F
	6qMg73p/4lKrn8A6jHTTZGg8xU+s4JjZRro3woOuDYysBypGG3eG34yPIJVDqGTS7miVDteceD7vg
	lurZ1hkHYUBDTgQ74QsA8e3subvAy9WNFVPPfhCFgVDo5jrprd3NTd9+tgkGfDx6xUzGIgsczmHNC
	h+BwggAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJCUz-000000091OW-14bt;
	Wed, 12 Nov 2025 15:11:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJCUw-000000091Nx-2hN2
	for barebox@lists.infradead.org;
	Wed, 12 Nov 2025 15:11:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJCUt-00061c-IZ; Wed, 12 Nov 2025 16:10:59 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJCUt-0006Pi-1F;
	Wed, 12 Nov 2025 16:10:59 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJCUt-00000002H2R-19iQ;
	Wed, 12 Nov 2025 16:10:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 12 Nov 2025 16:10:58 +0100
Message-ID: <20251112151058.540654-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_071102_679564_71E14F5F 
X-CRM114-Status: GOOD (  10.06  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] poller: activate POLLER_WARN_OVERTIME only on third strike
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This warning was meant to address the case that a poller repeatedly
takes too long that interactive usage is impacted.

I frequently see this warning during initial USB gadget set up and that
is not really useful to show every user and developers can use the
poller command, so let's wait until we are on our third (2nd when
counting from 0) overtime to print the one time warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig  | 2 +-
 common/poller.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index d923d4c4b628..c6a7f2feabd3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1104,7 +1104,7 @@ config POLLER_WARN_OVERTIME
 	help
 	  Pollers are meant to poll and quickly execute actions.
 	  exceeding the maximum runtime of POLLER_MAX_RUNTIME_MS
-	  will trigger a one-time warning.
+	  three times will trigger a one-time warning.
 
 config BTHREAD
 	bool "barebox co-operative (green) thread infrastructure"
diff --git a/common/poller.c b/common/poller.c
index 5dc2be97211d..ca0d68d6cb27 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -135,8 +135,8 @@ void poller_call(void)
 		duration_ms = ktime_ms_delta(ktime_get(), start);
 		if (duration_ms > POLLER_MAX_RUNTIME_MS) {
 			if (IS_ENABLED(CONFIG_POLLER_WARN_OVERTIME) &&
-			    !poller->overtime)
-				pr_warn("'%s' took unexpectedly long: %llums\n",
+			    poller->overtime == 2)
+				pr_warn("'%s' takes unexpectedly long: %llums\n",
 					poller->name, duration_ms);
 
 			if (poller->overtime < U16_MAX)
-- 
2.47.3



