Delivery-date: Thu, 18 Dec 2025 22:36:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWLfe-00CyUU-27
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 22:36:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWLfd-0004Ee-Vu
	for lore@pengutronix.de; Thu, 18 Dec 2025 22:36:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/f359D/6kkQ6b25/rRYN8wgWBI6+SyVzRxppgZh9nvQ=; b=l6ZcFNNOWeDrVlgA6WJca3iJEM
	p8hl9RFCgvNOcri1WXjtMPWKK2wvJzTMUfLmp+nywXHKLXz1UEQXJjxMB/gnOlgbZg97VEqgAbibp
	UqVzY9JgFr5ZvX3x5kb3ET24DBRLtUFSqwfzj4K5N5S8ddbZuIF+w/ohAv9imzx3oCA+Kk6zP9mzV
	kwOL366cWXZmSoJD6eWSuAbwhTNERBmqw6cyMBmpg5meL41jtLkjn42H1LlYzrwGqNTVPeWu1cqKH
	p3mBJJYUx2C9sin8tInZQUTYHAtHVTH2iPFQOu6cBUaZPV3m9LjtJFtyDJCAJPLVQU5cUOa2if/ci
	r2G3gpvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWLf5-00000009DPr-21Kd;
	Thu, 18 Dec 2025 21:35:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWLf2-00000009DOb-3eQK
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 21:35:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf1-00041Y-1h; Thu, 18 Dec 2025 22:35:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf0-006Ls9-2m;
	Thu, 18 Dec 2025 22:35:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf0-0000000E03K-3E1f;
	Thu, 18 Dec 2025 22:35:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 22:33:08 +0100
Message-ID: <20251218213542.3263658-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218213542.3263658-1-a.fatoum@pengutronix.de>
References: <20251218213542.3263658-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_133548_915210_6547D0A2 
X-CRM114-Status: GOOD (  11.00  )
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
Subject: [PATCH v3 2/4] Documentation: rk35xx: expand on supported SoCs/boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have fairly good Rockchip support and as can be seen in
81b2c56c7e9d ("ARM: Initial support for Rockchip RK3576"), adding new
SoC support can be very straight forward.

Adapt the docs to mention all what's currently supported and add a note
about how to extend support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 Documentation/boards/rk35xx.rst | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/rk35xx.rst b/Documentation/boards/rk35xx.rst
index 8776ae3f7c0f..95b2866d0544 100644
--- a/Documentation/boards/rk35xx.rst
+++ b/Documentation/boards/rk35xx.rst
@@ -1,9 +1,8 @@
 RK35xx Rockchip SoCs
 ====================
 
-Barebox features support for the Rockchip RK3566 and RK3568 SoCs, where the
-RK3566 can be considered as reduced but largely identical version of the
-RK3568.
+Barebox features support for multiple SoCs of the Rockchip RK35xx
+series, including RK3566, RK3568, RK3576 and RK3588.
 
 Supported Boards
 ----------------
@@ -11,9 +10,12 @@ Supported Boards
 - Rockchip RK3568 EVB
 - Rockchip RK3568 Bananapi R2 Pro
 - Pine64 Quartz64 Model A
+- Pine64 Pine Tab 2
 - Radxa ROCK3 Model A
+- Radxa ROCK5 (RK3588)
 - Radxa CM3 (RK3566) IO Board
 - Protonic MECSBC
+- Protonic PRTPUK
 
 The steps described in the following target the RK3568 and the RK3568 EVB but
 generally apply to both SoCs and all boards.
@@ -127,3 +129,18 @@ And after that the ``ddrbin_tool`` binary can be used to apply this
 modification to the relevant ddr init blob::
 
 $ tools/ddrbin_tool rk3568 tools/ddrbin_param.txt bin/rk35/rk3568_ddr_1560MHz_v1.21.bin
+
+Adding new SoC support
+----------------------
+
+On 64-bit Rockchip Platforms, the barebox prebootloader acts as
+the latter part of BL2 to load TF-A and optionally OP-TEE and
+then execution continues to barebox proper as BL33.
+
+As the low-level setup of DRAM happens outside of barebox,
+adding support for new SoCs is thus very straight-forward.
+
+For base functionality, it probably requires only porting the
+Linux clk and pinctrl drivers as well as the boilerplate needed
+for every SoC. Reach out to the :ref:`mailing list <feedback>`
+if you have unsupported hardware.
-- 
2.47.3



