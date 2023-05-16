Delivery-date: Tue, 16 May 2023 10:23:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pypyG-002ivw-LD
	for lore@lore.pengutronix.de; Tue, 16 May 2023 10:23:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pypyD-0006Qf-KM
	for lore@pengutronix.de; Tue, 16 May 2023 10:23:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FV/e2LSI6wXZ2BrRKu1qXNVwQOgnbATxqa/SfTewITY=; b=GQDinCT6wqE/UFtCFDdu/ZexRT
	dhqzyeHaoHSf58DwJY8LpZ3tOSKZhPfpr76T6nth5kBJh5mgaRW+0ICSs96LINlgBc3ZtFIQspNMj
	rbOYDyvsd03pduQ/lZMEbXGrS6f+41YjdyFUwIyaIyzzLf7622vS1J4cOVCRUqbIGvAiIA+Zjnoen
	js6pW8qvb+ffIsA15BtypqpDLJGrCQIkHH7l5lCotLrhQau40PnumOKP3WK2RcWiV4CA2xbpX8Lcm
	THa3b/7MW7Saxn8hFf+6CYgygD5mafIzoRHQhqxgDAovHz2YXLViBmRcPkHLuMtt7GOPWNI5Wttin
	C4MaKljQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pypwn-004pgu-3D;
	Tue, 16 May 2023 08:22:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pypwk-004pf1-2v
	for barebox@lists.infradead.org;
	Tue, 16 May 2023 08:22:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pypwY-0006Hy-Sf; Tue, 16 May 2023 10:22:02 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pypwY-000YtM-7x; Tue, 16 May 2023 10:22:02 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pypwX-006rPj-7I; Tue, 16 May 2023 10:22:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 May 2023 10:22:00 +0200
Message-Id: <20230516082200.1635283-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_012214_948573_0D80C80F 
X-CRM114-Status: UNSURE (   9.36  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] i.MX: HABv4: Hide NULL pointers from optimizer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We are derefencing pointers which are in the zero page, consequently gcc
warns us with:

drivers/hab/habv4.c: In function 'imx6_hab_get_status':
drivers/hab/habv4.c:580:16: warning: array subscript 0 is outside array bounds of 'const struct habv4_rvt[0]' [-Warray-bounds]

Yes, we really want to derefence these pointers, so silence the warning
with OPTIMIZER_HIDE_VAR().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/habv4.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 252e38f655..ca26773bf8 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -564,14 +564,17 @@ int imx6_hab_get_status(void)
 	const struct habv4_rvt *rvt;
 
 	rvt = (void *)HABV4_RVT_IMX6_OLD;
+	OPTIMIZER_HIDE_VAR(rvt);
 	if (rvt->header.tag == HAB_TAG_RVT)
 		return habv4_get_status(rvt);
 
 	rvt = (void *)HABV4_RVT_IMX6_NEW;
+	OPTIMIZER_HIDE_VAR(rvt);
 	if (rvt->header.tag == HAB_TAG_RVT)
 		return habv4_get_status(rvt);
 
 	rvt = (void *)HABV4_RVT_IMX6UL;
+	OPTIMIZER_HIDE_VAR(rvt);
 	if (rvt->header.tag == HAB_TAG_RVT)
 		return habv4_get_status(rvt);
 
-- 
2.39.2



