Delivery-date: Mon, 20 Apr 2026 14:18:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEnaJ-00ELA1-06
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 14:18:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEnaI-0004vX-65
	for lore@pengutronix.de; Mon, 20 Apr 2026 14:18:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bQw3gDGFrKU1jQWuFW94w0eyjHAmfoSVfV+CFp+uDD0=; b=ZPWU7uYrHXZLw6C7CLRxT32R8R
	KCqvKLAJukuqEArZhbQHXTwRn2MJFGeUVWJxPUGoJ/31CJKu3YyGADuwad/0ReEGsZLNYlJCrKJGk
	egBa/dijpiklXJxiJDdHp6RicpTuEqeXTqJm+UiItEvpPnq/e/cygw1eyezCkS0x9/rXlmznhWM6e
	QF4PLK7YhSJk9YpVqi/qVAGI9OVEDL3UFqMXjSuu1t3y/1OCNnCDV56mpbaIokT6Vq7d0YGrpvvNS
	kbnwrAHmzXkmvz2g/T/KrwUdhBVRRfmTmQet7v1dHGFyMpUI2AkOUWC+40WP4BffCzAuRAcy8Xkkf
	niffJ/fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEnZv-00000006rud-3W3j;
	Mon, 20 Apr 2026 12:18:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEnZr-00000006rte-3Zs2
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 12:18:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wEnZq-0004nv-0F; Mon, 20 Apr 2026 14:18:10 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wEnZp-006Kjx-2Q;
	Mon, 20 Apr 2026 14:18:09 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wEnZp-00000004GUW-2mjL;
	Mon, 20 Apr 2026 14:18:09 +0200
Date: Mon, 20 Apr 2026 14:18:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.6" <noreply@anthropic.com>
Message-ID: <aeYZgSySnesKe_L0@pengutronix.de>
References: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
 <20260420-usb-dwc2-usb-c-stick-v1-1-c86f733f24f8@pengutronix.de>
 <439e4d93-0b31-41a5-93a4-3e0456e60a7b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <439e4d93-0b31-41a5-93a4-3e0456e60a7b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_051811_944231_560E0DC1 
X-CRM114-Status: GOOD (  26.99  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc2: handle NAK when CHHLTD does not fire
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

+Cc Chali Anis <chalianis1@gmail.com>

On Mon, Apr 20, 2026 at 01:32:25PM +0200, Ahmad Fatoum wrote:
> Hello,
> 
> On 4/20/26 1:20 PM, Sascha Hauer wrote:
> > From: Sascha Hauer <sascha@saschahauer.de>
> > 
> > Some DWC2 configurations do not assert CHHLTD when a NAK is received;
> > the hardware keeps the channel active and only sets the NAK bit in HCINT.
> > wait_for_chhltd() polls for CHHLTD with a 10ms timeout; when CHHLTD never
> > fires the timeout expires and -ETIMEDOUT is returned without inspecting
> > HCINT. This causes the caller to treat the NAK as a hard error instead of
> > a retryable condition.
> > 
> > The symptom is that devices which NAK bulk or control transfers during
> > initialisation (e.g. some Samsung USB-C flash drives that NAK while their
> > firmware starts up) fail immediately rather than being retried via the
> > 5-second NAK-retry loop in dwc2_submit_bulk_msg() or the do/while loops
> > in dwc2_submit_control_msg().
> > 
> > Fix by reading HCINT before aborting the channel when the CHHLTD timeout
> > fires. If the NAK or FRMOVRUN bit is set, abort the channel, wait for the
> > abort to complete, and return -EAGAIN so that the existing retry logic can
> > handle the NAK. Log a diagnostic message if the channel abort itself times
> > out, which would indicate a real hardware problem.
> 
> How does this relate to
> https://lore.barebox.org/barebox/20260331034819.227094-1-chalianis1@gmail.com/
> 
> Do we need both? Only this one? Is there something over there, which you
> would want in your series?

Sounds related, but seems to be a different issue. It says "handle the case where
DMA has already completed by the time we get here". DMA is not an issue
in my case. We likely need a combination of both, but Chali, could you
give my patch without yours a try to see if it changes something for
good in your case?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


