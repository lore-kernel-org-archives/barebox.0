Delivery-date: Thu, 18 Sep 2025 17:04:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzGBM-004VdQ-1u
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 17:04:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzGBM-0008BN-2d
	for lore@pengutronix.de; Thu, 18 Sep 2025 17:04:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZDfn4Zxctcgxa1YmDSXSe92+mvMBUVbZcaWLVKqwRSk=; b=a4grxZ9NFkaM2uPItOnU1lGYT0
	QgwFc4p7LyOS8iKN2/aVY2299GisRnB10meqh5zeDqRVeYOmK5fH97ZGh33SgUCLq7WMj9lI6t8To
	mrDxODlZ4HmD0U0ViakQ0Mmjzx+ZiQJaMvQDM4bkmc7/B6H7zIQXNCljHJW3uX9pwY9K4meWz19+P
	9Gj0PYYQyk0MeBsa3dbpBJUcobg47tSGFpej6kXAuBT5RS+BETQgVA7HOkRN40CauzCxPM4Whu90s
	RUI4Oub1lZO8RxgfJowSl0PW3ugnqGTza8nEj+GFLZfT3KuX7CfjlMt7zR5akJwcCJU0i1ICJeQS2
	6ThZ7WaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzGAo-00000000G83-3qWU;
	Thu, 18 Sep 2025 15:03:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzGAm-00000000G72-4B4h
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 15:03:50 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1uzGAl-0007vx-GJ; Thu, 18 Sep 2025 17:03:47 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 18 Sep 2025 17:03:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250918-prt8ml-v1-1-3fd826e0807d@pengutronix.de>
References: <20250918-prt8ml-v1-0-3fd826e0807d@pengutronix.de>
In-Reply-To: <20250918-prt8ml-v1-0-3fd826e0807d@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1091; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=re6691xGxP9En2N3JRm27YftzjFxYk0J5CP3LVuop2o=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsg4Ix/08I0hf+Cjsy+t3ia2z27NOtcVJ7/pzvKkq8rr1
 9w2nlq2taOUhUGMi0FWTJElVk1OQcjY/7pZpV0szBxWJpAhDFycAjARthmMDF/tNqzQVGj7Kxit
 3PrVijlGxCZ05rt8Gfu8oPr2DQ/n9jMyrEps2daTl/J7hUjtsmpmQak95vrdO3OWct7n2LCPPeM
 cOwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_080349_036343_78A27986 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX8M: protonic-imx8m: enable deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Deep probe allows barebox to probe devices on demand without having to
retry probes due to -EPROBE_DEFER. Most i.MX8M boards in barebox make
use of it, so let's enable it here as well.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/boards/protonic-imx8m/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/protonic-imx8m/board.c b/arch/arm/boards/protonic-imx8m/board.c
index d4bacbc6f0..0f96c3d9c5 100644
--- a/arch/arm/boards/protonic-imx8m/board.c
+++ b/arch/arm/boards/protonic-imx8m/board.c
@@ -16,6 +16,8 @@ static int prt_prt8mm_init_power(void)
 	int ret;
 	char buf[2];
 
+	of_device_ensure_probed_by_alias("i2c1");
+
 	client.addr = 0x60;
 	adapter = i2c_get_adapter(1);
 	if (!adapter) {
@@ -76,6 +78,7 @@ static const struct of_device_id prt_imx8mm_of_match[] = {
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, prt_imx8mm_of_match);
+BAREBOX_DEEP_PROBE_ENABLE(prt_imx8mm_of_match);
 
 static struct driver prt_prt8mm_board_driver = {
 	.name = "board-protonic-imx8mm",

-- 
2.51.0.178.g2462961280



