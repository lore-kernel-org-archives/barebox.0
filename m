Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGPke-0006ap-7B
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 08:12:33 +0000
Date: Fri, 15 Mar 2013 09:12:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130315081229.GB1906@pengutronix.de>
References: <20130313180100.GJ1568@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130313180100.GJ1568@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/7 v2] globalvar: add multiple device support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 13, 2013 at 07:01:00PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	v2:
> 	fix bootargs
> 
> 	this will allow to reduce the scope of device and params to search
> 	during boot time
> 
> 	we keep the retro compatibility
> 
> The following changes since commit 092bfd5eb55d1b2d7ed098aa9723a2fa63b86192:
> 
>   fix another brown paper bag bug introduced with compile time loglevel (2013-03-06 23:53:04 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/globalvar
> 
> for you to fetch changes up to 2a749c4b65f823da50537798a2feeaf4a01d2212:
> 
>   bootargs: switch globalvar to it's own device (2013-03-13 14:35:29 +0800)

I still don't see why we should take this. You say it's about speed.
I made some measurments. I read some global variables 1000 times each,
below times are in ms:

Vanilla -next tree:
-------------------------------------
global.linux.mtdparts.nand0:	49178
global.dhcp.rootpath:		45282
dhcp.rootpath:			90329
global.sumsen:			47681

-next with your patches:
-------------------------------------
global.linux.mtdparts.nand0:	11407
global.dhcp.rootpath:		13961
dhcp.rootpath:			92394
global.sumsen:			 5087

-next with register_device(&global_device) moved to pure_initcall:
-------------------------------------
global.linux.mtdparts.nand0:	 8467
global.dhcp.rootpath:		 5162
dhcp.rootpath:			90096
global.sumsen:			 6541

(Moving registration of the global device simply has the effect that
it is in the beginning of the devices list, thus we can find it faster)

So your patches indeed make reading the global variables significantly
faster, but a simple one-liner patch shows makes it even faster.

So, no. We don't introduce new APIs just for the sake of it.

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
