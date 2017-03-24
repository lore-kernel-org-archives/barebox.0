Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crIUA-0003b1-3i
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 06:14:08 +0000
Date: Fri, 24 Mar 2017 07:13:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170324061343.yabwryik7umt5ud5@pengutronix.de>
References: <20170322091439.18187-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170322091439.18187-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v8 0/7] upstream hwrng framework
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Mar 22, 2017 at 10:14:32AM +0100, Oleksij Rempel wrote:
> changes v1:
>  - initial version
> 
> changes v2:
>  - drop Freescale RNGC for now. It need more testing
>  - add caamrng port
>  - fix hwrng_init()
>  - fix hwrng_get_first check in get_random_bytes
> 
> changes v3:
>  - check if hwrng_get_data returns error
>  - provide /dev/randomdd random device
> 
> changes v4:
>  - provide get_crypto_bytes() interface.
>  - add CONFIG_ALLOW_PRNG_FALLBACK
>  - make cmd_password use get_crypto_bytes
>  - add cmd_seed
> 
> changes v5:
>  - make cmd_seed fail if no VALUE is set
> 
> changes v6:
>  - reword second patch and remove useless if (bytes > lenght) check.
> 
> changes v7:
>  - use numbered names: /dev/hwrngN
>  - allow to use aliases for device name.
> 
> changes v8:
>  - remove comment about nonexisting priv variable
>  - make hwrng_get_first() static inline with return error if CONFIG_HWRNG
>    is disabled.
> 
> Oleksij Rempel (6):
>   lib: random: add get_crypto_bytes interface and use HWRNG if posssible
>   caamrng: port to hwrng framework
>   fs: add prng device
>   crypto: caam - fix RNG buffer cache alignment
>   common: password: make use of get_crypto_bytes
>   add seed command
> 
> Steffen Trumtrar (1):
>   drivers: add simple hw_random implementation

Applied, thanks

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
