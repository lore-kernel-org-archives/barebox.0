Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD4F3-0004V5-Sf
 for barebox@lists.infradead.org; Wed, 25 Sep 2019 10:09:55 +0000
Date: Wed, 25 Sep 2019 12:09:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190925100946.ki35rc52pdbakfa7@pengutronix.de>
References: <20190924075441.26252-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924075441.26252-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v3] Documentation: add watchdog documentation
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 24, 2019 at 09:54:41AM +0200, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/user/user-manual.rst |   1 +
>  Documentation/user/watchdog.rst    | 116 +++++++++++++++++++++++++++++
>  2 files changed, 117 insertions(+)
>  create mode 100644 Documentation/user/watchdog.rst
> 
> diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
> index f04981c3f0..41fdb8805c 100644
> --- a/Documentation/user/user-manual.rst
> +++ b/Documentation/user/user-manual.rst
> @@ -34,6 +34,7 @@ Contents:
>     state
>     random
>     debugging
> +   watchdog
>  
>  * :ref:`search`
>  * :ref:`genindex`
> diff --git a/Documentation/user/watchdog.rst b/Documentation/user/watchdog.rst
> new file mode 100644
> index 0000000000..87c63aa078
> --- /dev/null
> +++ b/Documentation/user/watchdog.rst
> @@ -0,0 +1,116 @@
> +Watchdog Support
> +================
> +
> +Warnings and Design Consideration
> +---------------------------------
> +
> +A watchdog is the last line of defense on misbehaving systems. Thus, proper
> +hardware and watchdog design considerations should be made to be able to reduce
> +the impact of failing systems in the field. In the best case, the bootloader
> +should not touch it at all. No watchdog feeding should be done until
> +application-critical software (or a userspace service manager such as
> +'systemd') was started.
> +
> +In case the bootloader is responsible for watchdog activation, the system can
> +be considered as failed by design. The following threats can affect the system
> +which are mostly addressable by properly designed watchdog and watchdog
> +strategy:
> +
> +- software-based misconfigurations or bugs prevent the system from starting.
> +- glitches caused by under-voltage, inappropriate power-on sequence or noisy
> +  power supply.
> +- physical damages caused by humidity, vibration or temperature.
> +- temperature-based misbehavior of the system, e.g. clock is not running or
> +  running with wrong frequency.
> +- chemical reactions, e.g. some clock crystals will stop to work in contact
> +  with Helium, see for example:
> +  https://ifixit.org/blog/11986/iphones-are-allergic-to-helium/
> +- failed storage prevents booting. NAND, SD, SSD, HDD, SPI-flash all of this
> +  some day stop to work because their read/write cycles are exceeded.
> +
> +In all these cases, the bootloader won't be able to start and a properly
> +designed watchdog may take some action. For example: recover the system by
> +resetting it, or power it off to reduce the damage.

I haven't seen any watchdogs powering off the system.

In the list above only in the case of glitches caused by under-voltage a
watchdog makes a difference. In all the other cases a watchdog won't
help either.

Given that I don't agree to the claim that systems where the bootloader
has to enable the watchdog are a design failure. Also I bet there are
SoCs on which the watchdog can't be enabled by default before the
bootloader. I wouldn't call boards designed around such a SoC a failure
by design.

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
