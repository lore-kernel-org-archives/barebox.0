Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivg1-0003s9-VN
 for barebox@lists.infradead.org; Thu, 04 Jul 2019 06:57:07 +0000
Date: Thu, 4 Jul 2019 08:57:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190704065704.osy5lojoqrt5n5yb@pengutronix.de>
References: <20190703064004.24169-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703064004.24169-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] scripts: socfgpa_import_preloader: simplify procedure
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jul 03, 2019 at 08:40:04AM +0200, Steffen Trumtrar wrote:
> Instead of jumping through hoops using the bsp-editor gui, just use the
> underlying python script for importing.
> ---
>  Documentation/boards/socfpga.rst |  9 +--------
>  scripts/socfpga_import_preloader | 11 ++++++++---
>  2 files changed, 9 insertions(+), 11 deletions(-)

08:55 < sha> str: Kann ich dein Signed-off-by f=FCr "scripts: socfgpa_impor=
t_preloader: simplify procedure" bekommen ;)
08:55 < str> sha: huppala, schreibst du's drunter? :)

Yes. Applied, thanks

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
