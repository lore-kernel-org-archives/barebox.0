Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFeRO-000402-Qq
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:22:51 +0000
Date: Thu, 16 Jul 2015 10:22:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150716082228.GE18700@pengutronix.de>
References: <1436993223-14627-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436993223-14627-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] sandbox_defconfig: enable 'echo -e' support as defenv
 uses it
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Wed, Jul 15, 2015 at 11:47:03PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/sandbox/configs/sandbox_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
> index ec045f7..2ee1fa8 100644
> --- a/arch/sandbox/configs/sandbox_defconfig
> +++ b/arch/sandbox/configs/sandbox_defconfig
> @@ -17,6 +17,7 @@ CONFIG_CMD_MAGICVAR=y
>  CONFIG_CMD_MAGICVAR_HELP=y
>  CONFIG_CMD_SAVEENV=y
>  CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_ECHO_E=y

I recently missed that aswell. I think it's time for a general sandbox
config update which I just posted. Only thing I am not sure about is the
enabling of SDL which adds an additional build dependency. Maybe this
should rather be in a second defconfig.

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
