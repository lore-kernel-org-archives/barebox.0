Delivery-date: Wed, 21 Jan 2026 09:10:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viTI5-003gzg-1f
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 09:10:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viTI4-00007q-GB
	for lore@pengutronix.de; Wed, 21 Jan 2026 09:10:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2EKd+78YxxPa9KQpYd0QhteMFUoCyrTF24pd6bixS68=; b=Sir5ohI+8PyJoDP/SIuDBsFUPx
	xqW7rNVa6xYlU3P2hXA1aCcVVme45BmDRVL27Kxsd1q8/i/S77jg/gPGR11ClVrUsaplw77oBsMn1
	NWToqjmqi3NHvm+8Lmf/uy89LhFVOf1FAQ4HPXUPpIPFvQXwNZIqFbybBZRRIcopAKqiiApfw5xJz
	+hZCFOR9xDgvedJnsiCy4fgE7L42mFoCYsOYikT34P+OIdaISd9MCsMyeYJ0f7AUQMdMlqS0uXjcu
	oEbeQAELbmMdnQTupjRs0Q9iEEQhNNHc6DJvMTSbi8Dpubsgqf9hijd6HMgM1gQBle/jrlpBAiTk7
	/ylrGzLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viTHc-000000053v4-0pjP;
	Wed, 21 Jan 2026 08:09:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viTHZ-000000053uX-1ngR
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 08:09:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1viTHV-0008Sf-MU; Wed, 21 Jan 2026 09:09:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1viTHW-001iRc-0Z;
	Wed, 21 Jan 2026 09:09:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1viTHV-0074Dk-1K;
	Wed, 21 Jan 2026 09:09:37 +0100
Date: Wed, 21 Jan 2026 09:09:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aXCJwR366e11cIMM@pengutronix.de>
References: <20260120-android-image-v1-0-820595a1b8a4@pengutronix.de>
 <20260120-android-image-v1-2-820595a1b8a4@pengutronix.de>
 <758e79dc-56df-491c-919f-906cdb91c56c@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <758e79dc-56df-491c-919f-906cdb91c56c@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_000941_467032_A683D995 
X-CRM114-Status: GOOD (  26.62  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] bootm: add generic android image handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 20, 2026 at 04:04:37PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 1/20/26 3:55 PM, Sascha Hauer wrote:
> > +	if (kernel)
> > +		bootm_data.os_file = kernel;
> > +
> > +	if (initrd)
> > +		bootm_data.initrd_file = initrd;
> > +
> > +	close(fd);
> > +
> > +	ret = bootm_boot(&bootm_data);
> 
> Two quick comments:
> 
> I think this feature will not be usable when
> CONFIG_BOOTM_OFTREE_FALLBACK is disabled, which is a shame, because I
> think normal deployments should disable that option to avoid unexpected
> fallback behavior.
> 
> Here the fallback is expected though. Would it be possible to change
> this, so the barebox oftree is passed along explicitly to avoid falling
> into the fallback?

When a user chooses to disable CONFIG_BOOTM_OFTREE_FALLBACK to avoid
using the internal device tree as a fallback then this decision should
be universally honoured. Explicitly inserting the internal device tree
in special cases contradicts this.

Note that I have used this feature with a FIT image which carries its
own device tree, so I wasn't affected.

We currently only support version 1 of the Android image format. Since
version 2 the image can also embed a device tree which can be passed
with the --dtb option to the fastboot command, so the solution to
address your concerns should be adding support for version 2.

I would consider this a future enhancement though.

> 
> On a related note, this will probably trigger a warning on every boot if
> the barebox device tree has a state node. Maybe we could mark dupes of
> the barebox device tree as such (maybe set device_node::dev to a special
> value?!), so we can skip the warning?

You mean this warning?

dev_warn(&state->dev, "Warning: Kernel devicetree contains state node, replacing it\n");

We could mark it as duplicate as you suggested. Another possibility
would be to delete state nodes while duplicating the internal device tree.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


