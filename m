Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0jKA-00072e-I5
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 06:42:48 +0000
Date: Wed, 19 Apr 2017 08:42:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419064224.rbteqga5qnxl6vab@pengutronix.de>
References: <CAARUG94j21s-AC0-gXYG81SjnCa1ahPfH1oaq=fb+rFgEpSE8A@mail.gmail.com>
 <CAARUG94vbynM7MJu=kfPynABwf5rhDDd3OBM-2SyRy0PFO_8kQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAARUG94vbynM7MJu=kfPynABwf5rhDDd3OBM-2SyRy0PFO_8kQ@mail.gmail.com>
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
Subject: Re: gpio-keys on barebox 2015.11
To: Zdenek Svachula <zdenek.svachula@medictech.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 12, 2017 at 05:35:46PM +0200, Zdenek Svachula wrote:
> Hi all,
> 
> I'm working with barebox 2015.11 phy4 (from phytex.de) I try add to dts
>         gpio_keys {
>                 compatible = "gpio-keys";
>                 #address-cells = <1>;
>                 #size-cells = <0>;
>                 autorepeat;
>                 up {
>                                 label = "GPIO Key up";
>                                 linux,code = <103>;
>                                 gpios = <&gpio2 24 1>;
>                 };
>                 enter {
>                                 label = "GPIO Key ENTER";
>                                 linux,code = <28>;
>                                 gpios = <&gpio5 8 1>;
>                 };
> 
> 
>         };
> 
> to allow boot selection boot menu via 2 gpio button  I also enable
> GPIO-buttons in menuconfig but it seem not workin.
> 
> Can you please me point to some method how to debug if gpio polling
> works or if dts is for barebox wrong.

Generally the above looks ok and should work like this. Try 'devinfo'
command and identify the gpio-keys device (usually named gpio-keys.<x>).
Use 'devinfo gpio-keys.<x>' to find out if there is a driver attached to
this device. If there isn't, do you find something about gpio-keys in
the boot log?

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
