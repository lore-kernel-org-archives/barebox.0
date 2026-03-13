Delivery-date: Fri, 13 Mar 2026 14:34:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fI-000DTs-0E
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:56 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eu-0000oE-Mb
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=76RDErhVze9lJeM/0hpmSz931+3WsuUeuxK2WXEx2Dc=; b=M01zcFAoYglfk8/er1e9S/gdA0
	/Vwm9GV4mlfrUs1jksvLbmyuuo7/wtQwyX5GO8sgeCYVWnImfo/HOT+7eOzYTV4sdBuUyQN5dvpVR
	v2Qe0L5eRmjwP8oOqFy5UXt9to/aGWZ/e3D8Xkh18kE50FBRG+dwuoTzIotfzuNbAZKA3Lenk6Lkq
	e4+cboUJrlzKtvuYvcr80noYfYdNz83GDhJTMWZd6JhiHzSrtiYA9J7j02dF7QVRjOBytDFHvE0Bh
	xRmzZ8C/B0Y+fvo/MGkNxW3CDOmekNQk9qnH9RQN0WWsGCum50QpdKLG+sQpVLbDtA8qle5AxMIx9
	WmBW11Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dZ-00000000GGv-2xCg;
	Fri, 13 Mar 2026 13:33:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dD-00000000Ff3-20lO
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=76RDErhVze9lJeM/0hpmSz931+3WsuUeuxK2WXEx2Dc=; b=KjgogYozNP0kUXYmU35xhTYQV3
	MWF6+2VF7c4euvUUfJi8aWwbrcuJbXtqXsb2H/67+Z+QimkPfWQ6p8OdNo2uGqnjUG6ihygUth3OF
	Z5qXZehbl8h33v2UnsfD2AqVS4rgi7ZbGfGiUxXdPRaHgrGvDieX2koB338S5SxDO7bB6ZQfDBNWr
	VLWTeURdYCqCIbSFZb7hHLEo1jguxCS1Nb7v1DomUwmMY+ysIeelRIb3y2zXX+2GBnazvZA6VsB4K
	ztTOq7j2WMrotda9M38I55HLUg4pN6R++hnVTdtLrGrbQjBcNfrXdvo1DP8hyzyOEytdGdOCDLLNH
	7w+2aVWA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-0000000D9wG-2bnA
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0006se-VL; Fri, 13 Mar 2026 14:32:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005U7-2Q;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-3FQ6;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:18 +0100
Message-ID: <20260313132631.2257573-35-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133240_746445_B7135C42 
X-CRM114-Status: UNSURE (   9.13  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 34/58] firmware: xilinx-fpga: fix double free in probe error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When firmwaremgr_register() fails, free(mgr) is called before jumping
to out_unreg. But the out: label (which out_unreg falls through to)
also calls free(mgr), resulting in a double free.

Remove the redundant free(mgr) before the goto, since the cleanup
labels already handle it.

(cherry picked from commit ca5f610b9232256a5e50e9722c74d082df4b484b)

Fixes: 2f4a47ef53 ("Added support for Zynq 7000 FPGA firmware loading")
Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084253.3547270-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
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



