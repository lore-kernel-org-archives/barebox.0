Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OpM9y-0007fu-7P
	for barebox@lists.infradead.org; Sat, 28 Aug 2010 14:13:31 +0000
Date: Sat, 28 Aug 2010 16:13:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100828141326.GH1473@pengutronix.de>
References: <AANLkTikVJ7wU7neSsep=OG23tstrv4f=LpQ_YptFu1Cd@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTikVJ7wU7neSsep=OG23tstrv4f=LpQ_YptFu1Cd@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox: Nand flash
To: Nataraj S Narayan <natarajsn@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Aug 28, 2010 at 05:45:17PM +0530, Nataraj S Narayan wrote:
> Hi
> 
> on commit a74a26f25477ec65229a57ca15e0f2c56396c69a
> 
> I don't find nand0.rootfs.
> 
> 9263-EK:/  ls /dev/
> 
> /dev/zero           /dev/defaultenv     /dev/mem
> /dev/ram0           /dev/nand0          /dev/nand_oob0
> /dev/phy0           /dev/self_raw       /dev/self0
> /dev/env_raw        /dev/env0

/dev/nand0 is there, so there's only partitioning missing. Try something
like

addpart /dev/nand0 256k(barebox),256k(bareboxenv),2M(kernel),-(rootfs)
nand -a /dev/nand0.*

Normally your environment does this for you.

Note that /dev/nand0.rootfs is not intended for direct use, instead use
/dev/nand0.rootfs.bb. The .bb devices automatically skip bad blocks
while writing on it or reading from it.

Regards,
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
