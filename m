Delivery-date: Tue, 22 Jun 2021 09:47:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvb7p-0006yu-Fa
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 09:47:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvb7o-0005tS-Bp
	for lore@pengutronix.de; Tue, 22 Jun 2021 09:47:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b08DqDJEgSIyLB2Y+DAuGrsaTwAb/1NiWyIyxEG/46o=; b=xGvpo8/kTlZ1Ey
	sunLlF60+ZpHeRSZswBJwd0UV76K3C/Uysds+CBEf6CN2T0fSkr1pA0VgXuXGv5vAWJ5uIOL97WkM
	Lkj/M9Jx5fK3KTp0j8LbVP2oO/ezgdx4EPUNhv9picOffE1IrS47wotQ+WTzCMb2KJCcwmJQ2jm/m
	oV+aGxBAVJB8mY0um/0vATEHOyq2gsqYedOyLaTsG6ZVz8SL5HyJ9ym7dmvCM5v0NMZHOAJJgBAEt
	jvEtCyaJcJ03kIUb0BiSi3Oi6etYNq2UFbhyBp6vbYtbAT3KlCWwPjUzcobXN5gBoGlCxTqtAhXRs
	8Sbelxxl4vO0BUaP7Svg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvb6Z-0065Fj-9B; Tue, 22 Jun 2021 07:45:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvb6S-0065EQ-0o
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 07:45:49 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvb6Q-0005dy-CL; Tue, 22 Jun 2021 09:45:46 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvb6Q-0004Tz-3w; Tue, 22 Jun 2021 09:45:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 22 Jun 2021 09:45:45 +0200
Message-Id: <20210622074545.17059-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_004548_099093_A8E931CF 
X-CRM114-Status: GOOD (  15.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc3: Use _io functions on dma coherent memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On both ARM and ARM64 we map DMA coherent memory the same as IO memory.
This has the effect that unaligned accesses are not possible on DMA
coherent memory. The dwc3 gadget driver uses memset() and memcpy() on
that memory which may generate unaligned accesses and result in data
aborts. Use memcpy_fromio() and memset_io() instead which are desgined
to work on IO space and thus do not generate unaligned accesses.
The alternative would be to map DMA coherent memory as MT_NORMAL_NC
instead of MT_DEVICE_nGnRnE, but that require us to add memory
barriers to drivers which we currently do not have. SO instead of
risking regressions in drivers we take the easy way out and avoid
unaligned accesses in the dwc3 driver.

In this concrete case the dwc3 driver generated unaligned accesses
on a Rockchip RK3568 ARM64 system. The driver copies data out of the
receive queue. In my case first 4 bytes were copied, both source and
target were aligned. The second access then copied more data beginning
at the place where the first memcpy stopped. On this 4byte aligned
address memcpy generated an 8byte read access which resulted in a data
abort. On an ARM32 system this might not be a problem as that place,
while not 8byte aligned, is still 4byte aligned, enough for a 32bit
system.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/gadget.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
index f416acc999..49deaf4d98 100644
--- a/drivers/usb/dwc3/gadget.c
+++ b/drivers/usb/dwc3/gadget.c
@@ -643,14 +643,14 @@ static int __dwc3_gadget_ep_enable(struct dwc3_ep *dep, unsigned int action)
 		/* Initialize the TRB ring */
 		dep->trb_dequeue = 0;
 		dep->trb_enqueue = 0;
-		memset(dep->trb_pool, 0,
+		memset_io(dep->trb_pool, 0,
 		       sizeof(struct dwc3_trb) * DWC3_TRB_NUM);
 
 		/* Link TRB. The HWO bit is never reset */
 		trb_st_hw = &dep->trb_pool[0];
 
 		trb_link = &dep->trb_pool[DWC3_TRB_NUM - 1];
-		memset(trb_link, 0, sizeof(*trb_link));
+		memset_io(trb_link, 0, sizeof(*trb_link));
 
 		trb_link->bpl = lower_32_bits(dwc3_trb_dma_offset(dep,
 								 trb_st_hw));
@@ -2908,10 +2908,10 @@ static void dwc3_gadget_poll(struct usb_gadget * g)
 	buf = xzalloc(count);
 
 	amount = min(count, evt->length - evt->lpos);
-	memcpy(buf, evt->buf + evt->lpos, amount);
+	memcpy_fromio(buf, evt->buf + evt->lpos, amount);
 
 	if (amount < count)
-		memcpy(buf + amount, evt->buf, count - amount);
+		memcpy_fromio(buf + amount, evt->buf, count - amount);
 
 	evt->lpos = (evt->lpos + count) % evt->length;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

