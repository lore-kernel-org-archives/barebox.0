Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4jeI-00063W-9z
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 05:43:03 +0000
Received: by lblr1 with SMTP id r1so3728231lbl.0
 for <barebox@lists.infradead.org>; Mon, 15 Jun 2015 22:42:38 -0700 (PDT)
Date: Tue, 16 Jun 2015 08:48:51 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150616084851.a398757dc38808bc5e83fe50@gmail.com>
In-Reply-To: <1432828567-14037-9-git-send-email-s.trumtrar@pengutronix.de>
References: <1432828567-14037-1-git-send-email-s.trumtrar@pengutronix.de>
 <1432828567-14037-9-git-send-email-s.trumtrar@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 8/8] mtd: m25p80: use the SPI nor framework
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 28 May 2015 17:56:07 +0200
Steffen Trumtrar <s.trumtrar@pengutronix.de> wrote:

> Use the spi-nor framework for the m25p80 driver to de-duplicate the code =
base
> and follow along with the linux kernel version, so bugfixes or features c=
an be
> easier integrated.
> =

> Based on the Linux v4.1-rc3 version of m25p80.c.
> =

> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/mtd/devices/Kconfig  |   2 +-
>  drivers/mtd/devices/m25p80.c | 998 +++++++------------------------------=
------
>  2 files changed, 166 insertions(+), 834 deletions(-)
> =

> diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
> index 095a4ca0936c..c941767de94c 100644
> --- a/drivers/mtd/devices/m25p80.c
> +++ b/drivers/mtd/devices/m25p80.c

...

> +	{"w25q128"},    {"w25q256"},    {"cat25c11"},
> +	{"cat25c03"},   {"cat25c09"},   {"cat25c17"},   {"cat25128"},
> +
> +        /*
> +         * Generic support for SPI NOR that can be identified by the JED=
EC READ
> +         * ID opcode (0x9F). Use this, if possible.
> +         */
> +        {"nor-jedec"},
>  	{ },
>  };

Please fix whitespaces here.

Please use checkpatch.pl on your patches before submitting!

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
