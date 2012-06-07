Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SchCh-0000zy-6V
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 18:13:03 +0000
Date: Thu, 7 Jun 2012 20:13:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120607181301.GN30400@pengutronix.de>
References: <1338984002.2874.12.camel@andre>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338984002.2874.12.camel@andre>
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
Subject: Re: NOR boot support for barebox on the mini2440
To: =?iso-8859-15?Q?Andr=E9?= Lochotzke <Andre.Lochotzke@stud.fh-erfurt.de>
Cc: oselas@community.pengutronix.de, barebox@lists.infradead.org

Hi Andr=E9,

On Wed, Jun 06, 2012 at 02:00:02PM +0200, Andr=E9 Lochotzke wrote:
> Hello,
> =

> for a small student project I want to add support to barebox for booting
> from the NOR flash on the mini2440. I hope that it will not be too
> difficult since barebox can already boot from NOR on different boards.
> =

> Did somebody already do some work to enable NOR boot on the mini2440?
> =

> Do you have any suggestion of where I should start?
> =

> There is already an u-boot version since 2010 [1] that supports it. The
> code can be found here [2].
> =

> Are the u-boot and barebox NOR subsystems very different? How much time
> do you think would it take to get this done?

Starting barebox itself from NOR has nothing to do with the NOR
subsystem. I'm not familiar with the mini2440, so I can't tell what you
have to do to start barebox from NOR. However, adding a NOR device to
barebox (so that you can access NOR flash from within babreox) is
trivial, just add the following:

add_cfi_flash_device(-1, base_address, size, 0);

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
