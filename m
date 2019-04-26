Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJuL1-0001f8-I2
 for barebox@lists.infradead.org; Fri, 26 Apr 2019 06:28:01 +0000
Date: Fri, 26 Apr 2019 08:27:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190426062755.mp47wray2bumxjqv@pengutronix.de>
References: <f3826771-06e5-faf2-978a-28feb453fd3e@augsburger.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3826771-06e5-faf2-978a-28feb453fd3e@augsburger.name>
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
Subject: Re: state/bootchoser and sdhci/sdhost switchover
To: Moritz Augsburger <ml+barebox@moritz.augsburger.name>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Apr 25, 2019 at 08:46:13PM +0200, Moritz Augsburger wrote:
> Hey,
> 
> I'm a bit clueless about using bootchooser/state (together with rauc) on
> raspberry pi.
> 
> Inside barebox itself, everything works fine. I defined a state backend
> inside the dt, and I can set/update/read values:
> 
>     state: state {
>         magic = <0x4d433230>;
>         compatible = "barebox,state";
>         backend-type = "raw";
>         backend = <&backend_state_sd>;
>         backend-storage-type = "circular";
>         backend-stridesize = <0x800>;
> [...]
>     };
> &sdhci { // extended the original entry
>         pinctrl-0 = <&emmc_gpio48>;
>         no-sd;
>         non-removable;
>         status = "okay";
>         partitions {
>                 compatible = "fixed-partitions";
>                 #size-cells = <1>;
>                 #address-cells = <1>;
>                 backend_state_sd: part@200000 {
>                         label = "state_sd";
>                         reg = <0x200000 0x200000>;
>                 };
>         };
> };
> 
> Linux uses &sdhost, barebox switched to &sdhci in
> ed5d970c16d14aa24edc20b8a096f230a398f7be as it has no driver for the sdhost
> interface. barebox-state doesn't find the storage, as expected:
> 
> # barebox-state
> of_get_devicepath: cannot find device from node /soc/mmc@7e300000
> state: state failed to parse path to backend: No such device
> unable to initialize state: Unknown error -19
> 
> I would need some way to switch the backend for the state variable to the
> sdhost interface when it is copied into the device tree used for booting -
> or any other good proposal how to deal with the problem.

How about porting the sdhost driver from U-Boot to barebox? This is
probably not what you wanted to hear, but I think porting the driver
mainly requires changing the boilerplate code which shouldn't be too
much effort.

The other solutions I can think of are crude hacks, like sneaking in
the correct device node by adjusting state->of_path in the state code.

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
