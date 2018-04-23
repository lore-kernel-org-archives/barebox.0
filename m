Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fAX0c-0008PS-Hc
 for barebox@lists.infradead.org; Mon, 23 Apr 2018 08:39:49 +0000
Date: Mon, 23 Apr 2018 10:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180423083926.cemu3wzcosahvm4f@pengutronix.de>
References: <20180420080114.9148-1-gp@high-consulting.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180420080114.9148-1-gp@high-consulting.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] Crypt and decrypt files using password in keystore.
To: Gerd Pauli <gp@high-consulting.de>
Cc: barebox@lists.infradead.org

Hi Gerd,

On Fri, Apr 20, 2018 at 10:01:14AM +0200, Gerd Pauli wrote:
> Adds ccryptlib library in crypto which implements a
> stream cipher based on the block cipher Rijndael,
> the candidate for the AES standard.
> Compatible with the ccrypt tool in linux
> from Peter Selinger.
> 
> +BAREBOX_CMD_START(ccrypt)
> +.cmd	= do_ccrypt,
> +	BAREBOX_CMD_DESC("Crypt and Decrypt Files")
> +	BAREBOX_CMD_OPTS("[-e|-d] -k NAME SRC DST")
> +        BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> +	BAREBOX_CMD_HELP(cmd_ccrypt_help)
> +	BAREBOX_CMD_END
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index 6d65c24d4..08669a2de 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -101,4 +101,11 @@ config CRYPTO_KEYSTORE
>  	  This is a simple keystore, which can be used to pass keys
>  	  between several components via simple interface.
>  
> +config CRYPTO_CCRYPTLIB
> +        bool "ccryptlib"
> +        help
> +          This option provides functions implementing a stream cipher based
> +          on the block cipher rijandel.
> +          The cipher is based on Peter Selingers ccrypt implementation.
> +
>  endmenu
> diff --git a/crypto/Makefile b/crypto/Makefile
> index a7240d1d6..1231bc76d 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -14,3 +14,4 @@ obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
>  obj-$(CONFIG_CRYPTO_PBKDF2)	+= pbkdf2.o
>  obj-$(CONFIG_CRYPTO_RSA)	+= rsa.o
>  obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
> +obj-$(CONFIG_CRYPTO_CCRYPTLIB)  += ccryptlib.o
> diff --git a/crypto/ccryptlib.c b/crypto/ccryptlib.c
> new file mode 100644
> index 000000000..78f0ac843
> --- /dev/null
> +++ b/crypto/ccryptlib.c

Is this the same as the Linux Kernel has in crypto/aes_generic.c? If
yes, then please use it. If no, then why not? ;)

Generally any crypto code should integrate into the barebox crypto API
(which is basically the same as the Linux crypto API). This is the main
road blocker that must be removed before we can merge this into barebox.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
