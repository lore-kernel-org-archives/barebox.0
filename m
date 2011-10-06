Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RBlkN-0003Ie-Ed
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 11:04:16 +0000
Date: Thu, 6 Oct 2011 13:04:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111006110410.GU31404@pengutronix.de>
References: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
	<1317305076-3334-5-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1317305076-3334-5-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC PATCH 4/6] arm: cpuinfo: Cortex-A9 dirty hack
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 29, 2011 at 06:04:34PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/cpu/cpuinfo.c |   10 +++++++++-
>  1 files changed, 9 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
> index e19b8de..25d2c3f 100644
> --- a/arch/arm/cpu/cpuinfo.c
> +++ b/arch/arm/cpu/cpuinfo.c
> @@ -101,7 +101,15 @@ static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
>  			if (arch > 0 && arch < 8)
>  				architecture = post_arm7_archs[arch - 1];
>  			else
> -				architecture = "Unknown";
> +				/*
> +				 * see Cortex-A9 Technical Reference Manual:
> +				 *  Main ID Register value fixed to 0x411fc090
> +				 */
> +				if (mainid == 0x411fc090) {
> +					architecture = "Cortex-A9";
> +				} else {
> +					architecture = "Unknown";
> +				}

For Cortex-A8 it seems to be 0x412fc085. Aybe you can have a look at
arch/arm/kernel/setup.c in the kernel to see how it's done there. Would
be good to catch the Cortex-A8 aswell with this patch.

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
