Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YPnxF-00079S-9c
 for barebox@lists.infradead.org; Mon, 23 Feb 2015 08:01:26 +0000
Date: Mon, 23 Feb 2015 09:01:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150223080102.GL12209@pengutronix.de>
References: <1424419220.4065.15.camel@lws-gamez.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424419220.4065.15.camel@lws-gamez.phytec.de>
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
Subject: Re: bareboxenv: console bootargs
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Fri, Feb 20, 2015 at 09:00:20AM +0100, Teresa G=E1mez wrote:
> Hello,
> =

> I have noticed that the console=3D bootarg parameter in the latest
> enviroment is set in the /env/nv/linux.bootargs.base variable. But it is
> also set over common/console.c in the variable linux.bootargs.console
> which results here in two console=3D parameter:
> =

> commandline: console=3DttyO0,115200n8 console=3DttyO0,115200
> root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rw rootwait
> =

> Wouldn't it be the right way to set the linux.bootargs.console instead
> of the linux.bootargs.base in the enviroment. If it needs to be
> overwritten at all...

Indeed, linux.bootargs.console would be a better variable for the
console bootargs. The OMAP and i.MX boards don't need this setting
because they set it in common/console.c using the linux_console_name
variable. I just sent a patch to fix that.

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
