Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHXIf-00006e-1S
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 09:23:49 +0000
Date: Tue, 10 Apr 2012 11:23:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120410092336.GD3852@pengutronix.de>
References: <CAO-mwNcOBNL-LFuyK9EbxUBqxLU3GAWUi61E40J5qunDP+n+ZA@mail.gmail.com>
 <CAO-mwNdKa4fukB23m_F1g=axhqw3S2stb2C6JbPXiob1Ty=xhg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO-mwNdKa4fukB23m_F1g=axhqw3S2stb2C6JbPXiob1Ty=xhg@mail.gmail.com>
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
Subject: Re: OMAP4 Panda - MMC access broken
To: Anand Gadiyar <gadiyar@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Apr 02, 2012 at 08:07:16PM +0530, Anand Gadiyar wrote:
> On Fri, Mar 30, 2012 at 10:04 PM, Anand Gadiyar <gadiyar@gmail.com> wrote:
> 
> > Hi all,
> >
> > I've just started playing with barebox on OMAP4. I see that with "Release
> > v2011.11.0", my Panda could access the SD card contents, but with the
> > current release it can no longer do so.
> >
> > Git bisect shows commit 82db23d3f4c1de25bbd4b222a3bd9e81d00414f8 (Use
> > generic block layer to access the drives and do partition parsing) is when
> > it stopped working.
> >
> > Any pointers?
> >
> > Thanks in advance,
> > Anand
> >
> >
> Found the problem. I was using a 4GB SD card with just a single FAT32
> partition. The pentry.size is reported as 7744449 which fails the
> check_offset_value() call.
> I think this is the same issue Sanjeev reported in February.
> 
> Below patch seems to fix the issue for now. But I'm not sure what's the
> correct way to fix this.

The correct way would be to make all this stuff 64bit types. I am
working for this for quite some time and have a series for an older
barebox doing this. I would have to rebase it.

Sascha

> 
> Index: barebox/common/partitions.c
> ===================================================================
> --- barebox.orig/common/partitions.c
> +++ barebox/common/partitions.c
> @@ -129,8 +129,6 @@ static void __maybe_unused try_dos_parti
>                 /* do we have to ignore this partition due to limitations?
> */
>                 if (check_offset_value(pentry.first_sec) != 0)
>                         continue;
> -               if (check_offset_value(pentry.size) != 0)
> -                       continue;
> 
>                 if (pentry.first_sec != 0) {
>                         pd->parts[pd->used_entries].first_sec =
> pentry.first_sec;

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
