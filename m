Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvd1P-0001Fd-1R
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 07:07:24 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <o.rempel@pengutronix.de>) id 1gvd1M-000528-2z
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 08:07:20 +0100
References: <20190218070529.23903-1-o.rempel@pengutronix.de>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <731dcb78-46be-888c-e58b-13745df8613a@pengutronix.de>
Date: Mon, 18 Feb 2019 08:07:19 +0100
MIME-Version: 1.0
In-Reply-To: <20190218070529.23903-1-o.rempel@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] Documentation: add watchdog documentation
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>



On 18.02.19 08:05, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>   Documentation/user/user-manual.rst |   1 +
>   Documentation/user/watchdog.rst    | 116 +++++++++++++++++++++++++++++
>   2 files changed, 117 insertions(+)
>   create mode 100644 Documentation/user/watchdog.rst
> 
> diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
> index 516b760b1b..d5526de285 100644
> --- a/Documentation/user/user-manual.rst
> +++ b/Documentation/user/user-manual.rst
> @@ -33,6 +33,7 @@ Contents:
>      system-reset
>      state
>      random
> +   watchdog
>   
>   * :ref:`search`
>   * :ref:`genindex`
> diff --git a/Documentation/user/watchdog.rst b/Documentation/user/watchdog.rst
> new file mode 100644
> index 0000000000..2c453d9fa5
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
> +- software-based miss-configurations or bugs prevent the system from starting.

gr... forgot to fix miss...

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
> +
> +Barebox Watchdog Functionality
> +------------------------------
> +
> +Nevertheless, in some cases we are not able to influence the hardware design
> +anymore or while developing one needs to be able to feed the watchdog to
> +disable it from within the bootloader. For these scenarios barebox provides the
> +watchdog framework with the following functionality and at least
> +``CONFIG_WATCHDOG`` should be enabled:
> +
> +Polling
> +~~~~~~~
> +
> +Watchdog polling/feeding allows to feed the watchdog and keep it running on one
> +side and to not reset the system on the other side. It is needed on hardware
> +with short-time watchdogs. For example the Atheros ar9331 watchdog has a
> +maximal timeout of 7 seconds, so it may reset even on netboot.
> +Or it can be used on systems where the watchdog is already running and can't be
> +disabled, an example for that is the watchdog of the i.MX2 series.
> +This functionally can be seen as a threat, since in error cases barebox will
> +continue to feed the watchdog even if that is not desired. So, depending on
> +your needs ``CONFIG_WATCHDOG_POLLER`` can be enabled or disabled at compile
> +time. Even if barebox was built with watchdog polling support, it is not
> +enabled by default. To start polling from command line run:
> +
> +.. code-block:: console
> +
> +  wdog0.autoping=1
> +
> +The poller interval is not configurable, but fixed at 500ms and the watchdog
> +timeout is configured by default to the maximum of the supported values by
> +hardware. To change the timeout used by the poller, run:
> +
> +.. code-block:: console
> +
> +  wdog0.timeout_cur=7
> +
> +To read the current watchdog's configuration, run:
> +
> +.. code-block:: console
> +
> +  devinfo wdog0
> +
> +The output may look as follows where ``timeout_cur`` and ``timeout_max`` are
> +measured in seconds:
> +
> +.. code-block:: console
> +
> +  barebox@DPTechnics DPT-Module:/ devinfo wdog0
> +  Parameters:
> +    autoping: 1 (type: bool)
> +    timeout_cur: 7 (type: uint32)
> +    timeout_max: 10 (type: uint32)
> +
> +Use barebox' environment to persist these changes between reboots:
> +
> +.. code-block:: console
> +
> +  nv dev.wdog0.autoping=1
> +  nv dev.wdog0.timeout_cur=7
> +
> +Boot Watchdog Timeout
> +~~~~~~~~~~~~~~~~~~~~~
> +
> +With this functionality barebox may start a watchdog or update the timeout of
> +an already-running one, just before kicking the boot image. It can be
> +configured temporarily via
> +
> +.. code-block:: console
> +
> +  global boot.watchdog_timeout=10
> +
> +or persistently by
> +
> +.. code-block:: console
> +
> +  nv boot.watchdog_timeout=10
> +
> +where the used value again is measured in seconds.
> +
> +On a system with multiple watchdogs, only the first one (wdog0) is affected by
> +the ``boot.watchdog_timeout`` parameter.
> +
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
