Delivery-date: Wed, 29 Nov 2023 10:56:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8HIg-00D5o1-1G
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 10:56:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8HIf-0006PH-AM
	for lore@pengutronix.de; Wed, 29 Nov 2023 10:56:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DFZqvQX/DcO/3oroP21NrqSXXYaZ48n8tk1ipTqgCVo=; b=kPK9xmUXI//efJ8rj/MXk2ICdb
	j839afWyXM+coCtAdTHFFKLopE0SBYJ8ozyluLw3bYNvlduQ5VcJ8K8sJuciW2cGa0IBfZnlF0iWc
	ajnyGGoPRF5rFkPp3ltlZQ8K39/zcXxHQsPiPoROcU4cUAIWUkpM5ieSpjbbq6RmfCkqtWR0X7BYk
	mHKAccCTOS/utzSFRqgjchrInd/HUyK0Kwyy6Fb3bhO9gNTI79KRTBMCK4mPjeel71OVD2YUh8BNQ
	H/phq6goTkxRlb1VSm2UYgRNbUSZ33OycyVCRRq6DSWlQk7FIDSO4l7DKDmDLtlnSR4ts/KHN5luX
	k/hlJodQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HHO-007jhg-1g;
	Wed, 29 Nov 2023 09:54:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HHL-007jg8-2N
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 09:54:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r8HHI-00066s-3r
	for barebox@lists.infradead.org; Wed, 29 Nov 2023 10:54:44 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 29 Nov 2023 10:54:08 +0100
Message-Id: <20231129-v2023-08-0-topic-macb-v2-0-4dc2cb4d5d25@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEAKZ2UC/4WNQQ6DIBBFr2JYdxoGF0pXvUfjQmHQWRQMUGJjv
 HvRC3T330/++7tIFJmSeDS7iFQ4cfAV1K0RZhn9TMC2slBStYiqh3ImkD1IyGFlA+/RTCANtmQ
 1YqetqNs1kuPt8r6GygunHOL3uil4tv+MBStrNzrXtZPRWj5X8vMnx+B5u1sSw3EcP3Z4cXa/A
 AAA
To: barebox@lists.infradead.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=918;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=Kdb1WG4SBOkU53bV4kQJJ3lZnSZkmuc6W/I36VQJSvE=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFLTucKnnBA2ULq5eDfHRtc5E55uVv52/b7wi1mpuSu2bao7
 m9r9pKOUhUGMi0FWTJElcu0hjc3Cn3W+HD/PADOHlQlkCAMXpwBMxGAmwz+dCfWPYiqsdr5xeLTowJ
 kVxRNqvie0lEQ2XerW/Xkofv8Phn/mJ2R/TcuL2/DWqGbJ5LOnuTNFlRW8J/3eUvFu0bEyh1A2AA==
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_015447_776251_018004DA 
X-CRM114-Status: UNSURE (   5.83  )
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
Subject: [PATCH v2 0/2] net: macb: fix dma usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rx_buffer is only dma_alloc'ed but never properly flushed.
Fix that.

While at it, also use proper volatile access instead of sw barriers.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v2:
- change dma_map_single to DMA_FROM_DEVICE
- drop (unsigned long) casts in dma_sync_*
- rework writel/setbits/clearbits to keep semantics
- Link to v1: https://lore.barebox.org/20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de

---
Steffen Trumtrar (2):
      net: macb: fix dma_alloc for rx_buffer
      net: macb: convert to volatile accesses

 drivers/net/macb.c | 125 ++++++++++++++++++++++++++++++-----------------------
 1 file changed, 70 insertions(+), 55 deletions(-)
---
base-commit: 5f200dd534c848dfa5d948334b6373f0310b8f73
change-id: 20231128-v2023-08-0-topic-macb-0c13ed91179d

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



