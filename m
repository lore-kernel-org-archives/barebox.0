Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VHYZ1-00006R-LH
 for barebox@lists.infradead.org; Thu, 05 Sep 2013 12:21:32 +0000
Date: Thu, 5 Sep 2013 14:21:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130905122108.GE30069@pengutronix.de>
References: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
 <1378220067-22296-4-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1378220067-22296-4-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 3/4] ppc: bootm: relocate fdt to valid boot memory
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Tue, Sep 03, 2013 at 03:54:26PM +0100, Renaud Barbier wrote:
> For the MPC85xx family of SOCs Linux expects any boot firmware
> information to be passed in the first 64MiB of memory. This adds support
> to ensure that the device tree is relocated to a valid location if it is
> outside that address range.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/include/asm/processor.h |    1 +
>  arch/ppc/lib/ppclinux.c          |   49 +++++++++++++++++++++++++++++++++++++-
>  2 files changed, 49 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
> index 04cfb60..6b9b7dd 100644
> --- a/arch/ppc/include/asm/processor.h
> +++ b/arch/ppc/include/asm/processor.h
> @@ -966,6 +966,7 @@ struct cpu_type {
>  struct cpu_type *identify_cpu(u32 ver);
>  
>  #if defined(CONFIG_MPC85xx)
> +#define LINUX_TLB1_MAX_ADDR	((void *)(64 << 20))

I had to drop this patch as it breaks the pcm030 compilation. I have no
idea what the correct value for LINUX_TLB1_MAX_ADDR on MPC5200 is. Can
you send an updated patch?

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
