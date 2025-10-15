Delivery-date: Wed, 15 Oct 2025 11:27:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8xnJ-00834f-0V
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 11:27:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8xnI-000829-Kc
	for lore@pengutronix.de; Wed, 15 Oct 2025 11:27:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2uS+UkqMpQH/VrEJlM/2aoVOkEu0iMOzQLdo2UbFBYY=; b=h312TVsKKysGmACubRGDK8+ljq
	T40ECQtp27LnW1DOiFRWHtyGauu+fy4M4atWGgiSpzX//q/N0krJeemJYaZGKkwGavIv6MRxZ/Ehx
	tCGBS7bj5T3/d6w8QuHok0BV1Wvhe33UjWG66TZT61QVv4NrztLYsEN5Cn1awnWrr6DRdIz/rpr0G
	CKFOB9z26VoBG9Eb7ozghncA08jYeDVNyRTDtL0qWpHDCYFSIVmk4T6QD5PItWhHfnN1k1zCCo+72
	pmwX1crwsQ4uYAWd5YTGMoMSDoHlUkruizb33abaxThKe+pbDadbNvnxDZu6xg5kUAFycbtS37Y/c
	GGtIkKwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xmr-000000018zC-1OLT;
	Wed, 15 Oct 2025 09:27:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xmo-000000018xq-14xP
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 09:27:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xmm-0007vA-NX; Wed, 15 Oct 2025 11:27:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xmm-003hWy-1l;
	Wed, 15 Oct 2025 11:27:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xmm-00000009tcm-1thU;
	Wed, 15 Oct 2025 11:27:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Oct 2025 11:27:02 +0200
Message-ID: <20251015092706.2358673-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251015092706.2358673-1-a.fatoum@pengutronix.de>
References: <20251015092706.2358673-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_022710_366904_3E47A50B 
X-CRM114-Status: GOOD (  10.67  )
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
Subject: [PATCH 2/2] devinfo: print / as device tree node for the root node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The root node has an empty name and thus %pOF returns an empty string.
This is confusing for the machine device, so print just a / in that
case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/devinfo.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index e132f88bf3f3..c87b30e84307 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -108,7 +108,11 @@ static int do_devinfo(int argc, char *argv[])
 			       dev_is_dma_coherent(dev) ? "true" : "false",
 			       dev->dma_coherent == DEV_DMA_COHERENCE_DEFAULT ? " (default)" : "");
 
-			printf("Device node: %pOF", dev->of_node);
+			if (dev->of_node->parent)
+				printf("Device node: %pOF", dev->of_node);
+			else
+				printf("Device node: %s", "/");
+
 			if (!main_dev) {
 			       printf(" (unpopulated)\n");
 			} else if (main_dev != dev) {
-- 
2.47.3



