Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bknh6-0004i3-H5
 for barebox@lists.infradead.org; Fri, 16 Sep 2016 07:36:21 +0000
Date: Fri, 16 Sep 2016 09:35:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160916073558.yl57a7c5icpojztg@pengutronix.de>
References: <1473935897-9252-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473935897-9252-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 0/4] Some updates for arm/mvebu
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Thu, Sep 15, 2016 at 12:38:13PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> these are the first few patches I did while creating a port for a Netgear
> RN2120.
> =

> Best regards
> Uwe
> =

> Uwe Kleine-K=F6nig (4):
>   ARM: mvebu_defconfig: oldconfig
>   ARM: mvebu_defconfig: enable all machines, AEABI, nand and net driver
>   ARM: mvebu: select HAVE_DEFAULT_ENVIRONMENT_NEW
>   net: mvneta: clean txdesc before usage
> =

>  arch/arm/Kconfig                 |  1 +
>  arch/arm/configs/mvebu_defconfig | 18 ++++++++++++------
>  drivers/net/mvneta.c             |  1 +
>  3 files changed, 14 insertions(+), 6 deletions(-)

Applied, thanks

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
