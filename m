Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYY3i-0001tC-9F
 for barebox@lists.infradead.org; Wed, 14 Nov 2012 08:10:54 +0000
Date: Wed, 14 Nov 2012 09:10:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121114081051.GG10369@pengutronix.de>
References: <CAHkwnC-dDfPesg5vy5V2rj7vdY_DH9cjfJ3gCVsm8xY-DPf35A@mail.gmail.com>
 <20121112075536.GP10369@pengutronix.de>
 <CAHkwnC_FXJ3reNcwDuxhsC=fSG-dDSgg+7njS5sy7aCG5QCRoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHkwnC_FXJ3reNcwDuxhsC=fSG-dDSgg+7njS5sy7aCG5QCRoQ@mail.gmail.com>
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
Subject: Re: defaultenv-2: how to update a flash partition?
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 13, 2012 at 12:10:45PM +0100, Fabio Porcedda wrote:
> On Mon, Nov 12, 2012 at 8:55 AM, Sascha Hauer <s.hauer@pengutronix.de>wrote:
> 
> > On Fri, Nov 09, 2012 at 12:06:38PM +0100, Fabio Porcedda wrote:
> > > Hi all,
> > >
> > > I want to use the defaultenv-2 but i don't find any more the "update"
> > > command
> > > like in the defaultenv.
> > > What is the recommended way to update a flash partition in the new
> > > environment?
> >
> > erase /dev/env0
> > cp /mnt/tftp/your-new-env /dev/env0
> >
> >
> Thanks, it worked.
> 
> 
> > (I was thinking about adding a -e parameter to cp to eventually skip the
> > first step)
> >
> 
> It seems a nice addition for me.

I'll look into it.

> 
> There is some plane in the future to add a "update" command, like in
> "defaultenv"?

I have no plans doing so. Basically not because I do not want such a
command, but because I do not know what such should do. The old command
took parameters like 'mmc' or 'net' which was hard to dispatch into
the different files and does not work with multiple mmc cards, so I
thought doing it completely on file level would be enough (with the
above additions added, maybe).

> 
> Thanks for the help and the great work with barebox, i like it very much.

Thanks. I appreciate that ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
