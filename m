Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Swg5y-0002WW-21
 for barebox@lists.infradead.org; Wed, 01 Aug 2012 21:04:42 +0000
Received: by bkcji2 with SMTP id ji2so4162679bkc.36
 for <barebox@lists.infradead.org>; Wed, 01 Aug 2012 14:04:40 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20120801185644.52c45c4b@eb-e6520>
References: <loom.20120719T173418-826@post.gmane.org>
 <20120719161139.GB30009@pengutronix.de>
 <loom.20120719T224910-551@post.gmane.org>
 <20120720080435.GP30009@pengutronix.de> <1343827988.3466.76.camel@mars>
 <20120801185644.52c45c4b@eb-e6520>
Date: Wed, 01 Aug 2012 23:04:38 +0200
Message-ID: <1343855078.3466.85.camel@mars>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC][PATCH] pcm043: usb support --not working--
To: Eric =?ISO-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org, Jerry Kirk <jkirk865@gmail.com>

On Wed, 2012-08-01 at 18:56 +0200, Eric B=E9nard wrote: =

> > The clock settings seems to be the same as for eukrea_cpuimx35. Eric:
> > Does USB work for you on your board?
> > =

> thanks for the heads up : now it works.

great :-)

> > Sascha, I currently have no working config for kernel >=3D3.5 to check =
for
> > clocks in debugfs.
> > =

> > Any thoughts on this?
> > =

> try to copy the config in that patch I just sent ;-)

I did - without success. I suppose the external phy needs to be
configured properly.

When you type the command "usb", you are getting a list of connected
devices. Can you execute command "usb" a second and third time with the
same result?

If yes, I think the clocks on pcm043 aren't set properly.


Thanks,
 -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
