Delivery-date: Wed, 21 Jan 2026 12:33:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWSW-003kFw-16
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 12:33:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWSU-000319-Ew
	for lore@pengutronix.de; Wed, 21 Jan 2026 12:33:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T1aHhK1rVE1MDdkedf9Z8AbuOI9iik9PmbQnU9Hb+M4=; b=d3m4tmtmlYcFxJLKu3Wask2DVY
	PSzmv/FVeRaSlVd8i390SLOCiKJyCd9UfAZMLDwcWbd4ZxOhzEecvu2xsk7QpxCPLz+rA1ulGp536
	SFO8nEQkbBa+a9Oe39z5JQRZE4s0Jen/0YfnekvwZymqSgPSGq/viHFLMmsFoMOIt2dPr6vYLgYPP
	5QmN5/6hPQkBAXu74BxMFZpHkISMcHWjoh4LNpLlEHXd1s5+UptaI4PT7ueaJ85BVujfbKEZWiHSs
	1wmG1uhd1F3xr/pigzEuNun/6nqiWRjEmzqr8WmrIfFZonTzyU6UKkqZyDcuzXnMNNH34uqRqc4s+
	iKYGU6Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWS0-00000005Lql-38JO;
	Wed, 21 Jan 2026 11:32:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWRy-00000005Lq5-1vVH
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 11:32:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWRv-0002kX-Id; Wed, 21 Jan 2026 12:32:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWRw-001jx1-0B;
	Wed, 21 Jan 2026 12:32:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWRv-000000063wC-44PN;
	Wed, 21 Jan 2026 12:32:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 Jan 2026 12:31:27 +0100
Message-ID: <20260121113234.1438699-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_033238_494621_1E056240 
X-CRM114-Status: GOOD (  16.94  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] of: base: add new barebox,status property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I am confronted with an occasional hang on the Radxa Rock 3A during
PCI probe. The board has no PCI devices connected.

This hang doesn't happen in Linux and doesn't happen on the QNAP
TS433-eU, which is also RK3568, but actually has PCIe devices, which are
probed normally.

For such purposes, add a barebox,status property as setting the status
to disabled, would impact Linux as well if barebox were to pass along
its own device tree, e.g. when installing the UEFI device tree
configuration table.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - rework to make clearer when to use the new property. (Marco)
  - add example with UEFI device tree configuration table into commit
    message (Marco)
---
 .../devicetree/bindings/barebox/barebox,status.rst | 14 ++++++++++++++
 drivers/of/base.c                                  |  4 +++-
 2 files changed, 17 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,status.rst

diff --git a/Documentation/devicetree/bindings/barebox/barebox,status.rst b/Documentation/devicetree/bindings/barebox/barebox,status.rst
new file mode 100644
index 000000000000..03f484cdcfe1
--- /dev/null
+++ b/Documentation/devicetree/bindings/barebox/barebox,status.rst
@@ -0,0 +1,14 @@
+barebox,status property
+=======================
+
+barebox interprets ``barebox,status`` the same as it does ``status``,
+but gives the barebox-specific property precedence if both exist.
+
+The purpose of this property is to keep the ``status`` property of the
+upstream DT, imported from Linux, untouched.
+
+Using ``barebox,status`` may be necessary to temporarily workaround
+barebox drivers that misbehave on a given board; Disabling the driver
+may be undesirable if it can handle other instances of the same device
+on the board or if barebox is being built to support other boards
+at the same time, where the driver functions correctly.
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 54fd458bd9a1..4e83a757a4e9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2149,7 +2149,9 @@ int of_device_is_available(const struct device_node *device)
 	const char *status;
 	int statlen;
 
-	status = of_get_property(device, "status", &statlen);
+	status = of_get_property(device, "barebox,status", &statlen);
+	if (status == NULL)
+		status = of_get_property(device, "status", &statlen);
 	if (status == NULL)
 		return 1;
 
-- 
2.47.3



