Delivery-date: Sun, 23 Aug 2026 00:35:35 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxuJK-00689c-13
	for lore@lore.pengutronix.de;
	Sun, 23 Aug 2026 00:35:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7B52A201923
	for <lore@pengutronix.de>; Sun, 23 Aug 2026 00:35:34 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G0vcNr2p;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=SFFI5cK6;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8eIj/RhYzplx+5wh3cdbWWKg05ZNrqqMZTAy/LlkvBM=; b=G0vcNr2pNg2rCFBcHw7RJHX5g7
	caq2SmksY1PQsKT3F68aigOHu2hej8SF+hn3aXvmZ9V4aMllGLDbzQkm5AltnW584XRl1jAU3bf/B
	1Ie2UaQqoXPOFs0F5tgrsTc5c93tFQxCyCOsGphS17Du5aVo+mkQEtgIjgRS8O0JTc7B06vQNcsdM
	NPoAdXjLCG6qK/GMx8D6T02hYtj/4P8wWBAWcykRfDbqEgVhQRHdmuihzQbOdGZHU4uwoL4ZjcN4R
	WwG0o3rUKPO6wYw9irXcrRz3uaGrxqdOOd6W6lMZz9kReHR+ZPTOLS+8lQF5r3TAgZGkfUPYeAKGV
	6Bvom4eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxuI3-0000000EqsR-3P3Q;
	Sat, 22 Aug 2026 22:34:15 +0000
Received: from omta036.useast.a.cloudfilter.net ([44.202.169.35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxuI0-0000000EqqQ-1LMk
	for barebox@lists.infradead.org;
	Sat, 22 Aug 2026 22:34:14 +0000
Received: from eig-obgw-5001b.ext.cloudfilter.net ([10.0.29.181])
	by cmsmtp with ESMTPS
	id xoLqwo3yILvgbxuHywJ7yG; Sat, 22 Aug 2026 22:34:10 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id xuHxwJwvtfYFHxuHxwqhKl; Sat, 22 Aug 2026 22:34:09 +0000
X-Authority-Analysis: v=2.4 cv=ePoTjGp1 c=1 sm=1 tr=0 ts=6a8a23e1
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
	bh=8eIj/RhYzplx+5wh3cdbWWKg05ZNrqqMZTAy/LlkvBM=; b=SFFI5cK6YzZtOujl3xE82i2haE
	tMod7HntcNhkLhw3asNvYPjFlMPnKqgt2H7GQmgQQjVb+rRZzFp/8YNeQHOTJL/mdRBYQp2GUeulU
	Cuwq3tP77uVC65AUlVP5wSv/9d8lrQaLZ0bnt40BtVMrXI+5gAqagKcRV5NvHXRN5Sm0=;
Received: from [71.238.14.13] (port=59294 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wxuHw-00000003pp0-41AB;
	Sat, 22 Aug 2026 16:34:09 -0600
From: Stephano Cetola <stephano@cetola.net>
Date: Sat, 22 Aug 2026 15:34:04 -0700
Subject: [PATCH 5/5] usb: xhci: wait a real interval for interrupt endpoint
 transfers
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260822-send-xhci-fixes-v1-5-22e1de3be715@cetola.net>
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
X-Exim-ID: 1wxuHw-00000003pp0-41AB
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:59294
X-Source-Auth: stephano@cetola.net
X-Email-Count: 17
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfAomvIjrmTvY699lkBttAN1Ceib/In2CFBo3wuvic6KWR8VjP3eu0ygJjtJTQFqv6jHJ9TcwFxADf9L3Pbm1zpSrjp7us/EY0saWTFmrtrhyjEyZuuJc
 32CmdPVIVsZUO3SiR11brznRUNcIudT+fhKoQC/iKiBbBPQpJWWgCEF9xi2+U4ZHDCPCB7n/GbodyZrqr/+SjbSOtMId/n+9pEw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_153412_441958_D18F09B1 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  _xhci_submit_int_msg() ignored its interval parameter and
   always waited 0ms for the transfer to complete. With a 0ms wait, xhci_wait_for_event()
    does essentially a single instant check of the event ri [...] 
 
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
X-Stat-Signature: jrpbnt1nji419m4u8ykxds1sruysu756
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
X-Rspamd-Queue-Id: 7B52A201923

_xhci_submit_int_msg() ignored its interval parameter and always
waited 0ms for the transfer to complete. With a 0ms wait,
xhci_wait_for_event() does essentially a single instant check of the
event ring and gives up if nothing is pending yet, then abort_td()
cancels the just-queued transfer.

The xHC polls the device autonomously at the endpoint's bInterval
once a TRB is queued and the doorbell is rung, entirely in hardware,
independent of how long the driver waits. A 0ms wait cancels that
transfer before the hardware's own polling cycle ever gets a chance
to complete, even when the device has real data ready to send. Every
call would time out regardless of actual device state.

Because abort_td()'s own cleanup commands wait on a real timeout,
five seconds, not the caller's zero, the aborted transfer is often
still racing the hardware's actual response when the driver moves
on. Some polls still pick up real data by accident. The result reads
as intermittent. A keypress sometimes registers and sometimes
doesn't, rather than a clean, consistent failure.

Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
 drivers/usb/host/xhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index 27d4353597..661dc0dde0 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -1110,7 +1110,7 @@ static int _xhci_submit_int_msg(struct usb_device *udev, unsigned long pipe,
 	 * (at most) one TD. A TD (comprised of sg list entries) can
 	 * take several service intervals to transmit.
 	 */
-	return xhci_bulk_tx(udev, pipe, length, buffer, 0);
+	return xhci_bulk_tx(udev, pipe, length, buffer, interval);
 }
 
 /**

-- 
2.55.0



