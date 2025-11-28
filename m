Delivery-date: Fri, 28 Nov 2025 21:10:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP4ni-005tkZ-1E
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 21:10:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP4nh-00085X-Rv
	for lore@pengutronix.de; Fri, 28 Nov 2025 21:10:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r1LSHHFu31WOALShFNHD2+FZBp305HFBnRiEI+bVEU8=; b=AlQqSjWaHaRXSD
	718u7wVHotA7vAdRQngvUQ2QuKqXIFrupmMov77RO4yDwaKxWzfESjWX2hJ3RYka+40TtdJxkc69C
	UoyOidoanqb8VJFoq8xBz788hrRBynYqRLQ82B99niuwqz3OOVs/X/ecPYttjaQ+M7waZUGZBVEx5
	+xbW4VIWMKQK/LCZyejQTs9l30ThGPXr3CC9L/Hh+F1xqtaT4eoedTZEVxKZwQtJt4tBiA6eZP+PM
	J4PbxNrqqs9DYkoUPr35zwxe5HCNypR1wrhAp4ZmXjoPFY4r0QoRVtMrbTWf4JDxVeBHyYoD895Pt
	BmkGZv1fjvjKR3U2HEFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP4n6-00000000sKE-0UW1;
	Fri, 28 Nov 2025 20:10:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP4n3-00000000sJU-25FY
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 20:10:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vP4n0-0007yw-6P; Fri, 28 Nov 2025 21:09:58 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 21:09:56 +0100
Message-ID: <20251128200957.361169-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_121001_537615_2CC00A5F 
X-CRM114-Status: UNSURE (   7.22  )
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
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
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
Subject: [PATCH] fixup! video: fsl-ldb: add ported driver from linux kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

video: fsl-ldb: fix unintended implicit fallthroughs

Coverity flagged this fallthroughs and they indeed look unintended.

Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fsl-ldb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/fsl-ldb.c b/drivers/video/fsl-ldb.c
index 3fca7867a2a3..0ab720032ccb 100644
--- a/drivers/video/fsl-ldb.c
+++ b/drivers/video/fsl-ldb.c
@@ -220,8 +220,10 @@ static int fsl_ldb_ioctl(struct vpl *vpl, unsigned int port,
 		break;
 	case VPL_UNPREPARE:
 		fsl_ldb_atomic_disable(fsl_ldb);
+		break;
 	case VPL_PREPARE:
 		fsl_ldb_atomic_enable(fsl_ldb, data);
+		break;
 	case VPL_GET_VIDEOMODES:
 		if (fsl_ldb->modes) {
 			struct display_timings *timings = data;
-- 
2.47.3



