Delivery-date: Sun, 23 Aug 2026 00:35:33 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxuJI-00689F-1f
	for lore@lore.pengutronix.de;
	Sun, 23 Aug 2026 00:35:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B846520128F
	for <lore@pengutronix.de>; Sun, 23 Aug 2026 00:35:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wLvecaWB;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=JhCepZxP;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jWP5ErOlSo5lWrJ0O+bqvQYgAVX74sWvxewKeiZrGp8=; b=wLvecaWBNYT03KxFRvL8Gn60e5
	7rRhQffh69nG59nuV8QtmyrVBxNoToRM6h5AyHJ9Dl8R8dghYK4pKfn0pO9Wx9QzRKXoev1bGFX+x
	uEwjS884+C6QVzd8q/p5TaWWiq3PiM+SRGYi7Q6kpAkfU7P1OhWJ7Qh6gCKYe88Ko2hutg1SGXAEk
	HRV43y+FYhvGcNuvuOrdIyWkLLDKGsv3CZaq+NjaPovceQGfHunjbGK6uFIVAt0mm4w8jjc6Jq9wc
	2x8n7fC5RdiFG6f10ShlxeHBt0itrfQVZeo/bl1YB8pZjo4F+2gQGGzWakowfVDDenbVncsYoBSA8
	aWcuj0Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxuI2-0000000Eqrx-2uLx;
	Sat, 22 Aug 2026 22:34:14 +0000
Received: from omta40.uswest2.a.cloudfilter.net ([35.89.44.39])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxuHy-0000000Eqpy-3B7y
	for barebox@lists.infradead.org;
	Sat, 22 Aug 2026 22:34:13 +0000
Received: from eig-obgw-6001b.ext.cloudfilter.net ([10.0.30.143])
	by cmsmtp with ESMTPS
	id xoH8wjiJEhJKMxuHwwVfGc; Sat, 22 Aug 2026 22:34:08 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id xuHwwGdr4X7LqxuHwwxTHO; Sat, 22 Aug 2026 22:34:08 +0000
X-Authority-Analysis: v=2.4 cv=F8hXdrhN c=1 sm=1 tr=0 ts=6a8a23e0
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10 a=wTo936TsAAAA:8
 a=Eq6gr6pl_Pi9BOxE5zkA:9 a=QEXdDO2ut3YA:10 a=J3I8QpufI4RFOXkfet32:22
 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=jWP5ErOlSo5lWrJ0O+bqvQYgAVX74sWvxewKeiZrGp8=; b=JhCepZxPigDClQjFXIj6T5O/Z2
	Pojhiy2uILR8gmOhQMf3ws3SFdQQ2PKYkZHGr71hKOoN+EEX+wnfr06F0k44E0uid1Wc8PAh/XMgd
	wBYUsXxFE3364JN4nJjkFpf7Om+OssZpd3KxCS+ZydJ7o5DEuPaQkjgRevSquN2I6J7I=;
