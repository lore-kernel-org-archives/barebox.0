Delivery-date: Mon, 23 Feb 2026 12:42:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUKI-004oke-18
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:42:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUKI-0001Dp-L1
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:42:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ySKNib/rluzvIHnilIrXRz+lL3XnPHn24j7O46g4RSg=; b=H/p3JnsgKm3uM9ry8tAaCUOGET
	409jhiLBGjfnkHGdx1E5xxVSLh7ETzpSYG/Ajbajy1Jnfh47xhVdPdGBh5UoK9YJAPjdiMHxH7rmj
	/gn+y3rkXxhzOat9nC13esXi2fTEPkKXcKvXKnHLAKW2PcKV+sq7WrSxdnOxJg+uiC3Bp8yYwz7uo
	bBwrvF3F5dUCMZbsrM+TFbLl4MfSauRDlt3xZyHms4dBDBrDpmXmmA/9pTP6NK/i5JkifHMmahVG2
	fOn4l+bRDYQ2Vk5GFwX783uUKoR5Dq0kGp64QkKOw2IGOoKSnHwDZnK4PiDZ1VmKYQivAFOeaUKiq
	IIrbkQmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUJv-00000000Cnc-1b4b;
	Mon, 23 Feb 2026 11:41:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUJs-00000000Cmr-49Le
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:41:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vuUJr-000189-9M; Mon, 23 Feb 2026 12:41:43 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vuUJp-002Drn-2R;
	Mon, 23 Feb 2026 12:41:43 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vuUJr-000000017qI-02r7;
	Mon, 23 Feb 2026 12:41:43 +0100
Date: Mon, 23 Feb 2026 12:41:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <aZw89shLd9_le_l5@pengutronix.de>
References: <20260209164045.1924618-1-a.fatoum@pengutronix.de>
 <aZw76S9tX_b2J0xM@pengutronix.de>
 <fbe0f299-7942-4599-92b4-d2d5fbbf1e28@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fbe0f299-7942-4599-92b4-d2d5fbbf1e28@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_034145_052424_6B57B142 
X-CRM114-Status: GOOD (  31.15  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] mci: dw_mmc: drop CD from mask programmed into
 interrupt status register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 23, 2026 at 12:40:33PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 2/23/26 12:37 PM, Sascha Hauer wrote:
> > On Mon, Feb 09, 2026 at 05:40:44PM +0100, Ahmad Fatoum wrote:
> >> We don't usually care for the card detect in barebox and just
> >> unconditionally try to access the card. If it fails, a probe can be
> >> attempted later via setting mmcX.probe=1.
> >>
> >> The dw_mmc driver diverges from this and enables all kinds
> >> of interrupts in the interrupt status polled after submitting commands,
> >> including card-detect.
> >>
> >> This appears to be problematic, when we have a GPIO card detect and are
> >> not using the card detect hardware function.
> >>
> >> Align behavior with Linux and skip polling for hardware card-detect when
> >> we have a GPIO card detect. The current behavior was inherited from
> >> U-Boot, which still does it this way and it's possible it would be affected
> >> by this issue as well, once U-Boot updates to use DTs >= v6.19-rc1, provided
> >> that the ROCK 5 support in U-Boot uses CONFIG_OF_UPSTREAM.
> >>
> >> Fixes: a3bf6c16f77d ("dts: update to v6.19-rc1")
> >> Reported-by: Michael Tretter <m.tretter@pengutronix.de>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  drivers/mci/dw_mmc.c | 33 ++++++++++++++++++++++++++++++++-
> >>  drivers/mci/dw_mmc.h |  1 +
> >>  2 files changed, 33 insertions(+), 1 deletion(-)
> > 
> > Given that this doesn't resolve Michaels issue I won't apply it for
> > master. Anyway, the patch might still be correct, so what should I do
> > with it?
> 
> Let's leave it unapplied for now until the reported issue is fixed (I
> heard you have access to the HW in question, so I am hopful :-).

Indeed :)

> 
> Once the original issue is fixed, this can be applied of top if it was
> not found to be breaking anything.

Ok.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


