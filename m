Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WcuNO-0002jR-Q8
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 10:26:04 +0000
Date: Wed, 23 Apr 2014 12:25:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423102540.GQ5858@pengutronix.de>
References: <1397131446-4816-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397131446-4816-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 0/3] memtest: small cleanup
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 10, 2014 at 02:04:03PM +0200, Alexander Aring wrote:
> Hi,
> =

> this are three patches to cleanup the memtest command. It removes the the=
 first
> and last if condition in the sdram regions loop. It was stupid to handle =
it in
> that way but since then my skills are improved and it was long time on my=
 list.
> =

> I would be happy if somebody can test it with two banks, again...

I tested it on a Karo TX25 which seems to work fine.

Applied, thanks

Sascha

> =

> - Alex
> =

> (People that I know they have more than one banks boards):
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Teresa G=E1mez <t.gamez@phytec.de>
> Cc: Christian Hemp <c.hemp@phytec.de>
> Cc: Jan Weitzel <j.weitzel@phytec.de>
> =

> Alexander Aring (3):
>   memtest: cleanup error handling
>   memtest: cleanup requests of regions
>   memtest: copyright to UPPER case and fix typo
> =

>  commands/memtest.c | 74 +++++++++++++++++++++++-------------------------=
------
>  common/memtest.c   |  4 +--
>  2 files changed, 34 insertions(+), 44 deletions(-)
> =

> -- =

> 1.9.1
> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
