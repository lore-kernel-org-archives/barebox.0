Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gt6hx-0006k2-Pp
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 08:12:55 +0000
Date: Mon, 11 Feb 2019 09:12:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190211081251.lu3jkpuumkbquxzr@pengutronix.de>
References: <20190208071526.19150-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190208071526.19150-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH 0/7] Harmonize barebox' and dt-utils' state code
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Feb 08, 2019 at 08:15:19AM +0100, Ulrich =D6lmann wrote:
> These patches remove further differences between the common codebase of b=
arebox'
> and dt-utils' state implementation.
> =

> Ulrich =D6lmann (7):
>   common: state: fix compiler warnings about wrong type conversion in
>     messages
>   common: state: fix formatting of "off_t" variables
>   common: state: fix formatting of "uint32_t" variables
>   common: state: harmonize code with dt-utils
>   common: state: harmonize code with dt-utils
>   common: state: harmonize code with dt-utils
>   common: state: harmonize code with dt-utils
> =


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
