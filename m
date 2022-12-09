Delivery-date: Fri, 09 Dec 2022 08:34:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Xtn-00FnVI-3f
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:34:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Xtm-0000ju-DX
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:34:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lH01Ioa8ViYwNtmO450vVGk8o7ADkBcF0sIWHZ4WF44=; b=Wq9wFBHxw6NV55OcmMSROIb/Sy
	HSkDNUpYBnyLVfWpbtONUwN2qVQTSDFy430MKk+hzxU2gXgucw7Zt69bG7PM7ZfymrrnKNIs6JJJs
	B5GrpbfKa1ZK1pP2P1zmrIecagZK3vdzqWy9/th4XWh+F6lAHUrZBzK7xeYe37Ap4NPor9RT/P+Jk
	SdfF9RjpsmaimSF5QWVbBNufhft1vX2dx5heMVUnI/tHO5Lw8cruIaRkeKdTd6fsWVX6tYF2B/tJi
	q1sCqXQjhZLkOHUx3RaEwJNPW7BOpocMnfABvAWbuPzjIU+8Rx7tBT8l86iNVJkdBZ8AGgVc5eINc
	SJ97+cZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XsW-0050gQ-Vx; Fri, 09 Dec 2022 07:33:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XsS-0050f2-K4
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 07:33:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3XsR-0000dY-5e; Fri, 09 Dec 2022 08:32:59 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3XsQ-0003mb-Ue; Fri, 09 Dec 2022 08:32:58 +0100
Date: Fri, 9 Dec 2022 08:32:58 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20221209073258.GH29728@pengutronix.de>
References: <20221101062350.3206890-1-a.fatoum@pengutronix.de>
 <db8fc67f-6bb1-0c75-9df5-8423b5aa8f04@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <db8fc67f-6bb1-0c75-9df5-8423b5aa8f04@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_233300_678092_B01AEDEF 
X-CRM114-Status: GOOD (  22.05  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: start: print debugging info when
 CONFIG_DEBUG_INITCALLS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 09, 2022 at 08:15:49AM +0100, Ahmad Fatoum wrote:
> On 01.11.22 07:23, Ahmad Fatoum wrote:
> > Like we now do during PBL, have CONFIG_DEBUG_INITCALLS also activate
> > the early barebox start debug logging just prior to initcall execution.
> > 
> > This is useful when debugging early hands and will only be visible if
> > CONFIG_DEBUG_LL is enabled and configured appropriately.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Ping.
> 
> > ---
> >  arch/arm/cpu/start.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> > index f9b617aa855a..be303514c23d 100644
> > --- a/arch/arm/cpu/start.c
> > +++ b/arch/arm/cpu/start.c
> > @@ -3,6 +3,10 @@
> >  
> >  #define pr_fmt(fmt) "start.c: " fmt
> >  
> > +#ifdef CONFIG_DEBUG_INITCALLS
> > +#define DEBUG
> > +#endif

I am hesitating to apply this. The main reason is that enabling DEBUG
here might break PBL startup and you no longer get to the point for
which you enabled CONFIG_DEBUG_INITCALLS in the first hand.

How about putting another Kconfig knob to control early debugging here?

That would also resolve the issue that "Trace initcalls" doesn't really
fit here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


