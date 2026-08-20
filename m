Delivery-date: Thu, 20 Aug 2026 16:36:07 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wx3sE-005Fh5-2u
	for lore@lore.pengutronix.de;
	Thu, 20 Aug 2026 16:36:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6A520202442
	for <lore@pengutronix.de>; Thu, 20 Aug 2026 16:36:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Tu0UtLu4;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r1B7wLIl4r6gna47J+KRy6xkuOYoa3VnRvdLReZ6UP8=; b=Tu0UtLu44Fonq7pe9JVGSLCUBp
	0X6e9XeYdhowu3wvqfhj0f8PDmEjK4lLaKHeq6qeO87yNy/IGVHqI4oWwKXVvrE4KSFFk22a0dXkL
	uitFxFl+3DdBdY2QDvBTBFGA8ixPz2CRRtjRhob+QuCqrW/uaiqxwEzSVZ3o9jyFafSyOE01rhDKC
	J95q3JHEpyyxB4eED5nBcr0JQrWx03HYsB6LGuO8A5zYf5FPUPrPjaOUPCp3/NJWmMvQmjLzOhXmW
	K6DRSLTkmDFUg2PaZRTtsz00uRTpePgfPNvoyuJPCMfuMZO5J8PZc/OP3R5qnWzv0Yt8PLmgMwnE1
	rH9poJjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3qj-0000000BiJq-1eUU;
	Thu, 20 Aug 2026 14:34:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3qc-0000000BiGv-0Ajj
	for barebox@lists.infradead.org;
	Thu, 20 Aug 2026 14:34:30 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wx3qW-0008Bx-MI; Thu, 20 Aug 2026 16:34:20 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 20 Aug 2026 16:34:17 +0200
Subject: [PATCH v3 2/5] usb: core: make usb_set_maxpacket_ep public
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260820-v2026-06-0-topic-efi_usb-v3-2-faf0b9267966@pengutronix.de>
References: <20260820-v2026-06-0-topic-efi_usb-v3-0-faf0b9267966@pengutronix.de>
In-Reply-To: <20260820-v2026-06-0-topic-efi_usb-v3-0-faf0b9267966@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::5c
X-SA-Exim-Mail-From: f.pflug@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_073426_087769_0B8314AC 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The function will be used by the efi usb driver to set the
    maxpackets per endpoint. Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
    Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de> --- drivers/usb/core/usb.c
    | 12 ++ drivers/usb/core/usb.h | 2 ++ 2 files changed, 4 i [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Stat-Signature: exhwsnab7atonpq7znxkgxa8a46pdc7f
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:1101:1d::5c:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 6A520202442

The function will be used by the efi usb driver to set the maxpackets
per endpoint.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 drivers/usb/core/usb.c | 12 ++----------
 drivers/usb/core/usb.h |  2 ++
 2 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index ae87137447..ce10b71f40 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -127,16 +127,8 @@ static int usb_set_configuration(struct usb_device *dev, int configuration)
 		return res;
 }
 
-/* The routine usb_set_maxpacket_ep() is extracted from the loop of routine
- * usb_set_maxpacket(), because the optimizer of GCC 4.x chokes on this routine
- * when it is inlined in 1 single routine. What happens is that the register r3
- * is used as loop-count 'i', but gets overwritten later on.
- * This is clearly a compiler bug, but it is easier to workaround it here than
- * to update the compiler (Occurs with at least several GCC 4.{1,2},x
- * CodeSourcery compilers like e.g. 2007q3, 2008q1, 2008q3 lite editions on ARM)
- */
-static void  noinline
-usb_set_maxpacket_ep(struct usb_device *dev, struct usb_endpoint_descriptor *ep)
+void usb_set_maxpacket_ep(struct usb_device *dev,
+			  struct usb_endpoint_descriptor *ep)
 {
 	int b;
 
diff --git a/drivers/usb/core/usb.h b/drivers/usb/core/usb.h
index 0d4f80c21d..b503e5b4a8 100644
--- a/drivers/usb/core/usb.h
+++ b/drivers/usb/core/usb.h
@@ -6,5 +6,7 @@ struct usb_device *usb_alloc_new_device(void);
 void usb_free_device(struct usb_device *dev);
 int usb_new_device(struct usb_device *dev);
 void usb_remove_device(struct usb_device *dev);
+void usb_set_maxpacket_ep(struct usb_device *dev,
+			  struct usb_endpoint_descriptor *ep);
 
 #endif /* __CORE_USB_H */

-- 
2.47.3



