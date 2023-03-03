Delivery-date: Fri, 03 Mar 2023 12:58:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY43u-007VcB-IY
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 12:58:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY43u-0000Cb-Bi
	for lore@pengutronix.de; Fri, 03 Mar 2023 12:58:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v9B8mQcqKK5VuM2x9hbbvKDpQmiBJS9e2+65/oc6xQY=; b=YywW7XjbB7Ldcpvj/6or80tn45
	0e16pUbQ1FGPRfHh3VJ8rdcBhdi+/NJvk87iN5/ILNkzJvnAjwsWy4ImE+HDzL32/URBwWKk+BTk0
	oeqjhJX36fRdgZPcfz0tgND1pJj5BpqyeiotW7VDA8N18HKuSTXqH1jacPs/GjClVuFkCAr8wcfk2
	8joYuMBO3VtH2ORqwsk4XFs7DdNmrvGEycZTR6kvyhIlV5S3zC9jdx8UF7Ct3XAwBZ5UBYg2O2b03
	/Z1RlNkdtDogChjeVGWtvjUXkwG1V5YA9cBXqPFBLQachdjMKVKmIoUC6e4Z22F/ADtCP/glBLSpW
	oqjBrWkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY42n-006FG0-FS; Fri, 03 Mar 2023 11:57:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY42i-006FFC-3G
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 11:57:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY42g-00008n-NE; Fri, 03 Mar 2023 12:57:42 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY42f-0008CN-OO; Fri, 03 Mar 2023 12:57:41 +0100
Date: Fri, 3 Mar 2023 12:57:41 +0100
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Barebox List <barebox@lists.infradead.org>
Message-ID: <20230303115741.GU32097@pengutronix.de>
References: <BL0PR07MB56653CD55ED2742BBC7561CCECAD9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <e4698412-74a8-e308-3021-23bf21ce2646@pengutronix.de>
 <BL0PR07MB56650B290C9598A267BFF8A3ECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB56650B290C9598A267BFF8A3ECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_035744_196338_F4A3AA38 
X-CRM114-Status: GOOD (  25.85  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Subject: [PATCH 1/3] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 03, 2023 at 09:23:13AM +0000, Renaud Barbier wrote:
> > On 01.03.23 17:59, Renaud Barbier wrote:
> > > Subject: [PATCH 1/3] ARM:lib32: add architected timer
> > >
> > > In preparation for the introduction of the LS1021A support, add a
> > > specific timer support based on the LS1046A support so that delays can
> > > be used in the PBL.
> > >
> > > Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
> > > ---
> > >  arch/arm/lib32/Makefile |  1 +
> > >  arch/arm/lib32/pbl.c    | 17 +++++++++++++++++
> > >  include/clock.h         |  2 ++
> > >  3 files changed, 20 insertions(+)
> > >  create mode 100644 arch/arm/lib32/pbl.c
> > >
> > > diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile index
> > > 82507fffc0..1be8d70c45 100644
> > > --- a/arch/arm/lib32/Makefile
> > > +++ b/arch/arm/lib32/Makefile
> > > @@ -31,6 +31,7 @@ extra-y += barebox.lds
> > >  pbl-y        += lib1funcs.o
> > >  pbl-y        += ashldi3.o
> > >  pbl-y        += div0.o
> > > +pbl-y        += pbl.o
> > 
> > I think we need a CFLAGS_pbl.o := -march=armv7-a here, otherwise this would
> > break builds of non-ARMv7 platforms.
> > 
> > See arm_architected_timer.o in drivers/clocksource. Also, perhaps you should
> > rename the file to arm_architected_timer.c as well?
> > 
> > 
> 
> Would something like below makes sense in arch/arm/lib32/Makefile:
> 
> pbl-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER) += arm_architected_timer.o
> ifeq ($(CONFIG_CPU_32v7),y)
> CFLAGS_arm_architected_timer.o := -march=armv7-a
> endif

I don't see what the ifeq is needed for. I think you can drop it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


