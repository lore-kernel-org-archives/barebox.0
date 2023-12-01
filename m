Delivery-date: Fri, 01 Dec 2023 14:53:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r93xa-00G2E2-0T
	for lore@lore.pengutronix.de;
	Fri, 01 Dec 2023 14:53:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r93xa-0005uc-6L
	for lore@pengutronix.de; Fri, 01 Dec 2023 14:53:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sJU91GV4FI28hEd76RTi+3FrbdI99hRjZpex6/i3tB4=; b=klfskZYJh3dVSp
	X9C2/iE+H1Gy/HmJi6z4A2Zmm1IstFyQH9g4mBgMhauAl5W19QJxeUZxJK3EnH9BrWBWn2akmoOP6
	7/OuK3bcTGnqXO6wLOqBKZ25pcUqTwEqbzKkoslW5C1HrO4y6/uMybI22N6O/71Hk/ruenrjeIvJ+
	ZOTytpylpMpytoSlL1OUkKY6WlE74yMdt07ktzKpsVZ89LgMvgcrLdjdRJ1hjOONXLwcI+kRWZMvn
	tmY13CW3VAH2+NJ/+aXIsujvqNvMZJ9YkrXHZijlQM2bYVQd9VjE2H1FHiR/r4iIJrHzG29gooyq5
	eiOz+lCT6OLSCdTNKWWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r93w5-00Drcd-1k;
	Fri, 01 Dec 2023 13:52:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r93w0-00Drad-2T
	for barebox@lists.infradead.org;
	Fri, 01 Dec 2023 13:52:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r93vv-0005Sc-P3; Fri, 01 Dec 2023 14:51:55 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 01 Dec 2023 14:51:26 +0100
Message-Id: <20231201-v2023-08-0-topic-macb-v4-0-b4f5d64de1ad@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN7kaWUC/43NSw7CIBCA4as0rMXw6AtX3sO4AAZaFtIGKqlpe
 ndpVyZqdDf/JPPNgqIJzkR0KhYUTHLRDT5HeSiQ7qXvDHaQGzHCOKWsxWmbMGkxwdMwOo1vUit
 MNOUGBKWNAJRvx2Csm3f3cs3duzgN4bG/SXTb/hITzS2stLbhSgtBzqPx3X0Kg3fzEQza2MReK
 fGNYrlL0EyrEipg1UeK/0XlFa4rCTWolmfzjVrX9QkHoInfVQEAAA==
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1436;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=Fo8C/+r2ficJQlg4XfyGOP34bviOZ26XZB3WLEPwycc=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFIzn7zRWSP0MldEj6FH+V+dRtLzSw73bnVxpzRtqH/dV/mf
 0VSjo5SFQYyLQVZMkSVy7SGNzcKfdb4cP88AM4eVCWQIAxenAEzkjgjD/7SJxkZHYo6nnlnH5jjHoe
 hJzJewVR+aW9uLxR212627Qhn+h/XMPjAz6YD0p3OcB1Z9Uun6qs8wWz64q2bqBOtVE9V+sgMA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_055200_805155_45E56EAE 
X-CRM114-Status: UNSURE (   6.12  )
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
Subject: [PATCH v4 0/3] net: macb: fix dma usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rx_buffer is only dma_alloc'ed but never properly flushed.
Fix that.

While at it, also use proper volatile access instead of sw barriers.

Also, redefine PKTSIZE to a sensible multiple of 64 bytes.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v4:
- align PKTSIZE with cacheline size
- minor style changes
- Link to v3: https://lore.barebox.org/20231129-v2023-08-0-topic-macb-v3-0-65ad6db834dc@pengutronix.de

Changes in v3:
- fix dma_unmap_single direction
- dma_map_single packet in macb_send()
- Link to v2: https://lore.barebox.org/20231129-v2023-08-0-topic-macb-v2-0-4dc2cb4d5d25@pengutronix.de

Changes in v2:
- change dma_map_single to DMA_FROM_DEVICE
- drop (unsigned long) casts in dma_sync_*
- rework writel/setbits/clearbits to keep semantics
- Link to v1: https://lore.barebox.org/20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de

---
Steffen Trumtrar (3):
      net: macb: fix dma_alloc for rx_buffer
      net: macb: convert to volatile accesses
      include: net: align PKTSIZE to 64 bytes

 drivers/net/macb.c | 132 +++++++++++++++++++++++++++++------------------------
 include/net.h      |   4 +-
 2 files changed, 75 insertions(+), 61 deletions(-)
---
base-commit: 5f200dd534c848dfa5d948334b6373f0310b8f73
change-id: 20231128-v2023-08-0-topic-macb-0c13ed91179d

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



