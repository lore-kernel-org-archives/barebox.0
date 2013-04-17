Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USPBY-0000jd-HZ
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 10:01:57 +0000
Date: Wed, 17 Apr 2013 12:01:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130417100148.GQ1906@pengutronix.de>
References: <1366188021.710900767@f16.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366188021.710900767@f16.mail.ru>
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
Subject: Re: Boot from SD fail after 2013.02
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Apr 17, 2013 at 12:40:21PM +0400, Alexander Shiyan wrote:
>  Hello.
> =

> I found strange problem with boot from SD after 2013.02 release.
> Using a git-bisect I found problem start point, so:
> =

> 8e19ee94ab7aea50635845de31daef1b593e1205 is the first bad commit
> commit 8e19ee94ab7aea50635845de31daef1b593e1205
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:=A0=A0 Fri Jan 25 23:39:20 2013 +0100
> =

> =A0=A0=A0 ARM: Setup stack at end of SDRAM
> =A0=A0 =A0
> =A0=A0=A0 Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> =

> =

> Exploring this commit does not helps me to have any idea how it
> depends on SD-boot.
> My target is ARM imx51 ConnectCore board.
> Also I test it with freescale_mx51_babbage_defconfig since some
> stuff is compatible with ConnectCore board.
> Can anyone confirm this issue or have a solution?

Without this patch applied, can you post the output of the 'iomem'
command and confirm that the SDRAM size is detected correctly?

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
