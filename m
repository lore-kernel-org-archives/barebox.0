Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OTrXh-0007yc-Qv
	for barebox@lists.infradead.org; Wed, 30 Jun 2010 07:17:10 +0000
Date: Wed, 30 Jun 2010 09:17:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100630071707.GR12115@pengutronix.de>
References: <4C2A1F94.8030808@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C2A1F94.8030808@eukrea.com>
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
Subject: Re: Pending patches for 2010.07
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Tue, Jun 29, 2010 at 06:30:12PM +0200, Eric B=E9nard wrote:
> Hi Sascha,
>
> the following patches are needed to get good support of cpuimx35 for  =

> 2010.07 :

What's missing first is the board support. It's currently sitting in
-next.

>
> [PATCH 1/2] imx-ipu-fb: Add board specific hook to enable display
> http://lists.infradead.org/pipermail/barebox/2010-June/001068.html
> [PATCH 2/2] imx-ipu-fb: do not enable framebuffer on startup
> http://lists.infradead.org/pipermail/barebox/2010-June/001069.html

I applied these to next a few moments ago.

>
> [PATCH] eukrea_cpuimx35: boot update
> http://lists.infradead.org/pipermail/barebox/2010-June/001071.html
>
> [PATCH] eukrea_cpuimx35: better usage of LCD enable pins
> http://lists.infradead.org/pipermail/barebox/2010-June/001095.html
> (for this last one, please take the patch sent today, I forget to put v2  =

> in the subject)

These do not apply. I haven't looked into it though.

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
