Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pv0-f177.google.com ([74.125.83.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OCqLL-0002yf-MG
	for barebox@lists.infradead.org; Fri, 14 May 2010 08:34:04 +0000
Received: by pvg3 with SMTP id 3so562531pvg.36
	for <barebox@lists.infradead.org>; Fri, 14 May 2010 01:34:02 -0700 (PDT)
From: "Marc Reilly" <marc@cpdesign.com.au>
References: <4BEBD0FD.6090504@erwinrol.com>	<00b101caf30b$85b54640$911fd2c0$@cpdesign.com.au>
	<4BECF779.50306@erwinrol.com>
In-Reply-To: <4BECF779.50306@erwinrol.com>
Date: Fri, 14 May 2010 18:33:56 +1000
Message-ID: <00be01caf340$34440550$9ccc0ff0$@cpdesign.com.au>
MIME-Version: 1.0
Content-language: en-au
Reply-To: marc@cpdesign.com.au
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
Subject: RE: Watchdog support
To: 'Erwin Rol' <mailinglists@erwinrol.com>, barebox@lists.infradead.org


> >> does barebox have any watchdog support ?
> >
> > I think the answer to your question is really dependent on what
> > platform you are using, and exactly what you want the watchdog to do.
> 
> Platform does not really matter here, I mean does barebox trigger the
> watchdog if it is doing lengthy operations like writing flash to prevent
it from
> being reset in the middle of the operation. That has little to do with if
the
> platform has a watchdog or not.
> 
> So let me changes the question a bit;
> 
> Does barebox have a standard API to trigger and program a watchdog ?

I'm definitely not an authority on this, but I think not. From a quick scan
the strategy is to disable the wdt if it's going to be a problem. There
seems to be some API to trigger a reset via the wdt, but that's all.
Platform may be an issue because the platform may not implement those
functions.
(Note I didn't look very hard - I invite anyone to correct me).

Cheers
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
