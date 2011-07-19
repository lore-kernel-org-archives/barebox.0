Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjCkN-0003kR-JM
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:02:16 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id BC90BFFADC7
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:02:39 +0200 (CEST)
Date: Tue, 19 Jul 2011 17:45:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110719154522.GI5727@game.jcrosoft.org>
References: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
	<CAA4bVAHUF+VuSPgr1EBt1uCP+r5AnHvsw19-cJ1UNWwHKxNfWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAHUF+VuSPgr1EBt1uCP+r5AnHvsw19-cJ1UNWwHKxNfWw@mail.gmail.com>
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
Subject: Re: [PATCH 1/7] device: introduce resource structure to simplify
	resource declaration
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On 17:40 Tue 19 Jul     , Antony Pavlov wrote:
> On 16/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> > and add multi resource per device support
> >
> > for now we keep the old map_base and size temporary but will switch all of
> > the used step by step to them resource way
> >
> > and mirror the first resource to the map_base and size if available
> >
> 
> > +++ b/include/linux/ioport.h
> ...
> > +struct resource {
> > +	resource_size_t start;
> > +	resource_size_t size;
> > +	const char *name;
> > +	unsigned long flags;
> > +};
> 
> In linux-2.6.39/include/linux/ioport.h:
> 
> struct resource {
>         resource_size_t start;
>         resource_size_t end;
>         const char *name;
>         unsigned long flags;
>         struct resource *parent, *sibling, *child;
> };
> 
> So there is incompatability: barebox has 'size' field, but linux  has
> 'end' field instead.
> 
> Can you comment this, please?
in barebox we use size no end in the resource since the begenning

so I choose to keep it this way

and avoid the calcul end - start

if u use helper resource_size() you will no notice

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
