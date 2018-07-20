Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgRSA-0005qc-FA
 for barebox@lists.infradead.org; Fri, 20 Jul 2018 09:12:00 +0000
Date: Fri, 20 Jul 2018 11:11:45 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180720091145.kz2ksyeeumeqf73p@pengutronix.de>
References: <CAEp+FuA3HtmHQm5GsZ6DAJAYbOKJDUdVHBV4pevrHoswQ4Ktcw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEp+FuA3HtmHQm5GsZ6DAJAYbOKJDUdVHBV4pevrHoswQ4Ktcw@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MFGTools support in barebox
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 18, 2018 at 09:39:23AM +0200, Mihaita Ivascu wrote:
> Hello,
> =

>      I would like to flash a barebox image on NAND for a Phytec imx6ul
> evk board using MFGTools.
>      I have added support for UTP protocol in kernel image so commands
> could be "pushed" using MFGtools app from Windows.
>      But obviously I cannot push barebox_update command to Linux.
>      So I think I have two options:
> =

> 1) porting barebox_update command to Linux which I do not find it so
> easy. I am already working on it
> 2) adding UTP support in barebox so I could just load the barebox
> image in RAM using MFGtools, there a utp device node would be created
> and then I could push barebox specific commands directly from
> MFGtools.
>       I have added UTP support in linux USB gadget code but I see
> barebox USB gadget code is quite different and not all functionality
> are in place so I also struggle a bit of porint gUTP patches from
> Linux to barebox.
>      Does anybody have any experience with this topic or coud advise
> me on how to procee?

Why are you sticked to MFGTools? barebox can do fastboot which should
work from Windows just fine.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
