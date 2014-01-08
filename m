Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0tsf-0006Ao-Qh
 for barebox@lists.infradead.org; Wed, 08 Jan 2014 14:13:14 +0000
Date: Wed, 8 Jan 2014 15:07:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140108140748.GL6750@pengutronix.de>
References: <20140108024539.GA13274@san0.fossix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140108024539.GA13274@san0.fossix.org>
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
Subject: Re: [PATCH] Make number of GPT partitions a configurable option
To: Santosh Sivaraj <santosh@fossix.org>
Cc: barebox@lists.infradead.org

Hi Santosh,

On Wed, Jan 08, 2014 at 08:15:39AM +0530, Santosh Sivaraj wrote:
> Theoritically there is no limit for the partitions that can be created
> based on EFI/GPT, so make the number of partitions that can be visible
> in barebox a configurable option.
> 
> Signed-off-by: Santosh Sivaraj <santosh@fossix.org>
> ---
>  common/partitions/Kconfig  | 5 +++++
>  common/partitions/parser.h | 2 +-
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/common/partitions/Kconfig b/common/partitions/Kconfig
> index 90238ad..f3353dd 100644
> --- a/common/partitions/Kconfig
> +++ b/common/partitions/Kconfig
> @@ -31,3 +31,8 @@ config PARTITION_DISK_EFI_GPT_COMPARE
>  	depends on PARTITION_DISK_EFI
>  	default y
>  	bool "EFI: GPT: compare primary and Alternate GPT header for validity"
> +
> +config MAX_PARTITIONS
> +	depends on PARTITION_DISK_EFI
> +	int "Maximum of partitions needed to be supported on a GPT"
> +	default 8

Can we instead allocate the partitions dynamically? This limitation to
eight partitions we currently have is not nice, but making it
configurable is not a proper fix.

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
