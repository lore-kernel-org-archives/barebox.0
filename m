Delivery-date: Sun, 23 Aug 2026 00:35:38 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxuJN-0068AK-0x
	for lore@lore.pengutronix.de;
	Sun, 23 Aug 2026 00:35:38 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8B82420128F
	for <lore@pengutronix.de>; Sun, 23 Aug 2026 00:35:37 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="t9z+/66d";
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b="KuHv3a/4";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QX3nmt7WVEIUwy2WJhcEd/djojitlWPSFfuG+apRZK0=; b=t9z+/66dyIiLP0v9cgNhhKbNx2
	XGFieBhetvo7a1TG1Te92hfTCT9ZWU5vILrCkQrSt5hZHorsRag2sfo4V3T6u/LugHXWj46dfpEhk
	6VtlSlWUIzaJM7W48UY6QJnGMzZoBK26a5YRMs/atzhyfj6AqTSnukvPaxpK0BrgGq1FFKQU4p/KO
	mm03V3D8H225YlOmdMdHvUnscvob1Hs311fYKOYIVjT7Jv7OwLxWmSu3Gsy22y3ybUV4jL3CspliW
	jumc0xWCGoqnSeKBJt5vnSeUfc+XfYyBQIwHzS0ivZpuFziylihPSxB8HX//jqCKlIaThDAOIqbqc
	JX/+z8iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxuI3-0000000EqsY-3pOO;
	Sat, 22 Aug 2026 22:34:15 +0000
Received: from omta036.useast.a.cloudfilter.net ([44.202.169.35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxuI0-0000000EqqR-1LSQ
	for barebox@lists.infradead.org;
	Sat, 22 Aug 2026 22:34:14 +0000
Received: from eig-obgw-6003b.ext.cloudfilter.net ([10.0.30.175])
	by cmsmtp with ESMTPS
	id xq0iwoMjmLvgbxuHywJ7yF; Sat, 22 Aug 2026 22:34:10 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id xuHwwyz3WZEEtxuHxwLkBX; Sat, 22 Aug 2026 22:34:09 +0000
X-Authority-Analysis: v=2.4 cv=bphMBFai c=1 sm=1 tr=0 ts=6a8a23e1
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10 a=wTo936TsAAAA:8
 a=K2iCOGsVamA1RVADN6kA:9 a=QEXdDO2ut3YA:10 a=J3I8QpufI4RFOXkfet32:22
 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=QX3nmt7WVEIUwy2WJhcEd/djojitlWPSFfuG+apRZK0=; b=KuHv3a/4aC4+5LDC7N1ymTfFAm
	4eq4ASAYqMQjGM8jLKGwpEzEdS06COtAXimh0aKZpia/HFbho+M3Wdtn4gDja1Q81x1MuNJQs8aMz
	MFCbBl/3QaA99TpRN7V1ctdY/He53oMb0HFKM1V6o6PFJHifhU9GzO39Sp7wUVcFl/UA=;
Received: from [71.238.14.13] (port=59294 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wxuHw-00000003pp0-2LkJ;
	Sat, 22 Aug 2026 16:34:08 -0600
From: Stephano Cetola <stephano@cetola.net>
Date: Sat, 22 Aug 2026 15:34:03 -0700
Subject: [PATCH 4/5] usb: xhci: xhci_bulk_tx: re-fetch ep_ctx after
 resetting a halted endpoint
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260822-send-xhci-fixes-v1-4-22e1de3be715@cetola.net>
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
X-Exim-ID: 1wxuHw-00000003pp0-2LkJ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:59294
X-Source-Auth: stephano@cetola.net
X-Email-Count: 15
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfEjVmeuZ/CBGwWwm4awYaUV1SY+la9eHvUfgqhmbC+OcqHSHwD6MMpO7VfBELo2WbGvasrVEiZG5m00zpnUEUi/n0O5ZbetbWyTc7bEpIDLFCn6DmMO9
 pKttsVGM40p+GVkYJ4SCVg91mUMnr5twHBZP889965WNr+6J0Ymrjq5abOqVDn8yHqatQbLtirDT5SvO82crVIzwTzHI8gA+Aao=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_153412_447381_426F74B8 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  xhci_bulk_tx() reads the endpoint's context once at the top
    of the function and reuses that same value both to decide whether to call
    reset_ep() and, further down, to pass to prepare_ring(). reset_ep( [...] 
 
 Content analysis details:   (-0.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?44.202.169.35>]
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
X-Stat-Signature: u8iqn61ibdfpd1ntk8675grq8wgids5e
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
X-Rspamd-Queue-Id: 8B82420128F

xhci_bulk_tx() reads the endpoint's context once at the top of the
function and reuses that same value both to decide whether to call
reset_ep() and, further down, to pass to prepare_ring(). reset_ep()
clears the halt by updating the endpoint's output context via DMA,
but the earlier ep_ctx read is never invalidated or refetched after
that, so prepare_ring() always sees the stale pre-reset
EP_STATE_HALTED value.

prepare_ring() rejects the transfer with -EINVAL, regardless of
whether reset_ep() actually succeeded. The USB keyboard driver's
poller treats any error other than -EAGAIN as fatal. One spurious
rejection is enough to stop it for good, and nothing calls
xhci_bulk_tx() again after that. The keyboard stays dead until the
next boot.

Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
 drivers/usb/host/xhci-ring.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 522ac7c45f..a3b78052a4 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -705,8 +705,13 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
 	 * the next transfer. It is the responsibility of the upper layer to
 	 * have dealt with whatever caused the error.
 	 */
-	if ((le32_to_cpu(ep_ctx->ep_info) & EP_STATE_MASK) == EP_STATE_HALTED)
+	if ((le32_to_cpu(ep_ctx->ep_info) & EP_STATE_MASK) == EP_STATE_HALTED) {
 		reset_ep(udev, ep_index);
+		/* reset_ep() updates the context via DMA. Re-fetch it here. */
+		xhci_inval_cache((uintptr_t)virt_dev->out_ctx->bytes,
+				 virt_dev->out_ctx->size);
+		ep_ctx = xhci_get_ep_ctx(ctrl, virt_dev->out_ctx, ep_index);
+	}
 
 	ring = virt_dev->eps[ep_index].ring;
 	/*

-- 
2.55.0



