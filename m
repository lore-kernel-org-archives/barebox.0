Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ4eQ-0001ZX-Dk
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 08:18:19 +0000
Date: Wed, 7 Oct 2020 10:18:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201007081816.GN11648@pengutronix.de>
References: <20200916135035.7089-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200916135035.7089-10-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 09/10] power: reset: syscon-reboot-mode: support
 multi-word reboot modes
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 16, 2020 at 03:50:34PM +0200, Ahmad Fatoum wrote:
> SoCs like the i.MX6 have their BootROM consult two distinct 32-bit
> registers to determine the reboot mode. Extend the driver to support
> this. While backwards compatible, this is not so far supported by the
> upstream binding, which is why a new barebox,syscon-reboot-mode is
> introduced. This new compatible be inhibit used to inhibit fixup
> into a kernel device tree.
> 
>  static const struct of_device_id syscon_reboot_mode_of_match[] = {
> -	{ .compatible = "syscon-reboot-mode" },
> +	{ .compatible = "syscon-reboot-mode", .data = &reboot_fixup },
> +	{ .compatible = "barebox,syscon-reboot-mode", .data = &reboot_nofixup },

Please add this to Documentation/devicetree/bindings/

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
