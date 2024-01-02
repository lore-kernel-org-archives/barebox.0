Delivery-date: Tue, 02 Jan 2024 18:02:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9g-000qJp-0l
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 18:02:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9e-00072i-W7
	for lore@pengutronix.de; Tue, 02 Jan 2024 18:02:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SESClWdUOBUPiWixiIf4TONNfTP94N2wbdM3me9k2cA=; b=c7pbVONhCYt4qgklS4mshlr3BM
	+WVnvhkCZTvOZSfpC2aqlSXsuEtRGHk1wGJXfpZwWO7WzPAvQc6zHABUc6aUoOZfG4/NiQw4Ii6SK
	4Xt48si5KolU41uYtC/QWpe42qV7I9rB11a0a6Cw7GU1OObzhGlnzUGFc8emqBe5m02x2Smj/YW/l
	KbTmHNThaxiakY6jV4yU/dNlWQ5XmY0k2jEKKkwVR6HE65BDbUOrio7a6odNM9ei7vzrHi+g1xMOv
	rA7qAWt5Fjw8Mlkq9efKciBZluJD8VbOMuK/a73qEoWkljg0MagnPm0uY2OMijfomqCJDILmXFuAf
	gja4P5AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8c-008XuV-2W;
	Tue, 02 Jan 2024 17:01:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8W-008XrG-1V
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 17:01:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8V-0006H3-AI; Tue, 02 Jan 2024 18:01:03 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8T-003DrW-Ge; Tue, 02 Jan 2024 18:01:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-006ocT-1X;
	Tue, 02 Jan 2024 18:01:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Rouven Czerwinski <rcz@pengutronix.de>,
	Christian Eggers <ceggers@arri.de>
Date: Tue,  2 Jan 2024 18:00:59 +0100
Message-Id: <20240102170100.1596372-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_090104_540021_742A4F16 
X-CRM114-Status: GOOD (  10.99  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 6/7] nvmem: ocotp: align OCOTP bank count with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that struct imx_ocotp_data::nregs is equivalent to the Linux driver's
struct ocotp_params::nregs, the differences between the Linux driver and
barebox are easy to spot. Some of the differences were only quite recently
added to Linux in v6.7-rc1 (i.MX6UL, i.MX6ULL), but others have been
that way since they were first added to the Linux driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Rouven Czerwinski <rcz@pengutronix.de>
Cc: Christian Eggers <ceggers@arri.de>
---
 drivers/nvmem/ocotp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 76c50a964435..6480fd95238e 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -875,7 +875,7 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
 };
 
 static struct imx_ocotp_data imx6ul_ocotp_data = {
-	.nregs = 128,
+	.nregs = 144,
 	.addr_to_offset = imx6q_addr_to_offset,
 	.mac_offsets_num = 2,
 	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
@@ -886,7 +886,7 @@ static struct imx_ocotp_data imx6ul_ocotp_data = {
 };
 
 static struct imx_ocotp_data imx6ull_ocotp_data = {
-	.nregs = 64,
+	.nregs = 80,
 	.addr_to_offset = imx6q_addr_to_offset,
 	.mac_offsets_num = 2,
 	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
@@ -914,7 +914,7 @@ static struct imx8m_featctrl_data imx8mp_featctrl_data = {
 };
 
 static struct imx_ocotp_data imx8mp_ocotp_data = {
-	.nregs = 256,
+	.nregs = 384,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 2,
 	.mac_offsets = { 0x90, 0x94 },
@@ -923,7 +923,7 @@ static struct imx_ocotp_data imx8mp_ocotp_data = {
 };
 
 static struct imx_ocotp_data imx8mq_ocotp_data = {
-	.nregs = 512,
+	.nregs = 256,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { 0x90 },
@@ -939,7 +939,7 @@ static struct imx8m_featctrl_data imx8mm_featctrl_data = {
 };
 
 static struct imx_ocotp_data imx8mm_ocotp_data = {
-	.nregs = 512,
+	.nregs = 256,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { 0x90 },
@@ -956,7 +956,7 @@ static struct imx8m_featctrl_data imx8mn_featctrl_data = {
 };
 
 static struct imx_ocotp_data imx8mn_ocotp_data = {
-	.nregs = 512,
+	.nregs = 256,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { 0x90 },
@@ -968,7 +968,7 @@ static struct imx_ocotp_data imx8mn_ocotp_data = {
 };
 
 static struct imx_ocotp_data imx7d_ocotp_data = {
-	.nregs = 512,
+	.nregs = 64,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
-- 
2.39.2



