Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QBsZ9-0006B0-6b
	for barebox@lists.infradead.org; Mon, 18 Apr 2011 17:48:52 +0000
Date: Mon, 18 Apr 2011 19:48:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110418174845.GO14770@pengutronix.de>
References: <F384D1288827C547A75DEBA2647D64BA172BA39F6B@MILEXCH1.ds.jdsu.net>
	<20110418072941.GH14770@pengutronix.de>
	<4DAC52C2.9020201@selea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4DAC52C2.9020201@selea.com>
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
Subject: Re: again on enviroment and partition problems
To: Omar Pighi <pighi@selea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Apr 18, 2011 at 05:03:30PM +0200, Omar Pighi wrote:
> reading here:
> http://www.spinics.net/lists/u-boot-v2/msg02944.html
> 
> it seems that now it works and save enviroments with correct crc.
> but when i triy to ypdate_kernel it says_
> partition dev/nand0.kernel.bb not found... no one .bb partition has been
> created.
> it should be done by hush_hack but it doesn't.
> 
> reading here:
> http://www.spinics.net/lists/u-boot-v2/msg02957.html
> 
> but "CONFIG_GLOB=y"
> 
> I cannot find it in any kconfig file... so it is not possible to set
> using menuconfig... should i add by hand. this means something missin in
> the kconfigs...

CONFIG_GLOB depends on CONFIG_SHELL_HUSH. Could it be that hush is not 
enabled in you config?

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
