Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x232.google.com ([2a00:1450:4008:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG7ch-00035O-4V
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 12:51:11 +0000
Received: by mail-bk0-f50.google.com with SMTP id jg9so997987bkc.37
 for <barebox@lists.infradead.org>; Thu, 14 Mar 2013 05:51:04 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <1363265293.232415213@f376.mail.ru>
References: <1363263561.4022.37.camel@mars> <1363265293.232415213@f376.mail.ru>
Date: Thu, 14 Mar 2013 13:51:01 +0100
Message-ID: <1363265461.4022.39.camel@mars>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Omap4 DSS clocks
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, 2013-03-14 at 16:48 +0400, Alexander Shiyan wrote:
> >  Barebox crashes while reading a DSS register:
> > 
> >   $ md 0x48040000
> >   unable to handle paging request at address 0x48040000
> > 
> > I suppose this is due to a turned off clock.
> > 
> > Any hints?
> 
> Probably this is a bug. I reproduced it.
> 
> Try to specify start & end address, like:
> md -l 0x48040000-0x48040010

I get the same effect: it crashes.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
