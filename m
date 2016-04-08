Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aoaFL-0008OX-NP
 for barebox@lists.infradead.org; Fri, 08 Apr 2016 17:31:05 +0000
Date: Fri, 8 Apr 2016 19:30:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160408173040.GM9102@pengutronix.de>
References: <CACqcpZCMfYE=-5T+m=+fT+TM4gqmPk_6h4AqZoLVSLPL7scBkg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACqcpZCMfYE=-5T+m=+fT+TM4gqmPk_6h4AqZoLVSLPL7scBkg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: support of arm64 architecture
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

Hi Rapha=EBl,

On Fri, Apr 08, 2016 at 02:01:21PM +0200, Rapha=EBl Poggi wrote:
> Hi all,
> =

> I am working on porting barebox on arm64 architecture.
> =

> So I have some questions about it:
> =

> - Is there any interest for barebox to support this architecture ?

Definitely, yes.

> =

> - My port is running at EL1 for the moment, does the bootloader have
> to run at EL3 ? If yes, do you have hint to achieve this ?
>       I think UEFI is running at EL3, but I am confused about that,
> what is the difference between UEFI and barebox ? Are they both
> booloader ? (I guess it is a "noob" question :/)

UEFI is an interface to the firmware whereas barebox is a firmware. We
could implement a UEFI interface for barebox (the U-Boot guys already
did this). Also barebox can run on top of firmware with a (U)Efi
interface.

> =

> - I have some issues with malloc, when I use tlsf all malloc failed,
> but not with dlmalloc implementation, do you have an idea about this ?

Do you have TLSF_64BIT defined? You may have defined it automatically
when you have CONFIG_64BIT defined, but if not tlsf malloc will not
work.

> =

> =

> At the moment the current limitations of my port are :
>      - MMU not implemented
>      - barebox running at EL1
>      - barebox env not working
>      - only test on qemu
> =

> If you want to test it:
> https://github.com/raphui/barebox/tree/dev/armv8a_cleanup

From a first look it the arm64 code looks very familiar. Do you think we
could merge it into the arm architecture rather than creating a new
architecture?

I don't know in which exception level barebox should finally run in, but
I don't think that's a showstopper.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
