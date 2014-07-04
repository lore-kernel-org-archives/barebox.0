Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2w7O-0004Ky-JY
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 05:33:07 +0000
Date: Fri, 4 Jul 2014 07:32:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140704053244.GC26384@pengutronix.de>
References: <alpine.LFD.2.11.1407030759060.22279@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407030759060.22279@localhost>
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
Subject: Re: [PATCH] Documentation: Various tweaks to user manual, device
 tree chapter.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, Jul 03, 2014 at 08:00:07AM -0400, Robert P. J. Day wrote:
> 
> Grammar, typoes, font, link fixes.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
> diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
> index 856ff6a..17934d8 100644
> --- a/Documentation/user/devicetree.rst
> +++ b/Documentation/user/devicetree.rst
> @@ -4,29 +4,29 @@ Devicetree support
>  ==================
> 
>  Flattened Device Tree (FDT) is a data structure for describing the hardware on
> -a system. On an increasing number of boards both barebox and the Linux Kernel can
> +a system. On an increasing number of boards, both barebox and the Linux kernel can
>  probe their devices directly from devicetrees. barebox needs the devicetree compiled
> -into the binary. The Kernel usually does not have a devicetree compiled in, instead
> -the Kernel expects to be passed a devicetree from the bootloader.
> +into the binary. The kernel usually does not have a devicetree compiled in; instead,
> +the kernel expects to be passed a devicetree from the bootloader.
> 
>  From a bootloader's point of view, using devicetrees has the advantage that the
> -same devicetree is used to probe both the Kernel and the Bootloader; this
> +same devicetree can be used by both the bootloader and the kernel; this
>  drastically reduces porting effort since the devicetree has to be written only
> -once (and with luck somebody has already written a devicetree for the Kernel).
> -Probing barebox from devicetree is highly recommended for new projects.
> +once (and with luck somebody has already written a devicetree for the kernel).
> +Having barebox consult a devicetree is highly recommended for new projects.
> 
>  .. _internal_devicetree:
> 
>  The internal devicetree
>  -----------------------
> 
> -The devicetree barebox has been probed from plays a special role. It is referred to
> -as the :ref:`internal_devicetree`. The barebox devicetree commands work on this
> -devicetree. The devicetree source (DTS) files are kept in sync with the Kernel DTS
> +The devicetree consulted by barebox plays a special role. It is referred to
> +as the "internal devicetree." The barebox devicetree commands work on this
> +devicetree. The devicetree source (DTS) files are kept in sync with the kernel DTS
>  files. As the FDT files are meant to be backward compatible, it should always be possible
> -to start a Kernel with the barebox internal devicetree. However, since the barebox
> +to start a kernel with the barebox internal devicetree. However, since the barebox
>  devicetree may not be complete or contain bugs it is always possible to start the
> -Kernel with another devicetree than barebox has been started with.
> +kernel with a devicetree different from the one used by barebox.
>  If a device has been probed from the devicetree then using the :ref:`command_devinfo`
>  command on it will show the corresponding devicetree node:
> 
> @@ -73,10 +73,11 @@ work on the internal devicetree. It is possible to add/remove nodes using the
> 
>  It is important to know that these commands always work on the internal
>  devicetree. If you modify the internal devicetree to influence the behaviour of
> -a Kernel booted later, make sure that you start the kernel with the internal
> +a kernel booted later, make sure that you start the kernel with the internal
>  devicetree (i.e. don't pass a devicetree to the :ref:`command_bootm` command). If you
> -wish to use another devicetree than the internal devicetree for starting the Kernel,
> -you can exchange the internal devicetree during runtime:
> +wish to use another devicetree than the internal devicetree for starting the kernel,
> +you can exchange the internal devicetree during runtime using the
> +:ref:`command_oftree` command:
> 
>  .. code-block:: sh
> 
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
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
