Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUNme-0006wZ-RJ
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 20:24:05 +0000
Date: Fri, 2 Nov 2012 21:24:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121102202402.GP1641@pengutronix.de>
References: <20121101143352.GJ29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121101143352.GJ29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/7] at91 add i2c-gpio suport
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 01, 2012 at 03:33:52PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	This paatch serie add the i2c suport to at91 using the i2c-gpio as teh
> 	IP is broken until the sam9x5. For the sam9x5 untill we have the hw
> 	driver support use the i2c-gpio too
> 
> 	on the sam9x5ek enable the i2c and the qt1070
> 
> 	This patch serie depends on i2c qt1070 patch and the at91sam9x5ek
> 	1-wire one
> 
> The following changes since commit 3a5609a37a19b0b6b5f4c61e3c561b7bf2d25b72:
> 
>   i2c: add versatile support (2012-11-01 06:58:21 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91_i2c
> 
> for you to fetch changes up to 2d2aee2451a0210cfb0d141db7729b648d0a32a4:

Applied up to 6/7 as the qt1070 driver needs some updates.

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
