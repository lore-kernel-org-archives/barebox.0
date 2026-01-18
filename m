Delivery-date: Sun, 18 Jan 2026 21:27:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhZMf-002mvz-34
	for lore@lore.pengutronix.de;
	Sun, 18 Jan 2026 21:27:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhZMe-0005KE-SY
	for lore@pengutronix.de; Sun, 18 Jan 2026 21:27:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZVuaGYys0NeeSCYUx7M61vX3Mxg8mChXre1kD7O0+Fo=; b=AUXBTO/aLJJhTikXyvq92eOnln
	4eppgtDQ5k5ZgXeMCGEyeYDp3sMq9OFwB/+oXm3RH1mqV8gDl+fkyCvRADhLT5GaEJXjoyyUfqu0E
	g6iVRxrQT3oshcR0qIw3jf/36L0TzLIEPwo7vLJenLqem4RQnvMg3Qsg6bkpIFBaxw8KgNE1Ko/zh
	PCjxCPF9oEnpCL3hoyLm0FjROlD5JCS/fsV2nkjbaxkWUmyAMpG2o5YDuFNTwP4o7bJY42zVW05FF
	z8JysJvyw5h1UQFRBWS+R0tN93Stt+oTLRpaOOq7GljhWitzEbQyAdgULL0pr3EhJdGuJL8YHuGbR
	2iar48xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhZM3-00000000usu-3mj9;
	Sun, 18 Jan 2026 20:26:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhZLz-00000000ura-17z0
	for barebox@lists.infradead.org;
	Sun, 18 Jan 2026 20:26:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhZLw-0005Dz-N2; Sun, 18 Jan 2026 21:26:28 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhZLx-001IX1-0d;
	Sun, 18 Jan 2026 21:26:28 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhZLw-001cpB-1L;
	Sun, 18 Jan 2026 21:26:28 +0100
Date: Sun, 18 Jan 2026 21:26:28 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20260118202628.wvnc7zspc6hk5ksh@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-20-8f0625ac5471@pengutronix.de>
 <aRrnxjr_iL3mCKZa@pengutronix.de>
 <c0aeacd1-8b11-4f98-ba8a-dd4af0d6e333@pengutronix.de>
 <20260115151953.ufmzak6ax57q37sy@pengutronix.de>
 <058c0e31-2308-4ec3-aea5-bdbd07732317@pengutronix.de>
 <20260116095151.ij3ixvvjj7zsaotn@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116095151.ij3ixvvjj7zsaotn@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_122631_310116_A1D9458C 
X-CRM114-Status: GOOD (  32.71  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 20/23] ARM: i.MX8M: Add support to extract OP-TEE
 provided informations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-01-16, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 26-01-15, Ahmad Fatoum wrote:
> > Hello,
> > 
> > On 1/15/26 4:19 PM, Marco Felsch wrote:
> > > On 26-01-15, Ahmad Fatoum wrote:
> > >>>> +		pr_warn("Failed to extract OP-TEE FDTO, continue without FDTO\n");
> > >>>> +		/*
> > >>>> +		 * Don't BUG() because the system may have compile-time config
> > >>>> +		 * support
> > >>>> +		 */
> > >>>> +		return;
> > >>>> +	}
> > >>>> +
> > >>>> +	handoff_data_add(HANDOFF_DATA_BL32_DT_OVL, fdto_dst, fdto_size);
> > >>>
> > >>> The overlay isn't used in barebox itself, but only for the Kernel.
> > > 
> > > This is not true. This patchset adds to support to use the overlay
> > > within barebox too. With the patches Fabian provided, it would eliminate
> > > the need for i.MX6(ULL) boards to have this strange initcall which
> > > checks a magic memory location for an overlay to apply it.
> > > >>>
> > >>> You Could just pick up the overlay from the i.MX scratch space in
> > >>> barebox proper and pass it to optee_register_overlay().
> > >>
> > >> Agreed. There seems to be no need to do this in the PBL.
> > > 
> > > The early barebox code checks for HANDOFF_DATA_BL32_DT_OVL and applies
> > > the overlay. Do you suggest that I shall extract the data within barebox
> > > common code rather? I'm not sure if this is even possible.
> > 
> > Isn't this basically what virt_board_driver_init() is doing? Would this
> > not work for your purposes?
> > 
> > I am generally not a friend of putting logic that can equally well be
> > located in barebox proper into the PBL. It's slow, it's code duplication
> > and if we do it, there should be a strong reason why it needs to be in
> > the PBL. There might very well be a reason here that this needs to be
> > absolutely done in the PBL (e.g. I can understand fixing up memory size
> > in PBL, because firmware needs it that early), but I don't yet see it
> > here for application of the overlay.
> 
> I see and you're completely right, if something can be done in barebox
> proper we should do it there. I have to check the
> virt_board_driver_init() and how this approach can be re-used for the
> this common abbroach.

I've checked the virt_board_driver_init() and have to disagree. What I
do here is to extract the overlay-fragments into a overlay-only FDT to
not cause any issues while applying the overlay later on. The
virt_board_driver_init() is applying a builtin overlay-only devicetree.

That beeing said, I wasn't sure if we need to extract the
overlay-fragments before applying the overlay. Applying the FDT provided
by OP-TEE which contains both the complete FDT and the overlay-fragments
should work too, but doesn't feel right. Therefore I went the way of
extract them into a dedicated overlay which can be applied later on
without worries (like the virt_board_driver_init() does).

I could check if applying the completed FDT (incl. the
overlay-fragments9 provided by OP-TEE as of-overlay works too.

IMHO this doesn't feel right, but the appending OP-TEE does doesn't feel
right too.

Regards,
  Marco


