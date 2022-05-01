Delivery-date: Sun, 01 May 2022 20:28:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlEIu-005C6u-T0
	for lore@lore.pengutronix.de; Sun, 01 May 2022 20:28:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlEIs-0001Nd-3t
	for lore@pengutronix.de; Sun, 01 May 2022 20:28:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0MkGPqkQrFNTiaMV1BCQ0WBhT+eKrukT+0XHqdzIeUc=; b=XJn7+3aQiIn/53
	p7U68f1BmLKEzBHe9fXTt2we9Qc/+X+Vapf4zMU/+QxB08npaEOflmB93LaBeTicYx0NebjE9aVRK
	a85g0jro8G1+xoQrbeVaoGu+cWfC/QqOH2/h9gyPsu4lhM0BD4jvl3h+q5OxyRqAeQdDcE/YXZKl+
	M7RxNbNSWVPtHY/zvHtbEEz3/qOAaf+kM8X8bC308lbCS5WQBKxVDnIoFkeXDwgWzrqbSEmxEDXaS
	2qvcTtibN8/Y3ApEdc79+ey84gNjrKWmZ4d78sf0RkgEuPoWbwKUwB0Uo4Uxn9xgiviTJMLPBSPjH
	SKnx7G1tXSCiyiNOND5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlEH7-00GhGE-Bs; Sun, 01 May 2022 18:26:29 +0000
Received: from lx20.hoststar.hosting ([168.119.41.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlEH2-00GhFl-Md
 for barebox@lists.infradead.org; Sun, 01 May 2022 18:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=emfend.at; 
 s=mail;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VwZXyLaVymx0Gh5yKs9rzje0D9U4UzK8k1Y2iU3liL0=; b=jywkT7uizwkN3FPBXUrnbVahR3
 uOoNndTbZYD6yRECi34Eid2LCCrva7aAgZl+eeBaI1jtz7bGlJKS5x2oJU17CVOYNdVJbrcA64lEF
 qP1qtmgmH9uFM+wzEN9PxDDCHsVb1nlfaC8o+U5xpST29ZQKmKhpp5b2KQ6jCLHuFhok=;
Received: from 194-208-208-245.tele.net ([194.208.208.245]:62715
 helo=localhost.localdomain)
 by lx20.hoststar.hosting with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <matthias.fend@emfend.at>) id 1nlEGs-005UG1-Be
 for barebox@lists.infradead.org; Sun, 01 May 2022 20:26:14 +0200
From: Matthias Fend <matthias.fend@emfend.at>
To: barebox@lists.infradead.org
Date: Sun,  1 May 2022 20:26:07 +0200
Message-Id: <20220501182607.38125-1-matthias.fend@emfend.at>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220501_112625_080240_5C97B25C 
X-CRM114-Status: GOOD (  10.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] firmware: zynqmp-fpga: do not load PL with ONLY_BIN flag
 unless necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since pmu-fw release 2018.3, the ZYNQMP_FPGA_BIT_ONLY_BIN flag is no
longer used. This wasn't a problem for a while, but in newer versions a
validation sequence will fail if this flag is set. This means that the PL
can no longer be loaded.

Do not set the ZYNQMP_FPGA_BIT_ONLY_BIN flag unless absolutely necessary
to avoid this problem.

Signed-off-by: Matthias Fend <matthias.fend@emfend.at>
---
 drivers/firmware/zynqmp-fpga.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 63d7398fd..db34ac2be 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -261,9 +261,10 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		goto err_free_dma;
 	}
 
-	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
+	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) {
+		flags &= ~ZYNQMP_FPGA_BIT_ONLY_BIN;
 		buf_size = body_length;
-	else
+	} else
 		buf_size = addr + body_length;
 
 	status = mgr->eemi_ops->fpga_load((u64)addr, buf_size, flags);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

