Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTie6-0001Pi-8n
 for barebox@lists.infradead.org; Thu, 23 May 2019 08:00:16 +0000
Date: Thu, 23 May 2019 10:00:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190523080012.mbluexhhb2fbzwy6@pengutronix.de>
References: <20190522171728.10984-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522171728.10984-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] images: remove forgotten occurences of *.imx-sram-img
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, May 22, 2019 at 07:17:28PM +0200, Ulrich =D6lmann wrote:
> Starting with commit 5a1a5ed2537d ("ARM: images: use piggydata") this fil=
e type
> is not known anymore, so clean up.
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  images/.gitignore | 1 -
>  images/Makefile   | 2 +-
>  2 files changed, 1 insertion(+), 2 deletions(-)

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
