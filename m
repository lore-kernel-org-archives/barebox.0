Delivery-date: Tue, 10 Feb 2026 10:36:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpkAZ-0007p6-2h
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 10:36:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpkAZ-0003x2-4y
	for lore@pengutronix.de; Tue, 10 Feb 2026 10:36:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=61E4CyddiwYrNmuJRDO7YA+N2w4/s64aJQMlrIOVY+E=; b=4J37aCGDv8cYEVrrAeJlWu36hI
	uYJEefBw9QJVvKj70q92KmZHv6bay78fm0DzrB57tZR8/0H1nGEY/NZvHXf5FG95UR1dQqn4GVR4v
	VdcRxo4CFO7pPIm/1dZBVgysHVgod6K/j4Q2/aMACOFRXUJcG7z7Qc/YcjehVMqyf9WTHFf+mtEkH
	EB+SfV+mTdd2vrAEPU/R98vMeTmmqyCRkOl8bzUvyoSVuMOOfYnTxVKyAla0nRsoCw9OEZWEHdpYt
	aeaphsvUSz5VaNgxwZlHqeR10n1BlP54FuC/vHKUSVICw6WgkTEQVTvj77sttf63d4DxLhxh1V9if
	E0Oebxqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpkA7-0000000GkzJ-3Txr;
	Tue, 10 Feb 2026 09:36:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpkA1-0000000Gkxx-3AJJ
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 09:36:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpkA0-0003pO-1W; Tue, 10 Feb 2026 10:35:56 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpk9z-0003gN-0n;
	Tue, 10 Feb 2026 10:35:55 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpk9z-009xgD-2J;
	Tue, 10 Feb 2026 10:35:55 +0100
Date: Tue, 10 Feb 2026 10:35:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260210093555.mmf4y3znebf3t2te@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-6-da075e6818e0@pengutronix.de>
 <d6b5bd70-4b23-4650-ac5a-b3a83d092d29@pengutronix.de>
 <20260206100243.dah3jz6r6pzebexe@pengutronix.de>
 <a871ce2a-00e9-46ec-912a-f64cce27b7b9@pengutronix.de>
 <20260209205047.7nite5dc5n2erpa7@pengutronix.de>
 <c3be580c-cd46-4cf4-a5ac-f01d171f4769@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c3be580c-cd46-4cf4-a5ac-f01d171f4769@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_013600_106030_C4DF8FF7 
X-CRM114-Status: GOOD (  31.75  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 06/15] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-09, Ahmad Fatoum wrote:
> Hi,
> 
> On 2/9/26 9:50 PM, Marco Felsch wrote:
> > On 26-02-06, Ahmad Fatoum wrote:
> >> How about:
> >>
> >> struct imx_scratch_space {
> >>         union {
> >>                 u8 __b[CONFIG_SCRATCH_SIZE];
> >>                 struct {
> >>                         u32 bootrom_log[128];
> >>                         u32 reserved[128];
> >>                         struct optee_header optee_hdr;
> >>                         u8 fdt[] __aligned(8);
> > 
> > This would require, that the 'fdt' element is always the last element.
> > We could add a comment, but it's rather fragile IMHO.
> 
> What's fragile about it? Next one after you, will not be able to add a
> new member and that's a good thing. They should rework this instead of
> piling extra CONFIG variables with board-specific offsets.

I can live with that if that is fine for you.

> >>                 };
> >>         };
> >> };
> >> static_assert(sizeof(struct imx_scratch_space)
> >>           - offsetof(struct imx_scratch_space, fdt)
> >> 			<= PBL_OPTEE_DTB_MAX_SIZE);
> > 
> > This would introduce a very strict dependency for CONFIG_SCRATCH_SIZE to
> > the not always visible PBL_OPTEE_DTB_MAX_SIZE. As you said:
> 
> Wrap the assert in an #ifdef then.

Sure, but still it would bind the SCARTCH_SIZE very tightly to
PBL_OPTEE_DTB_MAX_SIZE. E.g. this assert would always be triggered if
$someone wants to have a PBL_OPTEE_DTB_MAX_SIZE size of 4K and keep the
default SCRATCH_SIZE of 32K. IMHO this is an surprising behaviour.

However, it's fine for me too, I just wanted to point this out.

> >>>> In that case, this should go to security/Kconfig and be named something
> >>>> like PBL_OPTEE_DTB_MAX_SIZE. There's no need to ask every user that
> >>>> configures barebox about this.
> > 
> > Therefore I would like to use your name suggestion
> > PBL_OPTEE_DTB_MAX_SIZE but keep it loose like RK does.
> > 
> >> The benefits I see:
> >>   - Just one argument to tune (CONFIG_SCRATCH_SIZE) like we already use
> >>     for Rockchip
> > 
> > Rockchip is using two Kconfig switch too (ARCH_ROCKCHIP_ATF_FDT_SIZE).
> 
> Oh, I see. I can send patches to switch this over to
> PBL_OPTEE_DTB_MAX_SIZE then.

Thanks :)

Regards,
  Marco

> 
> > 
> >>   - We still have a dedicated option that can be kept in-sync with the
> >>     exact option value in OP-TEE to find problems at compile-time
> >>   - Only those who actually use OP-TEE will be asked about
> >>     PBL_OPTEE_DTB_MAX_SIZE
> > 
> > Good points!
> > 
> >> Would this work for you?
> > 
> > Please see above.
> 
> Cheers,
> Ahmad
> 
> > 
> > Regards,
> >   Marco
> > 
> > 
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>
> >>>
> >>> Regards,
> >>>   Marco
> >>>
> >>>
> >>>>
> >>>>
> >>>> Cheers,
> >>>> Ahmad
> >>>>
> >>>> -- 
> >>>> Pengutronix e.K.                  |                             |
> >>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>>>
> >>>>
> >>>
> >>
> >> -- 
> >> Pengutronix e.K.                  |                             |
> >> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


