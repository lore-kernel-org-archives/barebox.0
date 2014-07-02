Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webmail.celad.com ([84.14.244.162])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2EIZ-0006vT-OS
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 06:45:44 +0000
Message-ID: <53B3AA88.10906@celad.com>
Date: Wed, 2 Jul 2014 08:45:28 +0200
From: Herve Codina <herve.codina@celad.com>
MIME-Version: 1.0
References: <1403168850-5995-1-git-send-email-Herve.CODINA@celad.com>
In-Reply-To: <1403168850-5995-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: Re: [PATCH 1/1] passwd: Support passwd file custom directory
To: barebox@lists.infradead.org
Cc: =?ISO-8859-1?Q?Herv=E9_CODINA?= <Herve.CODINA@celad.com>

Hi,

I haven't got any news about this patch.
Has it been reviewed ?

I hope it was not lost in the flow of other patches.
If so, i can resend it.

Best regards,
Herve


Le 19/06/2014 11:07, Herv=E9 CODINA a =E9crit :
> Support custom directory for passwd file instead of hardcoded /env/etc/
> This directory is set using CONFIG_PASSWORD_DIR.
> =

> Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
> ---
>  common/Kconfig     |    8 ++++++++
>  include/password.h |   10 ++++++++--
>  2 files changed, 16 insertions(+), 2 deletions(-)
> =

> diff --git a/common/Kconfig b/common/Kconfig
> index 1afee93..d4cf61b 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -414,6 +414,14 @@ endchoice
>  =

>  endif
>  =

> +config PASSWORD_DIR
> +	string =

> +	prompt "passwd directory"
> +	default "/env/etc"
> +	depends on PASSWORD
> +	help
> +	  Define directory for passwd file.
> +
>  config DYNAMIC_CRC_TABLE
>  	bool
>  	depends on CRC32
> diff --git a/include/password.h b/include/password.h
> index 0dd1054..9d84685 100644
> --- a/include/password.h
> +++ b/include/password.h
> @@ -18,8 +18,14 @@
>  #ifndef __PASSWORD_H__
>  #define __PASSWORD_H__
>  =

> -#define PASSWD_FILE		"/env/etc/passwd"
> -#define PASSWD_DIR		"/env/etc/"
> +#ifdef CONFIG_PASSWORD_DIR
> +#define PASSWD_DIR		CONFIG_PASSWORD_DIR
> +#else
> +#define PASSWD_DIR		"/env/etc"
> +#endif
> +
> +#define PASSWD_FILE		PASSWD_DIR"/passwd"
> +
>  =

>  #define HIDE	(0 << 0)
>  #define STAR	(1 << 1)
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
