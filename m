Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQpE2-0000Po-EY
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 07:20:52 +0000
Date: Thu, 7 Jun 2018 09:20:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180607072037.3jw4exty4huobpm6@pengutronix.de>
References: <20180606151602.11094-1-pvizeli@syshack.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180606151602.11094-1-pvizeli@syshack.ch>
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
Subject: Re: [PATCH 1/1] command: oftree: support load device tree from memory
To: Pascal Vizeli <pvizeli@syshack.ch>
Cc: barebox@lists.infradead.org

On Wed, Jun 06, 2018 at 03:16:02PM +0000, Pascal Vizeli wrote:
> DON'T MERGE: this is only a concept patch.
> 
> On some device, barebox is the second bootloader. The first bootloader provide
> some times allready a better device tree as the linux kernel own.
> Mostly barebox can't boot from this device tree but the linux kernel can.
> 
> This patch allow to load a device tree from memory from first bootloader.

Note while it may be handy to have a command for that, you can already
do this without writing code:

memcpy -d /mydtb <dtbaddress> 0 0x10000
oftree -l /mydtb

The only drawback is that you have to guess the size of the dtb.

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
