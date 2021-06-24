Delivery-date: Thu, 24 Jun 2021 10:49:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL3A-000783-87
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:49:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL39-0000BL-AD
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:49:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJjLGX8NmsliUbFSVBfADvHebL0pAFBPwtAcsGtkhCg=; b=V7MCSpyFUGuPvp
	HLn0eFjgsiUIMQlSrHqNp+UpANN9z2zRUVBA3MeuF7mx4YIn4kyeM3/nBcRq5SbinR2jMxTY2U65T
	HeXJHeIrYVSKEfnA+5irDjOZtjfbW9dxi3V3tNpja5Ih/9uPCFKRi138ie1mTg+ycqjWgZzQNpWFb
	ReW4U303wZj1CIwQX/uxUmITDjNUOGIyFcqLD4HhDsxdVoOQxSmnjTyQxQ277BJ/6IRrk2JnPCT2d
	vWHDRSIez5dfQp0ng47B7judMtcF0z7SsJOdn5+P+BPwjzvzfvwe6DNMGjkzU1qjAvXYYewcKwaU/
	qfzLw6nh6+3KB611Fp0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL1v-00DWWi-9h; Thu, 24 Jun 2021 08:48:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL1q-00DWVf-07
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:48:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL1m-00005D-So; Thu, 24 Jun 2021 10:48:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL1m-00046M-IE; Thu, 24 Jun 2021 10:48:02 +0200
Date: Thu, 24 Jun 2021 10:48:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Message-ID: <20210624084802.GW9782@pengutronix.de>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
 <20210623051632.30253-17-s.hauer@pengutronix.de>
 <cf7b8b42-7c58-f1b7-ff25-0e0e32b46b74@pengutronix.de>
 <CAMHeXxNoxju8HzqCPMrMyvCUP67WFH6QBOoWLM-cN5n7jeatKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxNoxju8HzqCPMrMyvCUP67WFH6QBOoWLM-cN5n7jeatKg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:31:30 up 126 days, 11:55, 125 users,  load average: 0.19, 0.33,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_014806_080894_CBD8D3F8 
X-CRM114-Status: GOOD (  34.21  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 16/17] Documentation: Add documentation for device tree
 overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 23, 2021 at 12:37:23PM -0700, Trent Piepho wrote:
> On Tue, Jun 22, 2021 at 11:14 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >
> > Hi,
> >
> > some bikeshedding incoming.
> 
> Well, while we're out here at the shed...
> 
> > Convention seems to be that attributes of the same thing are preceded by a `.', e.g.:
> >
> > global.of.overlay.dir
> > global.of.overlay.compatible
> > global.of.overlay.filepattern
> 
> This looks a lot more Barebox-like to me.
> 
> > (I think the `.' between of and overlay is not a bad idea, as we may decide to have e.g.
> >  global.of.compatible in future)
> 
> Are these only used when bootm is run? Aren't most magivars that work
> this way in the namespace "global.bootm"?
> 
> > > +``global.of_overlay_compatible``
> > > +  This is a space separated list of compatibles. Only overlays matching one of
> > > +  these compatibles will be applied. When this list is empty then all overlays
> > > +  will be applied. Overlays that don't have a compatible are considered being
> > > +  always compatible.
> >
> > Makes sense.
> 
> I've always thought the way Barebox's global.linux.bootargs.*
> variables worked was nice.  It avoids different things that add
> arguments for different reasons from interacting with each other
> trying to write to a single variable.
> 
> There's a similar process with overlays.  Some overlays are based on
> the board variant.  Then an add-on board might bring in an overlay.
> Then another overlay from a second add-on board that is unrelated to
> the 1st.  Then an overlay to configure something at boot time, like
> add an LED trigger at boot.  It's so much easier to just set or unset
> a single variable, than to need to worry about appending or removing
> or modifying a string inside a space separated list.

I see what you mean. I talked to Ahmad and I have now implemented a
filter mechanism for overlays which can be extended when a board has
the need to do so. I think the result is quite flexible and already
quite complex. I am not against using global.linux.bootargs.* style
multi variables for the filepatterns, but maybe we can leave that out
for now until somebody has a concrete need for this.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

