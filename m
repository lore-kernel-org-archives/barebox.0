Delivery-date: Wed, 24 Jul 2024 11:48:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWYbM-002QmV-1b
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 11:48:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWYbL-0005ua-Rs
	for lore@pengutronix.de; Wed, 24 Jul 2024 11:48:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zheTUcBfSKmlQ8XCDf/bWDKSQdt4ayXNN8rYShNSKXM=; b=jMZzYIT4tiMLd6rifTY8QfN8P8
	Ib1j6MODYB4NYo/VEaIyjgY68A5py8AYoumcaKp9tSRNAjyYC9UQTryi6U3RO1UAFOe9lvqKISMBP
	7rp6B4BaVrAKTDvdMUXjKFSwU4xI8dkJ4V132+CLlSPVxY/FMuOEWiG5dbURRBFKPgo7XfRvAmKk1
	LH6J7YH58W+YsbY1x9WzjsoeL6FNxEm0IA5gnY/U+xPwxw97SkkIkTRvPWdE2tCfMjTomVwkZAAKc
	ocfGZ+ThAOHjsZMywTz6GLwK7L0tm7tGpYqTt0zEKFrWFtMQYux0Cruj8yrdmg87tbJHIWuFZipOC
	LMZgFlHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYax-0000000Eyrt-2CuJ;
	Wed, 24 Jul 2024 09:47:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYau-0000000Eyqj-2Kn1
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 09:47:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYat-0005kh-AL; Wed, 24 Jul 2024 11:47:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYas-001pNI-Tk; Wed, 24 Jul 2024 11:47:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYas-003jUl-2c;
	Wed, 24 Jul 2024 11:47:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Jul 2024 11:47:32 +0200
Message-Id: <20240724094732.886245-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240724094732.886245-1-a.fatoum@pengutronix.de>
References: <20240724094732.886245-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_024736_635664_05FC3468 
X-CRM114-Status: GOOD (  14.64  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] usb: gadget: fsl_udc: dma_map buffers instead of using dma_sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_DMA_API_DEBUG depends on DMA buffers being mapped with
dma_map_single before ownership is switched with dma_sync_single.

As this is currently not done, CONFIG_DMA_API_DEBUG reports a lot of
false positives when the driver is enabled. Fix it by using
usb_gadget_map_request which internally calls dma_map_single.

This fixes the false positives, aligns us with what the Linux driver
is doing and reduces overhead when unmapping the buffer for an IN
target endpoint:

Previously with DMA_BIDIRECTIONAL, we always invalidated buffers
when taking back ownership for the CPU. This is unnecessary when
unmapping a buffer for an IN endpoint as the direction is DMA_TO_DEVICE
and we won't be reading back the result.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/udc/fsl_udc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/gadget/udc/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
index 41de44b30d12..e1d0d0b48272 100644
--- a/drivers/usb/gadget/udc/fsl_udc.c
+++ b/drivers/usb/gadget/udc/fsl_udc.c
@@ -197,8 +197,7 @@ static void done(struct fsl_ep *ep, struct fsl_req *req, int status)
 		dma_free_coherent(curr_td, 0, sizeof(struct ep_td_struct));
 	}
 
-	dma_sync_single_for_cpu(udc->gadget.dev.parent, (unsigned long)req->req.buf,
-				req->req.length, DMA_BIDIRECTIONAL);
+	usb_gadget_unmap_request(&udc->gadget, &req->req, ep_is_in(ep));
 
 	if (status && (status != -ESHUTDOWN))
 		VDBG("complete %s req %p stat %d len %u/%u",
@@ -861,7 +860,7 @@ fsl_ep_queue(struct usb_ep *_ep, struct usb_request *_req)
 	struct fsl_ep *ep = container_of(_ep, struct fsl_ep, ep);
 	struct fsl_req *req = container_of(_req, struct fsl_req, req);
 	struct fsl_udc *udc;
-	int is_iso = 0;
+	int ret, is_iso = 0;
 
 	/* catch various bogus parameters */
 	if (!_req || !req->req.complete || !req->req.buf
@@ -885,8 +884,9 @@ fsl_ep_queue(struct usb_ep *_ep, struct usb_request *_req)
 
 	req->ep = ep;
 
-	dma_sync_single_for_device(udc->gadget.dev.parent, (unsigned long)req->req.buf,
-				   req->req.length, DMA_BIDIRECTIONAL);
+	ret = usb_gadget_map_request(&ep->udc->gadget, &req->req, ep_is_in(ep));
+	if (ret)
+		return ret;
 
 	req->req.status = -EINPROGRESS;
 	req->req.actual = 0;
-- 
2.39.2



