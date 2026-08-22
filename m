Delivery-date: Sun, 23 Aug 2026 00:35:31 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxuJG-00688u-2G
	for lore@lore.pengutronix.de;
	Sun, 23 Aug 2026 00:35:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4714A20128F
	for <lore@pengutronix.de>; Sun, 23 Aug 2026 00:35:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MqHlr+cq;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=AnB07MHJ;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bFOTw7HJWPKvQUxa0mKcXtVfk9QwBdQC6ltvAorRbD4=; b=MqHlr+cqgS7/+3JYKGoBhDJCEV
	MEgKbAuveiylQYtdwhEU1wDdv7Bi4iPPWhDWcPCaBUuUEo492h2lJ3uR5IrbiGVUEfPZoq/y7zF18
	odcqai6SxSfSusptF4cp5bccZuSBjbQxLeekREfROdaTsDr5wnsKD5LMKjKHv04Gvdgj3bjbuXc+E
	++lYLOvKi1mOIvt5LoNGX/o1JtUdpj+Ca2f1qleT7ajH+hlMPay+hQWD0gHBN6nMfhfYn5GqpSTi+
	D1o3pptnyVbskmiIQvXEiPDKn1LdBMiMUCzpIJShru6ot0U2xilCKaNgq4Q4iLtXc/WLzVQlouExu
	/AHBy88Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxuI2-0000000Eqrk-2Tfg;
	Sat, 22 Aug 2026 22:34:14 +0000
Received: from omta038.useast.a.cloudfilter.net ([44.202.169.37])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxuHz-0000000EqqN-2vK3
	for barebox@lists.infradead.org;
	Sat, 22 Aug 2026 22:34:13 +0000
Received: from eig-obgw-6004b.ext.cloudfilter.net ([10.0.30.210])
	by cmsmtp with ESMTPS
	id xoNdwq7jiJFmFxuHywiAPn; Sat, 22 Aug 2026 22:34:10 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id xuHwwNPIwUeqpxuHwwaFMR; Sat, 22 Aug 2026 22:34:08 +0000
X-Authority-Analysis: v=2.4 cv=Iq4ecK/g c=1 sm=1 tr=0 ts=6a8a23e0
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10 a=wTo936TsAAAA:8
 a=vW81s0vvC9HlXn2nFKEA:9 a=QEXdDO2ut3YA:10 a=J3I8QpufI4RFOXkfet32:22
 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=bFOTw7HJWPKvQUxa0mKcXtVfk9QwBdQC6ltvAorRbD4=; b=AnB07MHJcf/9TJImuaCeypl1Os
	8noGOM/M/6CLL7vQ5Ba213co6VYuWRA/s/8JYsTFGbZvw+m0hTpSpIst7pOdaNCekmJ+CTCr6dPBh
	bP+2zR6kOHNoxx0X/M0118kF3uUbGhW/+Ucim+wsLnnMz1HlohrIVWwPgxNH78HT4NKY=;
Received: from [71.238.14.13] (port=59294 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wxuHw-00000003pp0-0mOi;
	Sat, 22 Aug 2026 16:34:08 -0600
From: Stephano Cetola <stephano@cetola.net>
Date: Sat, 22 Aug 2026 15:34:02 -0700
Subject: [PATCH 3/5] usb: xhci: reset_ep: fix misaligned pointer in Set TR
 Dequeue Pointer
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260822-send-xhci-fixes-v1-3-22e1de3be715@cetola.net>
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
X-Exim-ID: 1wxuHw-00000003pp0-0mOi
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:59294
X-Source-Auth: stephano@cetola.net
X-Email-Count: 13
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJTpFThYQpj6VJly8UmZBSp6QztQES6TaFBVQEq2kSD5UIZMGb77K0OCBZbC/ASRoPqeIkjQ4RLbYoXknu0w8FBUIj/Gn7ux/ROWe7VWvIbdhhB8Onwi
 qVVHo6GWTHK5N5pQADCQgj+X/LdnYzv/6xTCerNLAsRQG8wMOe4zpGdcFUYKYicGT4VGRF98FzGJVOMms2bMk6BT4l44mcVkFGk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_153411_808011_FA577C19 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  reset_ep() computed the Set TR Dequeue Pointer command's address
    by ORing the ring's cycle bit into ring->enqueue before passing it to xhci_trb_virt_to_dma().
    That function does pointer arithmetic tha [...] 
 
 Content analysis details:   (-0.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?44.202.169.37>]
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
X-Stat-Signature: fbfmop8h9r4sq7n778wos8fw9e6i6mc6
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[cetola.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	R_DKIM_PERMFAIL(0.00)[cetola.net:s=default];
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
	ARC_NA(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,cetola.net:~]
X-Rspamd-Queue-Id: 4714A20128F

reset_ep() computed the Set TR Dequeue Pointer command's address by
ORing the ring's cycle bit into ring->enqueue before passing it to
xhci_trb_virt_to_dma(). That function does pointer arithmetic that
requires a properly aligned TRB pointer. Tainting the low bit first
breaks that arithmetic whenever cycle_state==1, which happens
naturally as the ring wraps, producing a garbage segment offset and
tripping the BUG_ON in xhci_trb_virt_to_dma().

Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
 drivers/usb/host/xhci-ring.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 0b11da88a2..522ac7c45f 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -525,8 +525,8 @@ static void reset_ep(struct usb_device *udev, int ep_index)
 	BUG_ON(TRB_TO_SLOT_ID(field) != udev->slot_id);
 	xhci_acknowledge_event(ctrl);
 
-	addr = xhci_trb_virt_to_dma(ring->enq_seg,
-		(void *)((uintptr_t)ring->enqueue | ring->cycle_state));
+	addr = xhci_trb_virt_to_dma(ring->enq_seg, ring->enqueue);
+	addr |= ring->cycle_state;
 	xhci_queue_command(ctrl, addr, udev->slot_id, ep_index, TRB_SET_DEQ);
 	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
 	if (!event)

-- 
2.55.0



