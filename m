Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zgoih-0008By-2D
 for barebox@lists.infradead.org; Tue, 29 Sep 2015 06:48:59 +0000
Date: Tue, 29 Sep 2015 08:48:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150929064836.GN7858@pengutronix.de>
References: <1443196132-573-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443196132-573-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 1/6] eukrea-cpuimx25: fix boot
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org, Florian Vallee <fvallee@eukrea.fr>

On Fri, Sep 25, 2015 at 05:48:47PM +0200, Eric B=E9nard wrote:
> From: Florian Vallee <fvallee@eukrea.fr>
> =

> we need to disable second SD chip select properly else the SDRAM size
> detection will detect it but there is no memory connected so the boot
> will fail
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> Signed-off-by: Florian Vallee <fvallee@eukrea.fr>

Applied all, thanks

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
