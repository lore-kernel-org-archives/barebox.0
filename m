Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg0Hk-0006xm-4Z
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 06:20:29 +0000
Date: Tue, 2 Jun 2020 08:20:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200602062024.GG11869@pengutronix.de>
References: <69ca4999-4cf0-f20a-5d7a-93e470338bf4@arcor.de>
 <20200525060129.GM11869@pengutronix.de>
 <2035082672.75503.1590508494270@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2035082672.75503.1590508494270@mail.vodafone.de>
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
Subject: Re: configure the mac address of an eth device
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, May 26, 2020 at 05:54:53PM +0200, Giorgio Dal Molin wrote:
> Hi Sascha,
> 
> thank you for your suggestion about the MAC, the code works now as expected.
> 
> Just another quick question: is there a function like of_eth_register_ethaddr()
> also for a 'serial-number' value ?
> 
> I also have a 'serial number' value from the eeprom and I would like to pass to the kernel.
> Just calling something like:
> 
> of_set_property(of_get_root_node(), "serial-number", s, strlen(s) + 1, 1);
> 
> does not work because it changes only the device tree for barebox but not that
> for the kernel. So I registered an of fixup:
> 
> of_register_fixup(samx7_board_fixup, s);
> 
> for it and it works then but it is a bit more complex.

Yes, you have to do it like that, there is no shortcut for it.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
