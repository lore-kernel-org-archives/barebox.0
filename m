Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OmLS4-0004C6-75
	for barebox@lists.infradead.org; Fri, 20 Aug 2010 06:51:45 +0000
Date: Fri, 20 Aug 2010 08:51:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100820065139.GG8693@game.jcrosoft.org>
References: <1282190002-6807-1-git-send-email-plagnioj@jcrosoft.com>
	<20100819082922.GE27749@pengutronix.de>
	<20100820032101.GA8693@game.jcrosoft.org>
	<20100820063822.GH27749@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100820063822.GH27749@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add Menu Framework
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > > 
> > > - commands should always return positive error codes. A good practice is
> > >   to pass -E* values up to do_menu, use strerror() to print the error
> > >   code and return 1 afterwards.
> > I agree but but of the time there is no -E* related to this Framework
> > 
> > so do u want to create them?
> 
> No. The use of strerror might not be appropriate here, but all functions
> used should return some error value instead of -1, with -EINVAL as
> fallback when no better value can be found.
ok
> 
> > > 
> > > There is a 'break' missing here.
> > > 
> > fix
> > > > +			cm.action = action_add;
> > > > +			break;
> > > > +		case 'r':
> > > > +			cm.action = action_remove;
> > > > +			break;
> > > > +		case 'c':
> > > > +			cm.command = optarg;
> > > > +			break;
> > > 
> > > Thank you for this work. I really appreciate it ;)
> > Your welcome
> > My goal was to make the bootloader more easy to use for end user and
> > device without keyboard
> 
> Do you know openmoko? They also have a menu in U-Boot, but it's more or
> less hardcoded to their exact needs.
yeah I known, Denk force me to take a look at it when I send my patch to u-boot
ML but as you said everything is hardcoded and very limited
and for the record my code is NOT based on there work :)
so as I said him I do not like there stuff and think this one is as you said
flexible and simple

> > 
> > I plan to have this also via FrameBuffer and with a background image
> > so maybe barebox could replace grub & co aneday :)
> 
> A long way to go ;)
but a good target :-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
