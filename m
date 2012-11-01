Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTwin-0000zI-Vo
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 15:30:18 +0000
Date: Thu, 1 Nov 2012 16:30:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121101153015.GW1641@pengutronix.de>
References: <20121031165240.GG29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121031165240.GG29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/4] at91sam9x5ek: add 1-wire support and hardware
 detection support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, "ludovic.desroches" <ludovic.desroches@atmel.com>

On Wed, Oct 31, 2012 at 05:52:40PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	This patch serie add the 1-wire support to the at91sam9x5ek
> 
> 	on sam9x5ek we have on each module and motherboard a 1-wire eeprom
> 	that describe the hardware revision and type
> 
> 	And on the Cogent Cpu Module we have some difference with teh others
> 	modules and some bug
> 
> 	So fix
> 
> 	Also use the 1-wire to generate a local mac address
> 
> 	This patch series depends on the pm9g45/pm9263/pm9261 v3
> 
> The following changes since commit 7fb0cb2ce2f7800341ab8de711dccbd2c4753c84:
> 
>   pm9261: use w1 serial number to generate local mac address (2012-10-30 13:44:54 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91sam9x5ek_w1
> 
> for you to fetch changes up to 4e088306b778a5f14c2503be54b061e60e27e6a0:
> 
>   at91sam9x5ek: use w1 serial number to generate local mac address (2012-10-31 09:33:38 +0800)

Also applied

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
