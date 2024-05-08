Delivery-date: Wed, 08 May 2024 14:15:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4gCn-002yDM-1M
	for lore@lore.pengutronix.de;
	Wed, 08 May 2024 14:15:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4gCm-00080L-RS
	for lore@pengutronix.de; Wed, 08 May 2024 14:15:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AYHZMzriOQQC7GkE3/bARJzjcOv/qhX5n67CkbDmOv4=; b=Bo0PRN2YQwcpmoLK8QOWa4j/xK
	9YLOWu7r5oUFBYWsmjP0+rMGEp1OIChngQ2uocghPC/Q8l0nIgSqbwPRoR+Xp858ZgapSF9cGYMTf
	LCJTvZDcN42T/cZ/dZKVyZj2lUL0wErPFFmaZ3S1AgzszLnxLTG8KOANCFmmub1Ykxl7rGAGRNxf2
	SmEmMN1M0Dvg3KiMcgcHh1cdt8dHDfTphxA5qrde440A3KtzRdjDelQMJHZwxpNOERqOJzfsv13D6
	cFOYJ4bQftT8Av7fW8Xq81yIm/YRUlichRD8o+u4LPcAO3JhhfgRZpkrKRotmgtPqbpN8aGLD2cyo
	QUUxSFjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4gCH-0000000FPGq-2mbJ;
	Wed, 08 May 2024 12:14:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4gCE-0000000FPFq-3JRT
	for barebox@lists.infradead.org;
	Wed, 08 May 2024 12:14:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4gC7-0007pO-7k; Wed, 08 May 2024 14:14:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4gC6-000Grx-RV; Wed, 08 May 2024 14:14:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4gC6-001JK9-2N;
	Wed, 08 May 2024 14:14:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 May 2024 14:14:45 +0200
Message-Id: <20240508121445.312551-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_051454_857731_A30E5D44 
X-CRM114-Status: GOOD (  13.11  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] nvmem: imx-ocotp-ele: fix MAC2 layout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The MAC address layout for MAC address 2 implemented in the
imx-ocotp-ele driver matches the one described in the Security Reference
manual. This contradicts the description in the fusemap though.
According to the fusemap the layout for MAC2 is the same as for MAC1.
It's not clear which one is correct, but at least the TQMA93 board has
MAC2 programmed matching the fusemap, so change the layout accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index e4e60ed6af..58d3e62abf 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -116,14 +116,10 @@ static int imx_ocotp_cell_pp(void *context, const char *id, unsigned int offset,
 	if (id && !strcmp(id, "mac-address")) {
 		u8 *buf = data;
 
-		if (offset == 0x4ec) {
+		if (offset == 0x4ec || offset == 0x4f2) {
 			swap(buf[0], buf[5]);
 			swap(buf[1], buf[4]);
 			swap(buf[2], buf[3]);
-		} else if (offset == 0x4f2) {
-			swap(buf[0], buf[1]);
-			swap(buf[2], buf[5]);
-			swap(buf[3], buf[4]);
 		} else {
 			return -EINVAL;
 		}
-- 
2.39.2



