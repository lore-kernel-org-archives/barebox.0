Delivery-date: Wed, 29 Nov 2023 12:35:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Iqr-00DCO0-24
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 12:35:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Iqr-0004Tq-N6
	for lore@pengutronix.de; Wed, 29 Nov 2023 12:35:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fwjGTNyDtQJLETnKmPO9TNNlcry2S4/FwnwcpMseCEM=; b=SAAHqzKoGq2mjRml6jDYluK5QT
	Q7EMUwfbrTlTy9ipzoxkkBuAbd8vO+B9q1hZm3Zm+uWAYagCRf0x8ShmZ1B8DXtkeeK+1uGz2EgC/
	Zd4D3o0V2C+wsix6w8SRu+4wDPDzAnhl7iI0jIjZ1S8SMqPsvodxww1wlp+HIk6bQ+LRA5ceXss1e
	O03HkzLshMI5SLNoXQkj7XLJAVSRRxRDWlFQDzQStlEdwenRqfSTD+/XjCpSpDQxZQ1UWuWqnaK8n
	nsZTQMK2w96eeCDYQCbk6x2HARN0qWQ7UeBC/deSyFeLXAAUdQB3zPzc+T1dfkKdpZIxjo1UMxPX9
	7zdMA0Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8IpY-0088Ud-28;
	Wed, 29 Nov 2023 11:34:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8IpV-0088TS-1U
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 11:34:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r8IpQ-00049f-Bf
	for barebox@lists.infradead.org; Wed, 29 Nov 2023 12:34:04 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 29 Nov 2023 12:33:46 +0100
Message-Id: <20231129-v2023-08-0-topic-macb-v3-0-65ad6db834dc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJohZ2UC/4XNSw6CMBCA4auQrq3pAwJ15T2MC2inMAtb0tYGQ
 7i7hZWJMe7mn2S+WUmEgBDJpVpJgIwRvSshTxXRU+9GoGhKE8GE5Fx0NO8TZR1lNPkZNX30eqB
 McwlGcd4qQ8rtHMDicri3e+kJY/LhdbzJfN/+EzMvrWxvbSsHrRS7zuDGZwre4XI2QHY2i09K/
 aJE6dpooYfaNEY0X9S2bW/6Q52ZCgEAAA==
To: barebox@lists.infradead.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1114;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=bf6suSGO4jEpEg/ByMvJnlyot6nGMTZ4pJsSfo2O0P8=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFLTFRfev3GE9wJDQoX+npmykY4XXdKVbU8pzwq/qtQpckPy
 4lTljlIWBjEuBlkxRZbItYc0Ngt/1vly/DwDzBxWJpAhDFycAjCR6zsY/grdm/Bh+r3T7y0Z1nufvX
 vjlZhO/bnC6e9OfPiT8W/xiz0XGX6zHHOe5Vx/0WyPqMXqbx23Jwp9KZ17nvf8P7kNyY+6ZutzAgA=
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_033409_502251_CFB55ADB 
X-CRM114-Status: UNSURE (   6.17  )
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
Subject: [PATCH v3 0/2] net: macb: fix dma usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rx_buffer is only dma_alloc'ed but never properly flushed.
Fix that.

While at it, also use proper volatile access instead of sw barriers.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
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
Steffen Trumtrar (2):
      net: macb: fix dma_alloc for rx_buffer
      net: macb: convert to volatile accesses

 drivers/net/macb.c | 134 ++++++++++++++++++++++++++++++-----------------------
 1 file changed, 77 insertions(+), 57 deletions(-)
---
base-commit: 5f200dd534c848dfa5d948334b6373f0310b8f73
change-id: 20231128-v2023-08-0-topic-macb-0c13ed91179d

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



