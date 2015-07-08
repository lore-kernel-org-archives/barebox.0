Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCoWU-0002Km-EX
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 12:32:23 +0000
Date: Wed, 8 Jul 2015 14:32:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150708123200.GH18700@pengutronix.de>
References: <OF2C7718AB.DA224B8D-ONC1257E7C.002375F3-C1257E7C.0023CCF2@beijer.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF2C7718AB.DA224B8D-ONC1257E7C.002375F3-C1257E7C.0023CCF2@beijer.se>
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
Subject: Re: Boot using SPI-NOR device
To: joacim.zetterling@westermo.se
Cc: barebox@lists.infradead.org

On Wed, Jul 08, 2015 at 08:31:02AM +0200, joacim.zetterling@westermo.se wro=
te:
>    Hi
> =

>    I have some problem booting a linux from a spi-nor device (Spansion,
>    s25fl512s). There is no trouble booting up barebox from the first
>    partition.
>    When I debugged our system (ARM based) I find out that when we probe t=
he
>    file system, we get -22 as a result code from a memmap(s->fd, PROT_REA=
D)
>    function call.
>    With further investigations I see that memmap is set to 0 with no ops =
is
>    defined, witch probably means that I do not have any memory mapped spi.
> =

>    I add my partitions like this
>    =A0addpart -n /dev/s25fl512s
>    2048k(barebox),24M(primary),24M(reserved),2048k(config),4096k(barebox-=
environment)
> =

>    And my dts section for the spi looks like this
>    =A0...
>    =A0...
>    =A0spi: spi@10600 {
>    =A0 =A0spi-flash@0 {
>    =A0 =A0 =A0 #address-cells =3D <1>;
>    =A0 =A0 =A0 #size-cells =3D <1>;
>    =A0 =A0 =A0 compatible =3D "s25fl512s", "nor-jedec";
>    =A0 =A0 =A0 spi-max-frequency =3D <20000000>;
>    =A0 =A0 =A0 reg =3D <0>; /* Chip select 0 */
>    =A0 };
>    };
>    ...
>    ...
> =

>    I also have all the configurations for spi, mtd and env in place.
>    And I have no issues reading/writing/erasing the spi flash.
> =

>    My simple question is. How do I enable memory mapped spi-nor support in
>    barebox?

That's not possible because spi-nor is never memory mapped. The good
news is that you won't need this. What exactly are you doing to get the
memmap error? Are you trying to use the 'go' command to start something
from spi-nor? Use bootm instead.

Regards,
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
