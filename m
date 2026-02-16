Delivery-date: Mon, 16 Feb 2026 09:43:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCO-002G8Z-2Y
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:43:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCO-0001QM-Se
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:43:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xHE3C8SmKM4dj4B6SJnyueDAMNj2xEEzbJVYcJbwAWI=; b=gaeRimE8wlowy7VFuhLhtYT1rB
	W9v/GtmEo8Lc+ofLej6/s04aSx2ePvVlPFi0NhJQPWAOzgAx9FOVdhtXsDXmNrlM+1Ucd+ptboifa
	JP8uFAAoJNqKsJ2nDjf+WW+JU5WQ6glIXbnfV4kvm7X6sEAOHPwUv4KUHYKPvW+qo68Mz49U3EoKm
	nSoyaBkCvdmF1GU9zgs71M9EMa2Wax+bNxItrfP+nlk5ryszSkZoF0FXdvy1dX+rtTxBuraM0qV5Z
	ogY/0k+qq80KjQZnOdfMUAH7qrZfJpvYn6zVjqR8BOOpRpZS1Me5on1ydHI26hQ5BPMNG8S1qtT+U
	DWHj7TFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruC2-00000006Ali-0wS1;
	Mon, 16 Feb 2026 08:42:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruBz-00000006Ajh-3fUZ
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:42:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBy-00011W-6B; Mon, 16 Feb 2026 09:42:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBw-0012Bp-22;
	Mon, 16 Feb 2026 09:42:53 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBx-0000000Esrv-3g3B;
	Mon, 16 Feb 2026 09:42:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:42:17 +0100
Message-ID: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004255_934882_16CA0A27 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-1.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/12] firmware: xilinx-fpga: fix double free in probe error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When firmwaremgr_register() fails, free(mgr) is called before jumping
to out_unreg. But the out: label (which out_unreg falls through to)
also calls free(mgr), resulting in a double free.

Remove the redundant free(mgr) before the goto, since the cleanup
labels already handle it.

Fixes: 2f4a47ef53 ("Added support for Zynq 7000 FPGA firmware loading")
Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/xilinx-fpga.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/firmware/xilinx-fpga.c b/drivers/firmware/xilinx-fpga.c
index 18d4e62ed1c3..7822521ef982 100644
--- a/drivers/firmware/xilinx-fpga.c
+++ b/drivers/firmware/xilinx-fpga.c
@@ -334,10 +334,8 @@ static int xilinx_fpga_probe(struct device *dev)
 	fh->device_node = dev->of_node;
 
 	ret = firmwaremgr_register(fh);
-	if (ret != 0) {
-		free(mgr);
+	if (ret != 0)
 		goto out_unreg;
-	}
 
 	return 0;
 out_unreg:
-- 
2.47.3



