Delivery-date: Tue, 07 Oct 2025 13:58:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v66KU-005Eiq-0P
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 13:58:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v66KT-0001S9-IX
	for lore@pengutronix.de; Tue, 07 Oct 2025 13:58:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7HfQg57DdjKpdavyqlP7uS6cbYw6ox337lUnfXCMWVg=; b=lLuu8ifJj74hsHsGK4Ep0oM1FM
	KOMGWxZRiib9kd3qoKkUaWk4/QDAmFND4GGrvKG36ggU5Ky6dk08iOaHMY/l8mNftv3ZYd6VrZsY8
	3lHmz2UuR/M3vT3vTytkhEbWqz3TEp1OkuxuYz8AM2K+wOWhGwSUraTINsmHAP2ClHiSqcP0ZVdhd
	pPZaE3j62DOrR4oMsjE0X9T5VW1oGluZtfsDoeqt2wBzzC/EbxVUDOIpumrYaQZKpknGQRBrttSKX
	8V/Z0Q0EuPG8myoJVtvYOJsTKDEBMb4JOL9wZlMti3HVoMFUoMeiGCvtFfKOcTNfG7Z4qt+VKH/ls
	x9AUcC5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66K2-00000001vpY-3ESV;
	Tue, 07 Oct 2025 11:57:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66Jz-00000001vos-1Cph
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 11:57:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v66Jx-0001KL-0B; Tue, 07 Oct 2025 13:57:33 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v66Jv-002OV9-2x;
	Tue, 07 Oct 2025 13:57:31 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v66Jv-000LYG-2f;
	Tue, 07 Oct 2025 13:57:31 +0200
Date: Tue, 7 Oct 2025 13:57:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aOUAKx-E6jn9ZLWT@pengutronix.de>
References: <20251003103720.2028460-1-m.grzeschik@pengutronix.de>
 <6efcc606-796d-4345-b587-41e0e67d1530@pengutronix.de>
 <aOQsLiIcSYgn0JmQ@pengutronix.de>
 <aOT-hIK6m3Ib_wzX@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aOT-hIK6m3Ib_wzX@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_045735_348988_D9A5849D 
X-CRM114-Status: GOOD (  20.26  )
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
X-Spam-Status: No, score=-1.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: clk_set_parent: skip any operation if current and
 new parents are equal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 07, 2025 at 01:50:28PM +0200, Sascha Hauer wrote:
> On Mon, Oct 06, 2025 at 10:53:02PM +0200, Michael Grzeschik wrote:
> > On Mon, Oct 06, 2025 at 01:43:47PM +0200, Ahmad Fatoum wrote:
> > > On 10/3/25 12:37 PM, Michael Grzeschik wrote:
> > > > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > > 
> > > While I agree this makes sense, I appreciate some background. Did you
> > > run into problems? Or is it just something you noticed while reading the
> > > code? A prime location for that background would be the empty commit
> > > message ;)
> > 
> > Yes this happend when using the video drivers. Somehow some drivers
> > tried to reparent the video_pll to the same parent that it already had.
> > 
> > clk: failed to reparent video_pll to osc_24m: -22
> > clk: failed to reparent video_pll to osc_24m: -22
> 
> If it's the same parent it already has, why does it fail with -EINVAL
> then?

Ah, probably because of:

	if (!clk->ops->set_parent)
		return -EINVAL;

So the clk only has a single parent, thus no set_parent op. Your patch
is indeed correct. Please update the commit message with this
information.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


