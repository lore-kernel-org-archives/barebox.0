Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUC1l-0006KN-VG
 for barebox@lists.infradead.org; Mon, 11 Nov 2019 15:54:55 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iUC1i-0003e7-SJ
 for barebox@lists.infradead.org; Mon, 11 Nov 2019 16:54:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <1572795919.10526.27.camel@googlemail.com>
Message-ID: <288f22e2-d468-0262-6780-adc690ec6f3d@pengutronix.de>
Date: Mon, 11 Nov 2019 16:54:50 +0100
MIME-Version: 1.0
In-Reply-To: <1572795919.10526.27.camel@googlemail.com>
Content-Language: en-US
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
Subject: Re: state: eMMC boot0-partitions backend for Linux
To: barebox@lists.infradead.org

Hello Christoph,

On 11/3/19 4:45 PM, Christoph Fritz wrote:
> Hi,
> 
>  I would like to use emmc-hardware-partition boot1 as a state backend,
> this has the charm of keeping the big hw-partition clean while using SLC
> for e.g. serial numbers.
> Within barebox using an emmc-hardware-partition boot1 as a state backend
> just works!
> 
> But trying to hand over this backend to Linux fails right before
> starting the kernel:
> 
>   WARNING: Failed to fixup node in of_state_fixup+0x1/0x288: No such device

I ran into this before, but with the barebox environment.
I 'solved' it by moving the environment out of the boot partition..
See d5285342d87 ("mci: skip of_partitions_register_fixup for boot partitions").

> I guess dt-utils also has no support for using /dev/mmcblk1boot0 as a
> backend (by default Linux doesn't allow to write to boot0/1) ?

Yes.

> What would be the best way to add this feature?
> 
> Any ideas?

How about:
- formalize the eMMC boot partitions binding with
  a compatible = "barebox,emmc-bootpart" and change barebox to fix it up
  into the kernel's device tree.
- have barebox_state handle this properly. You can check out how RAUC
  (LGPL-2.1) does it.

Cheers
Ahmad

> 
>  -- Christoph
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
