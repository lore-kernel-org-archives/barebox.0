Delivery-date: Fri, 28 Nov 2025 14:29:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOyXL-005nTI-1X
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 14:29:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOyXK-0008R6-TS
	for lore@pengutronix.de; Fri, 28 Nov 2025 14:29:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gKLLf+Ro+hpCZOvFsDjWFHaSs8vxJbH4iEbkZEzJh4w=; b=ZLt5lXpFS/nIfus/9oUPPZIrAm
	M4kQqdTq4hIJCNsLsBUP5jPayFls060bg5qjkk7JlTI5PqNv25Ts6v7EfX5hHbiPuGoeWYC1pW/hu
	DDdpUirHmbixFidD88zRIzlN3b2QHPcO2TVe2MER7F7rQxG2LHXO72joW10vddWCDCcHdFNT2wTMX
	T1bldHjf+fa+PqCpy8qw2wqqKzAQYeaGXZkrOYIRzV18xx8mROEAhZfqoImpomTFlXnBE/BLniFBy
	J7stTYkYYK6MzZ7DQ1FpGYHYhqNqKB/tedRYHJiQHpwHwFpC2aoka7XqpiGuKfvgNNRK9BQ9AbFhQ
	xyuij9xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOyWo-00000000TuS-091V;
	Fri, 28 Nov 2025 13:28:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOyWk-00000000TtK-18Mj
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 13:28:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOyWi-0008LR-0z; Fri, 28 Nov 2025 14:28:44 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOyWg-002xgY-36;
	Fri, 28 Nov 2025 14:28:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOyWg-0000000AwH7-3WKv;
	Fri, 28 Nov 2025 14:28:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 14:28:41 +0100
Message-ID: <20251128132842.2605920-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_052846_335204_397AEF30 
X-CRM114-Status: GOOD (  10.24  )
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
Subject: [PATCH] fixup! ARM i.MX6SL: Add Kindle generation 6/7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Documentation: i.MX: kindle: fix ReST warnings

- Reorder the numbering, so there isn't 2. twice
- Fix indentation, of sub-bulletpoint

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/imx/amazon-kindle-6-7.rst | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/boards/imx/amazon-kindle-6-7.rst b/Documentation/boards/imx/amazon-kindle-6-7.rst
index c57d27afe421..4769fb2ad59e 100644
--- a/Documentation/boards/imx/amazon-kindle-6-7.rst
+++ b/Documentation/boards/imx/amazon-kindle-6-7.rst
@@ -61,15 +61,15 @@ into USB boot mode, the eMMC may be disabled temporarily.
 
 1. Connect the Kindle to your host computer with a USB cable.
 2. Disable the eMMC
-   * for the DP75SDI pull the left resistor left of TP806/TP807 (below
-     TP914) facing the eMMC to zero.
-2. Power down the device by holding the power button until the power LED goes
+   (for the DP75SDI pull the left resistor left of TP806/TP807 (below
+   TP914) facing the eMMC to zero).
+3. Power down the device by holding the power button until the power LED goes
    dark (about 12-15 seconds).
-3. Release the power button.
-4. Free the eMMC pin.
-5. After 10-20 seconds, a new USB device named ``SE Blank MEGREZ`` should
+4. Release the power button.
+5. Free the eMMC pin.
+6. After 10-20 seconds, a new USB device named ``SE Blank MEGREZ`` should
    appear on your host computer.
-6. Use imx-usb-loader to boot from USB.
+7. Use imx-usb-loader to boot from USB.
 
    .. code-block:: console
 
-- 
2.47.3



