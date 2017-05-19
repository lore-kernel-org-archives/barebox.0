Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dBaGn-0001Th-JQ
 for barebox@lists.infradead.org; Fri, 19 May 2017 05:16:11 +0000
Date: Fri, 19 May 2017 07:15:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170519051547.bpsngicznyvcnuug@pengutronix.de>
References: <20170517100348.6268-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170517100348.6268-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] Documentation: provide documentation for NVMEM
 interfaces.
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 17, 2017 at 12:03:48PM +0200, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/user/nvmem.rst       | 30 ++++++++++++++++++++++++++++++
>  Documentation/user/user-manual.rst |  1 +
>  2 files changed, 31 insertions(+)
>  create mode 100644 Documentation/user/nvmem.rst

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/nvmem.rst b/Documentation/user/nvmem.rst
> new file mode 100644
> index 0000000000..f860b80fd5
> --- /dev/null
> +++ b/Documentation/user/nvmem.rst
> @@ -0,0 +1,30 @@
> +NVMEM subsystem
> +===============
> +
> +The NVMEM framework was partially ported from linux kernel.
> +
> +Except from linux kernel documentation:
> +*NVMEM* is the abbreviation for Non Volatile Memory layer. It is used to
> +retrieve configuration of SOC or Device specific data from non volatile
> +memories like eeprom, efuses and so on.
> +
> +Userspace binary interface
> +^^^^^^^^^^^^^^^^^^^^^^^^^^
> +
> +Userspace can read/write the raw NVMEM file located at
> +/dev/nvmem*
> +
> +.. code-block:: sh
> +
> +  md -s /dev/nvmem0 0+4
> +  00000000: 00000000                                           ....
> +
> +  mw -d /dev/nvmem0 0 0x12345678
> +
> +  md -s /dev/nvmem0 0+4
> +  00000000: 12345678                                           xV4.
> +
> +DeviceTree Binding
> +^^^^^^^^^^^^^^^^^^
> +
> +See linux kernel Documentation/devicetree/bindings/nvmem/nvmem.txt
> diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
> index 791c8e0979..b66782ef6a 100644
> --- a/Documentation/user/user-manual.rst
> +++ b/Documentation/user/user-manual.rst
> @@ -34,6 +34,7 @@ Contents:
>     system-reset
>     state
>     random
> +   nvmem
>  
>  * :ref:`search`
>  * :ref:`genindex`
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
