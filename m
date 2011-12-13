Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaOxy-0001UC-WA
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 09:48:07 +0000
Date: Tue, 13 Dec 2011 10:48:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213094800.GF27267@pengutronix.de>
References: <4EE62D17.1090709@eukrea.com>
 <4EE66F10.7090409@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EE66F10.7090409@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: magicvar breaks tftp (or ramfs)
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 12, 2011 at 10:16:00PM +0100, Eric B=E9nard wrote:
> Hi,
> =

> Le 12/12/2011 17:34, Eric B=E9nard a =E9crit :
> >while upgrading to lastet head, I started to get "unable to handle paging
> >request" when transfering file using tftp (either to nand or to ram).
> >
> >On master it always fail. On 2011.12 : it works (both configured with ma=
ke
> >eukrea_cpuimx35_defconfig and tested on an i.MX35 board)
> >
> > .../...
> >
> >Any idea what could be wrong here ?
> >
> OK I fail to reproduce the problem on an i.MX51 and on an i.MX25 so
> the problem is not in barebox generic code.

Those thing are hard to track down :(

Sometimes it helps to enable

CONFIG_KALLSYMS
CONFIG_ARM_UNWIND

to get a proper stack trace

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
