Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eOPZI-0001DR-Df
 for barebox@lists.infradead.org; Mon, 11 Dec 2017 15:00:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1eOPYw-0003WL-Km
 for barebox@lists.infradead.org; Mon, 11 Dec 2017 16:00:10 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1eOPYw-0006qg-DC
 for barebox@lists.infradead.org; Mon, 11 Dec 2017 16:00:10 +0100
Date: Mon, 11 Dec 2017 16:00:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171211150010.cyxrkws3kw6vopaw@pengutronix.de>
References: <20171211144936.10443-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171211144936.10443-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: state: mention SD/eMMC devices
To: Barebox List <barebox@lists.infradead.org>

On Mon, Dec 11, 2017 at 03:49:36PM +0100, Sascha Hauer wrote:
> The state framework also has support for SD/eMMC devices, so mention
> them in the documentation.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Documentation/user/state.rst | 46 ++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 44 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
> index 7d6c5770d5..af55d0837d 100644
> --- a/Documentation/user/state.rst
> +++ b/Documentation/user/state.rst
> @@ -39,8 +39,8 @@ Backends (e.g. Supported Memory Types)
>  
>  Some non-volatile memory is need for storing a *state* variable set:
>  
> -- all kinds of NOR flash memories
> -- all kinds of NAND flash memories
> +- Disk like devices: SD, (e)MMC, ATA
> +- all kinds of NAND and NOR flash memories (mtd)
>  - MRAM
>  - EEPROM
>  - all kind of SRAMs (backup battery assumed)
> @@ -531,6 +531,48 @@ content, its backend-type and *state* variable layout.
>  		};
>  	};
>  
> +SD/eMMC and ATA
> +###############
> +
> +The following devicetree node entry defines some kind of SD/eMMC memory and
> +a partition at a specific offset inside it to be used as the backend for the
> +*state* variable set. Note that currently there is no support for on-disk
> +partition tables. Instead, a ofpart partition description must be used. You
> +have to make sure that this partition does not conflict with any other partiion

Just bought the missing 't' in partition.

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
