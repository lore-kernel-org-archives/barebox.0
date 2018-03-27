Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0hCz-0007Ks-Nl
 for barebox@lists.infradead.org; Tue, 27 Mar 2018 05:31:48 +0000
References: <20180326102037.57959f6175c61967d9e9c5b4@gmail.com>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <20180326102037.57959f6175c61967d9e9c5b4@gmail.com>
Date: Tue, 27 Mar 2018 07:31:29 +0200
Message-ID: <73in9it77y.fsf@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: socfpga: ethernet problem
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Trent Piepho <tpiepho@kymetacorp.com>


Hi,

Antony Pavlov <antonynpavlov@gmail.com> writes:

> Hi!
>
> Barebox for DE0-Nano-SoC succesfully starts on Terasic DE10-Nano board
> but there is an ethernet issue.
>
> After `make ARCH=arm socfpga_defconfig` I see that the CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA
> option is disabled.
>
>   #
>   # Network drivers
>   #
>   ...
>   CONFIG_DRIVER_NET_DESIGNWARE=y
>   # CONFIG_DRIVER_NET_DESIGNWARE_GENERIC is not set
>   # CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA is not set
>
> after enabling CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA I see 'Could not get sysmgr-syscon node'
> error message:
>
>

Patch opportunity:

DRIVER_NET_DESIGNWARE_SOCFPGA is missing a
    select MFD_SYSCON

and the defconfig should be regenerated with the socfpga driver instead.

Best regards,
Steffen

-- 
Pengutronix e.K.                           | Steffen Trumtrar            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
