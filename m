Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U39GT-0002Br-Mc
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 17:58:34 +0000
Received: by mail-la0-f46.google.com with SMTP id fq12so1658443lab.5
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2013 09:58:30 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1360167029-15789-1-git-send-email-plagnioj@jcrosoft.com>
References: <1360167029-15789-1-git-send-email-plagnioj@jcrosoft.com>
Date: Wed, 6 Feb 2013 21:58:30 +0400
Message-ID: <CAA4bVAHWSXsV=RFkOd9_WRh-OO_Aregp6XceAD18airVgu+4fw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] miitool: add GbE support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 6 February 2013 20:10, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> based on
> http://ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1.60-24.2.diff.gz
> + fix
>
> barebox@Atmel sama5d3x-ek:/
> $ miitool -v -v -v /dev/phy0
> negotiated 1000baseT-HD flow-control, link ok

negotiated 1000baseT-HD, but below you can see that both partners are
1000baseT-FD capable...

>   registers for MII PHY:
>     1140 796d 0022 1611 05e1 cde1 000d 2001
>     41d9 0300 3c00 8105 2222 0000 0000 3000
>     0000 00f0 0000 0006 54fe 0000 0000 0200
>     0000 0000 0000 0000 0000 0000 0000 0348
>   product info: vendor 00:08:85, model 33 rev 1
>   basic mode:   autonegotiation enabled
>   basic status: autonegotiation complete, link ok
>   capabilities: 1000baseT-HD 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   advertising:  1000baseT-HD 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
>   link partner: 1000baseT-HD 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/miitool.c |   62 +++++++++++++++++++++++++++++++++++++---------------
>  1 file changed, 44 insertions(+), 18 deletions(-)
>
> diff --git a/commands/miitool.c b/commands/miitool.c
> index 3a9ac45..207f197 100644
> --- a/commands/miitool.c
> +++ b/commands/miitool.c
> @@ -38,6 +38,8 @@
>  #include <xfuncs.h>
>  #include <linux/mii.h>
>
> +#define MII_BASIC_MAX  (MII_STAT1000 + 1)
> +
>  static u16 mdio_read(int fd, int offset)
>  {
>         int ret;
> @@ -66,25 +68,45 @@ static const struct {
>
>  const struct {
>         char    *name;
> -       u_short value;
> +       u_short value[2];
>  } media[] = {
>         /* The order through 100baseT4 matches bits in the BMSR */
> -       { "10baseT-HD", ADVERTISE_10HALF },
> -       { "10baseT-FD", ADVERTISE_10FULL },
> -       { "100baseTx-HD",       ADVERTISE_100HALF },
> -       { "100baseTx-FD",       ADVERTISE_100FULL },
> -       { "100baseT4",  LPA_100BASE4 },
> -       { "100baseTx",  ADVERTISE_100FULL | ADVERTISE_100HALF },
> -       { "10baseT",    ADVERTISE_10FULL | ADVERTISE_10HALF },
> +       { "10baseT-HD",         {ADVERTISE_10HALF} },
> +       { "10baseT-FD",         {ADVERTISE_10FULL} },
> +       { "100baseTx-HD",       {ADVERTISE_100HALF} },
> +       { "100baseTx-FD",       {ADVERTISE_100FULL} },
> +       { "100baseT4",          {LPA_100BASE4} },
> +       { "100baseTx",          {ADVERTISE_100FULL | ADVERTISE_100HALF} },
> +       { "10baseT",            {ADVERTISE_10FULL | ADVERTISE_10HALF} },
> +
> +       { "1000baseT-HD",       {0, ADVERTISE_1000XHALF} },
> +       { "1000baseT-FD",       {0, ADVERTISE_1000XFULL} },
> +       { "1000baseT",          {0, ADVERTISE_1000XHALF | ADVERTISE_1000XFULL} },

Why ADVERTISE_1000XHALF and ADVERTISE_1000XFULL?
We have ADVERTISE_1000HALF and ADVERTISE_1000FULL macros.

>  };
>  #define NMEDIA (sizeof(media)/sizeof(media[0]))
>
> -static char *media_list(int mask, int best)
> +static char *media_list(unsigned mask, unsigned mask2, int best)

static const char *media_list

>  {
>         static char buf[100];
>         int i;
>
>         *buf = '\0';
> +
> +       if (mask & BMCR_SPEED1000) {
> +               if (mask2 & ADVERTISE_1000HALF) {
> +                       strcat(buf, " ");
> +                       strcat(buf, "1000baseT-HD");
> +                       if (best)
> +                               goto out;
> +               }
> +               if (mask2 & ADVERTISE_1000FULL) {
> +                       strcat(buf, " ");
> +                       strcat(buf, "1000baseT-FD");
> +                       if (best)
> +                               goto out;
> +               }

Here and in the original patch 1000HALF is "better" than 1000FULL.
AMHO it is strange.

> +       }
> +
>         mask >>= 5;
>         for (i = 4; i >= 0; i--) {
>                 if (mask & (1 << i)) {
> @@ -94,7 +116,7 @@ static char *media_list(int mask, int best)
>                                 break;
>                 }
>         }
> -
> +out:
>         if (mask & (1 << 5))
>                 strcat(buf, " flow-control");
>
> @@ -105,15 +127,15 @@ static int show_basic_mii(int fd, int verbose)
>  {
>         char buf[100];
>         int i, mii_val[32];
> -       int bmcr, bmsr, advert, lkpar;
> +       unsigned bmcr, bmsr, advert, lkpar, bmcr2, lpa2;
>
>         /* Some bits in the BMSR are latched, but we can't rely on being
>            the only reader, so only the current values are meaningful */
>         mdio_read(fd, MII_BMSR);
> -       for (i = 0; i < ((verbose > 1) ? 32 : 8); i++)
> +       for (i = 0; i < ((verbose > 1) ? 32 : MII_BASIC_MAX); i++)
>                 mii_val[i] = mdio_read(fd, i);
>
> -       if (mii_val[MII_BMCR] == 0xffff) {
> +       if (mii_val[MII_BMCR] == 0xffff  || mii_val[MII_BMSR] == 0x0000) {

double whitespace here

>                 fprintf(stderr, "  No MII transceiver present!.\n");
>                 return -1;
>         }
> @@ -123,6 +145,8 @@ static int show_basic_mii(int fd, int verbose)
>         bmsr = mii_val[MII_BMSR];
>         advert = mii_val[MII_ADVERTISE];
>         lkpar = mii_val[MII_LPA];
> +       bmcr2 = mii_val[MII_CTRL1000];
> +       lpa2 = mii_val[MII_STAT1000];
>
>         *buf = '\0';
>         if (bmcr & BMCR_ANENABLE) {
> @@ -130,7 +154,7 @@ static int show_basic_mii(int fd, int verbose)
>                         if (advert & lkpar) {
>                                 sprintf(buf, "%s%s, ", (lkpar & LPA_LPACK) ?
>                                         "negotiated" : "no autonegotiation,",
> -                                       media_list(advert & lkpar, 1));
> +                                       media_list(advert & lkpar, bmcr2 & lpa2 >> 2, 1));
>                         } else {
>                                 sprintf(buf, "autonegotiation failed, ");
>                         }
> @@ -139,7 +163,9 @@ static int show_basic_mii(int fd, int verbose)
>                 }
>         } else {
>                 sprintf(buf, "%s Mbit, %s duplex, ",
> -                       (bmcr & BMCR_SPEED100) ? "100" : "10",
> +                       ((bmcr2 & (ADVERTISE_1000HALF | ADVERTISE_1000FULL)) & lpa2 >> 2)
> +                       ? "1000"
> +                       : (bmcr & BMCR_SPEED100) ? "100" : "10",
>                         (bmcr & BMCR_FULLDPLX) ? "full" : "half");
>         }
>
> @@ -196,15 +222,15 @@ static int show_basic_mii(int fd, int verbose)
>                 if (bmsr & BMSR_RFAULT)
>                         printf("remote fault, ");
>                 printf((bmsr & BMSR_LSTATUS) ? "link ok" : "no link");
> -               printf("\n  capabilities:%s", media_list(bmsr >> 6, 0));
> -               printf("\n  advertising: %s", media_list(advert, 0));
> +               printf("\n  capabilities:%s", media_list(bmsr >> 6, bmcr2, 0));
> +               printf("\n  advertising: %s", media_list(advert, lpa2 >> 2, 0));
>
>  #define LPA_ABILITY_MASK       (LPA_10HALF | LPA_10FULL \
>                                 | LPA_100HALF | LPA_100FULL \
>                                 | LPA_100BASE4 | LPA_PAUSE_CAP)
>
>                 if (lkpar & LPA_ABILITY_MASK)
> -                       printf("\n  link partner:%s", media_list(lkpar, 0));
> +                       printf("\n  link partner:%s", media_list(lkpar, bmcr2, 0));
>                 printf("\n");
>         }
>
> --
> 1.7.10.4
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
