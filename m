Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VF7D5-00056Z-GW
 for barebox@lists.infradead.org; Thu, 29 Aug 2013 18:44:48 +0000
Date: Thu, 29 Aug 2013 20:44:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130829184422.GB30088@pengutronix.de>
References: <E78BBE677EB9144B8F0A0A29674CD5338ED41DC8EF@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD5338ED41DC8EF@SRV-VS06.TELEVIC.COM>
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
Subject: Re: bareboxenv on userspace - wrong crc on env
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Aug 29, 2013 at 11:24:41AM +0200, Vanhauwaert Wouter wrote:
> Hello all, 
> 
> I'm having issues accessing my barebox environment from within linux....
> 
> My barebox and environment are located on a SPI NOR flash.
> This boots ok, and barebox is able to save its environment to it.
> 
> When I want to load it in userspace through:
> 
> $ bareboxenv -l /mnt /dev/mtd1
> Or 
> $ dd if=/dev/mtd1 /tmp/barebox
> Or 
> $ dd if=/dev/mdtblock1 /tmp/barebox
> 
> Result is:
> Wrong crc on env
> 
> However it's working fine in barebox itself
> 
> What can be wron?

The only idea I have is that /dev/mtd1 might not be the place where
barebox stores it's environment, maybe because of different probe order
in the kernel or different partition layout. Could you send a hexdump of
the first 256 bytes or so of /dev/mtd1?

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
