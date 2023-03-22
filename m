Delivery-date: Wed, 22 Mar 2023 14:52:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peytD-00AUGR-FI
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 14:52:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peytD-0005YG-4u
	for lore@pengutronix.de; Wed, 22 Mar 2023 14:52:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wfKE6MO2RUUPE8g8y7Vx5S0KsrbJ8LNBHTkRUu9efoE=; b=J2nPzL6SyHmotNdl4RHHRzatl3
	cXpGi5LDVYtbBnxOjDGuB4IbBhgGFel8GAt9NZ1ekVUX4jCqew92pAJoLDrQWq1ZunHXL7kg1W5TX
	lkuQobHywr8qIZzl5qbGOZudTJzyXRJTiwdAUCF9Q2SODOz1pgpUCArKgz1A0lT1tUcwYk3vDXztA
	0//m2GYm4HqEAof2P3bsxID1HaVblGGnlvb0SCq02qpVTzrs50XSs+WSuavZAPMYp8+E0MeZ7cHm8
	HJfP0eC/2DKgnv01wzD/Syo8YHu5kdwWyVEn5SouXqbSQTDeuSBGcq2j1UPU1b7n2fjOLX3iR0TA5
	dKI+Zrhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peyrr-00GBNH-1b;
	Wed, 22 Mar 2023 13:51:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peyro-00GBLR-1R
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 13:51:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peyrm-0005Hs-7L; Wed, 22 Mar 2023 14:51:02 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peyrl-005vzu-J1; Wed, 22 Mar 2023 14:51:01 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peyrk-00HAxs-Kl; Wed, 22 Mar 2023 14:51:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Mar 2023 14:50:55 +0100
Message-Id: <20230322135055.4093677-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_065104_481624_95B1F68F 
X-CRM114-Status: GOOD (  10.64  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: xhci-hcd: Give it some more time to stop
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On a RK3568 SoC with DWC3 controller it takes about 17us for the
controller to halt. Increase the timeout accordingly to avoid
warning messages. While at it, remove the duplicate definition of
XHCI_MAX_HALT_USEC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/xhci.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index a6a0483245..5c72f62402 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -30,8 +30,8 @@
 /* Section 5.3.3 - MaxPorts */
 #define MAX_HC_PORTS            255
 
-/* Up to 16 ms to halt an HC */
-#define XHCI_MAX_HALT_USEC	(16*1000)
+/* Up to 32 ms to halt an HC */
+#define XHCI_MAX_HALT_USEC	(32*1000)
 
 #define XHCI_MAX_RESET_USEC	(250*1000)
 
@@ -1134,8 +1134,6 @@ void xhci_hcd_stop(int index);
 /*************************************************************
 	EXTENDED CAPABILITY DEFINITIONS
 *************************************************************/
-/* Up to 16 ms to halt an HC */
-#define XHCI_MAX_HALT_USEC	(16*1000)
 /* HC not running - set to 1 when run/stop bit is cleared. */
 #define XHCI_STS_HALT		(1 << 0)
 
-- 
2.30.2



