Delivery-date: Tue, 28 Nov 2023 17:31:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r80zO-00CFnG-1z
	for lore@lore.pengutronix.de;
	Tue, 28 Nov 2023 17:31:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r80zO-0000vM-N0
	for lore@pengutronix.de; Tue, 28 Nov 2023 17:31:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F66FdjYbHDBvlIz8Gxu9T1QIXAzG7lOmDjULFPrP86w=; b=tRuSgR8DwgbHpNiz4TBYlU6oqc
	/ESlSMbYMptCvJSyvVyBY6QAhOqM3XJqivIyr0htefAG80+H/nFuUUzhoVLSjKrce/9L/0B5SS/jT
	DwKJ8Ajz9e+eVNRBWMNGdkvKxTl8/22ujTpGRLw5YCo9HYSPPmH4Zt7mQR1D2IEp8kn1BNFmpg4rv
	43s8kwsDc8FYq02u1yWOECJkFykWtlE+/GyGjHOlPzztdPCqBaceWCjCqVCRuU//bGSf6NcnIHBYe
	96ZuzRbJTBX3nssPuMSzHcE4oNsgWcSuxg/lfiz4UA0cmuouMS8uf13a1WS0bRs+Icw1LwqKjjbGE
	84ovH6rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r80y0-005ocR-2Z;
	Tue, 28 Nov 2023 16:29:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r80xy-005oax-1A
	for barebox@lists.infradead.org;
	Tue, 28 Nov 2023 16:29:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r80xv-0000W2-Lm
	for barebox@lists.infradead.org; Tue, 28 Nov 2023 17:29:39 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 28 Nov 2023 17:29:21 +0100
Message-Id: <20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGEVZmUC/x2MMQ6AIAwAv2I624TiIPgV46BQtYNowBgTw99Ft
 7vh7oHEUThBVz0Q+ZIkeyhCdQVuHcPCKL44aKUbIm3w+giVQYXnfojDbXQTKkcNe0vUWg+lPSL
 Pcv/ffsj5BWD6pf9nAAAA
To: barebox@lists.infradead.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=650;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=YMq0I8EdAkDXV1Pk/RvTldIuXlgwP3p0KE8zYDjheBs=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFLTRNOtl99n2VSnXJxRFvJko3F+ZUfK8yDJn3HSaUcanvT5
 flrbUcrCIMbFICumyBK59pDGZuHPOl+On2eAmcPKBDKEgYtTACYyx56RYevbugjul1qxU/+XThV2vb
 vxTPp9C4+AGfFyzqH/F2XP0WD4p/Qmm2W1zK7XL1h3bE5XlVY9/OzWfce1LB4WVkv53xbWswEA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_082942_403389_7ACAACD6 
X-CRM114-Status: UNSURE (   4.65  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] net: macb: fix dma usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rx_buffer is only dma_alloc'ed but never properly flushed.
Fix that.

While at it, also use proper volatile access instead of sw barriers.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Steffen Trumtrar (2):
      net: macb: fix dma_alloc for rx_buffer
      net: macb: convert to volatile accesses

 drivers/net/macb.c | 90 ++++++++++++++++++++++++++++++------------------------
 1 file changed, 50 insertions(+), 40 deletions(-)
---
base-commit: 5f200dd534c848dfa5d948334b6373f0310b8f73
change-id: 20231128-v2023-08-0-topic-macb-0c13ed91179d

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



