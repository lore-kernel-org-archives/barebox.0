Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.jumo.net ([193.24.15.13])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eoscP-0003bM-Ln
 for barebox@lists.infradead.org; Thu, 22 Feb 2018 15:17:16 +0000
In-Reply-To: <20180222075602.xvfvar5kwsfih43x@pengutronix.de>
Message-ID: <OF703AF782.4393DB34-ONC125823C.0053174E-C125823C.0053F114@LocalDomain>
From: Eugen.Wiens@JUMO.net
Date: Thu, 22 Feb 2018 16:16:51 +0100
References: <20180221082638.30664-1-eugen.wiens@jumo.net>
 <20180222075602.xvfvar5kwsfih43x@pengutronix.de>
MIME-Version: 1.0
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
Subject: Antwort: Re: [PATCH] console: added colored print out of log levels
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer <s.hauer@pengutronix.de> schrieb am 22.02.2018 08:56:02:

> Von: Sascha Hauer <s.hauer@pengutronix.de>
> An: Eugen Wiens <eugen.wiens@jumo.net>
> Kopie: barebox@lists.infradead.org
> Datum: 22.02.2018 08:56
> Betreff: Re: [PATCH] console: added colored print out of log levels
> =

> Hi Eugen,
> =

> On Wed, Feb 21, 2018 at 09:26:38AM +0100, Eugen Wiens wrote:
> > When the system is booting the warnings and errors are not be quickly
> > discovered. With this improvement the errors are colored red, the
> > warnings yellow and the notices blue.
> =

> I polished the patch a bit to match the barebox coding style. =

That sounds good for me and I will working on me, so that the next patches
will be more compliant to barebox coding style.

> However,
> there is still one detail I do not like. Some pr_err() messages have
> pr_err("ERROR: bla\n"). With colored console we now get:
> "ERROR: ERROR: bla". Now we could say we remove all "ERROR:" strings
> from the callers, but then we would have no "ERROR:" at all when
> colored console is disabled. The obvious solution would be to always
> add "ERROR:" to the messages, be it colored or not.
> I applied it for now, but I think this is not the final solution.
cool. Thanks.

> =

> Sascha
> =

> --------------------------------8<-----------------------------------
> =

> From a019f725ab48536a4bb93ec2dea319d9fc5206c5 Mon Sep 17 00:00:00 2001
> From: Eugen Wiens <eugen.wiens@jumo.net>
> Date: Wed, 21 Feb 2018 09:26:38 +0100
> Subject: [PATCH] console: added colored print out of log levels
> =

> When the system is booting the warnings and errors are not be =

> quickly discovered. With this improvement the errors are colored =

> red, the warnings yellow and the notices blue.
> =

> Signed-off-by: Eugen Wiens <eugen.wiens@jumo.net>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/console_common.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> =

> diff --git a/common/console_common.c b/common/console_common.c
> index 0202345a62..00e020bd35 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -33,6 +33,15 @@
> =

>  #ifndef CONFIG_CONSOLE_NONE
> =

> +static const char *colored_log_level[] =3D {
> +   [MSG_EMERG] =3D "\033[31mEMERG:\033[0m ",      /* red */
> +   [MSG_ALERT] =3D "\033[31mALERT:\033[0m ",      /* red */
> +   [MSG_CRIT] =3D "\033[31mCRITICAL:\033[0m ",   /* red */
> +   [MSG_ERR] =3D "\033[31mERROR:\033[0m ",      /* red */
> +   [MSG_WARNING] =3D "\033[33mWARNING:\033[0m ",   /* yellow */
> +   [MSG_NOTICE] =3D "\033[34mNOTICE:\033[0m ",   /* blue */
> +};
> +
>  int barebox_loglevel =3D CONFIG_DEFAULT_LOGLEVEL;
> =

>  LIST_HEAD(barebox_logbuf);
> @@ -102,6 +111,18 @@ nolog:
>     puts(str);
>  }
> =

> +static void print_colored_log_level(const int level)
> +{
> +   if (!console_allow_color())
> +      return;
> +   if (level >=3D ARRAY_SIZE(colored_log_level))
> +      return;
> +   if (!colored_log_level[level])
> +      return;
> +
> +   pr_puts(level, colored_log_level[level]);
> +}
> +
>  int pr_print(int level, const char *fmt, ...)
>  {
>     va_list args;
> @@ -111,6 +132,8 @@ int pr_print(int level, const char *fmt, ...)
>     if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
>        return 0;
> =

> +   print_colored_log_level(level);
> +
>     va_start(args, fmt);
>     i =3D vsprintf(printbuffer, fmt, args);
>     va_end(args);
> @@ -129,6 +152,8 @@ int dev_printf(int level, const struct device_d =

> *dev, const char *format, ...)
>     if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
>        return 0;
> =

> +   print_colored_log_level(level);
> +
>     if (dev->driver && dev->driver->name)
>        ret +=3D sprintf(printbuffer, "%s ", dev->driver->name);
> =

> -- =

> 2.16.1
> =

> -- =

> Pengutronix e.K.                           | |
> Industrial Linux Solutions                 | http://www.pengutronix.de/ =

|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =

|


Mit freundlichen Gr=FC=DFen / Best regards

JUMO GmbH & Co. KG
Entwicklung - Vorentwicklung Plattformen / Predevelopment Platforms

i. A. Dipl.-Ing.(FH) Eugen Wiens =


Tel:             +49 661 6003 9577
Fax:            +49 661 6003 88 9577
Adresse:    Moritz-Juchheim-Stra=DFe 1 =

                   36039 Fulda, Germany =

E-Mail:      eugen.wiens@jumo.net =

Internet:     http://www.jumo.net



Diese E-Mail kann vertrauliche und/oder rechtlich gesch=FCtzte Informatione=
n beinhalten und ist ausschlie=DFlich f=FCr die im Verteiler genannten Pers=
onen bestimmt. Das unerlaubte Kopieren sowie die unbefugte Weitergabe diese=
r Mail sind nicht gestattet. Bitte benachrichtigen Sie uns gegebenenfalls t=
elefonisch oder mit Antwort-Mail, falls Sie nicht der richtige Adressat die=
ser E-Mail sind. Bitte l=F6schen Sie diese Nachricht und alle Anh=E4nge daz=
u unverz=FCglich. Falls nicht ausdr=FCcklich vermerkt, ist diese E-Mail kei=
ne rechtlich bindende Vereinbarung. =


Kommanditgesellschaft: JUMO GmbH & Co. KG, Sitz: 36039 Fulda, Amtsgericht F=
ulda HRA 302, Pers=F6nlich haftende Gesellschafterin: M. K. JUCHHEIM GmbH, =
Sitz: 36039 Fulda, Amtsgericht Fulda HRB 17, Gesch=E4ftsf=FChrer: Dipl.-Ing=
. Bernhard Juchheim, Dipl.-Kfm. Michael Juchheim =

Ust.-Id.-Nr.: DE 112411234 =

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