Received: from [71.238.14.13] (port=59294 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wxuHv-00000003pp0-3OQ8;
	Sat, 22 Aug 2026 16:34:07 -0600
From: Stephano Cetola <stephano@cetola.net>
Date: Sat, 22 Aug 2026 15:34:01 -0700
Subject: [PATCH 2/5] usb: xhci: reset_ep: wait for real completion, not the
 caller's timeout
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260822-send-xhci-fixes-v1-2-22e1de3be715@cetola.net>
References: <20260822-send-xhci-fixes-v1-0-22e1de3be715@cetola.net>
In-Reply-To: <20260822-send-xhci-fixes-v1-0-22e1de3be715@cetola.net>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.15.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2192.bluehost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cetola.net
X-BWhitelist: no
X-Source-IP: 71.238.14.13
X-Source-L: No
X-Exim-ID: 1wxuHv-00000003pp0-3OQ8
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:59294
X-Source-Auth: stephano@cetola.net
X-Email-Count: 11
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfMoyvHmKZHFwBIthIA+A0MchXMLiUsl3SeK14xe6CQmfvoXVcMrSCv/lEnU/vFKFwAg7ilSuQaSXM/5QdQccLxqveMJLnricaE7K4H6NqC6qGE4lAMO7
 +XLpMroP40BUk9og3X23UpL/JbztVOGuKFOgC3Ilgi5dTDDPBkilszNuwDFBw/xIrdUvcdzXOyglWYjc7uIQN28KTFHhaWVGImg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_153410_824206_DEB3584A 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  reset_ep() recovers a halted endpoint by issuing a Reset Endpoint
    command followed by a Set TR Dequeue Pointer command, each followed by a
   wait for the command's completion event. It waited using the [...] 
 
 Content analysis details:   (-0.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [35.89.44.39 listed in list.dnswl.org]
  1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
                 [Blocked - see <https://www.spamcop.net/bl.shtml?35.89.44.39>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: whghfgwzr9swnadiqfunmdy51on4pdyp
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[cetola.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	R_DKIM_PERMFAIL(0.00)[cetola.net:s=default];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[71.238.14.13:received];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_SOURCE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[35.89.44.39:received];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,cetola.net:~]
X-Rspamd-Queue-Id: B846520128F

reset_ep() recovers a halted endpoint by issuing a Reset Endpoint
command followed by a Set TR Dequeue Pointer command, each followed
by a wait for the command's completion event. It waited using the
caller's timeout_ms.

For an interrupt endpoint poll, timeout_ms is 0 (a non-blocking
check for pending data). Passed through to reset_ep(), that same 0ms
value gives the actual recovery commands almost no time to complete.
xhci_wait_for_event() gives up immediately, reset_ep() returns before
the halt is ever cleared, and the endpoint stays halted forever no
matter how many times the caller retries.

Recovering from a halt is a command completion wait, not a data
transfer wait, and should not inherit the transfer's timeout.

Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
 drivers/usb/host/xhci-ring.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index bd38f0de91..0b11da88a2 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -506,7 +506,7 @@ union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected,
  * Send reset endpoint command for given endpoint. This recovers from a
  * halted endpoint (e.g. due to a stall error).
  */
-static void reset_ep(struct usb_device *udev, int ep_index, unsigned int timeout_ms)
+static void reset_ep(struct usb_device *udev, int ep_index)
 {
 	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
 	struct xhci_ring *ring =  ctrl->devs[udev->slot_id]->eps[ep_index].ring;
@@ -517,7 +517,7 @@ static void reset_ep(struct usb_device *udev, int ep_index, unsigned int timeout
 	dev_info(&udev->dev, "Resetting EP %d...\n", ep_index);
 
 	xhci_queue_command(ctrl, 0, udev->slot_id, ep_index, TRB_RESET_EP);
-	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, timeout_ms);
+	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
 	if (!event)
 		return;
 
@@ -528,7 +528,7 @@ static void reset_ep(struct usb_device *udev, int ep_index, unsigned int timeout
 	addr = xhci_trb_virt_to_dma(ring->enq_seg,
 		(void *)((uintptr_t)ring->enqueue | ring->cycle_state));
 	xhci_queue_command(ctrl, addr, udev->slot_id, ep_index, TRB_SET_DEQ);
-	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, timeout_ms);
+	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
 	if (!event)
 		return;
 
@@ -706,7 +706,7 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
 	 * have dealt with whatever caused the error.
 	 */
 	if ((le32_to_cpu(ep_ctx->ep_info) & EP_STATE_MASK) == EP_STATE_HALTED)
-		reset_ep(udev, ep_index, timeout_ms);
+		reset_ep(udev, ep_index);
 
 	ring = virt_dev->eps[ep_index].ring;
 	/*
@@ -1055,7 +1055,7 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 		dma_unmap_single(ctrl->host.hw_dev, map, length, direction);
 
 	if (udev->status == USB_ST_STALLED) {
-		reset_ep(udev, ep_index, timeout_ms);
+		reset_ep(udev, ep_index);
 		return -EPIPE;
 	}
 

-- 
2.55.0



