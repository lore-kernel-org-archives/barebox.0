Delivery-date: Mon, 17 Nov 2025 09:36:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuie-001uq3-2a
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:36:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuid-0001dB-Mq
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:36:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fHs0xeoWYXIrKgLKeaa/FRT1BNcUum1oaFG6UmK+B+s=; b=2071H/hhMy9y04L8bt64yJXwN2
	SX17yaB5m7O+Q80KpCgVqJV5savzGRi3CsL/wQZBnzC4gWzC4f+dNqE9RBEJ1l/ZERoxylfyjC2jq
	AwnYrCpQuKuTNyz79YDIbIJSGIc/PdDI+Dx4j2xQ0RieKEmXhr98BR1COBbVJfLUDPDyQVEu07AKm
	T1UdUa0GEySUsWuqI+PmkVdOkkwDeUkGPylh7L05WhcUvnxnV7ExWI7ps+wL41ksU83aNEI65zxpf
	eVYy5tlW9axIgpx1zlMAqhF2MPn3HwPQEwSK0Af04rXxrbKFiZ544xLjjGsueLMIf8bgtaRx5CjTT
	5X8lbv1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui7-0000000Fgr2-1F8x;
	Mon, 17 Nov 2025 08:35:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui3-0000000FgpB-1qCq
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:35:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-0001E3-6j; Mon, 17 Nov 2025 09:35:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuhz-000sfn-2T;
	Mon, 17 Nov 2025 09:35:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-00000005QZR-0NJL;
	Mon, 17 Nov 2025 09:35:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Nov 2025 09:35:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-soc-uid-v2-9-a2415bf9133d@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
In-Reply-To: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763368535; l=936;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tiUZ4pSuZ/Rv3NT3uQzV3l2/qdqi5l4KVfM8czxcV/I=;
 b=G3QRB6DjbwjGFF88unO1n1Zipalus/rZ+eNyv7GcIFIElRC6wgDOydc/fVIQWWBhoVYaApAQ7
 hnhSwIbUo4WDRNyVb4BzJzFc3HXi9JC9JpUS5HEmQ7q2RZSayhAbTJl
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003539_483016_71894C66 
X-CRM114-Status: GOOD (  11.45  )
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
Subject: [PATCH v2 9/9] Documentation: migration: add i.MX8MP SoC UID
 change note
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/migration-guides/migration-master.rst | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
new file mode 100644
index 0000000000000000000000000000000000000000..5e1f15fe8988e178a4bb5fe12f0a9832391bfc51
--- /dev/null
+++ b/Documentation/migration-guides/migration-master.rst
@@ -0,0 +1,10 @@
+
+NXP i.MX8MP
+-----------
+
+* The i.MX8MP SoC UID really is 128bit. With this release all 128bit
+  are used for the SoC UID, previously only 64bit were used. This will
+  result in a different SoC UID and consequently a different machine_id
+  when systemd.machine_id is passed to Linux. If you need to keep the
+  previous 64bit SoC UID for compatibility reasons enable
+  CONFIG_ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID

-- 
2.47.3



