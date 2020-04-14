Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIOH-0005R9-N8
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 10:02:03 +0000
Date: Tue, 14 Apr 2020 12:02:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414100200.GG27288@pengutronix.de>
References: <20200213105803.32096-1-s.hauer@pengutronix.de>
 <20200213105803.32096-3-s.hauer@pengutronix.de>
 <0755ee61-3cd4-3e42-8d9c-cd57eb615ce6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0755ee61-3cd4-3e42-8d9c-cd57eb615ce6@pengutronix.de>
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
Subject: Re: [PATCH 3/3] driver: Call of_clk_set_defaults for each probed
 device
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Apr 06, 2020 at 08:01:19AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 2/13/20 11:58 AM, Sascha Hauer wrote:
> > So far we only honour the assigned-clocks and assigned-clock-rates
> > device tree properties for the clock controller nodes. With this patch
> > we also honour the properties for each device which is done by Linux
> > as well.
> 
> This breaks the default barebox console on the i.MX7 sabresd.
> The default UART, uart1, specifies assigned-clock-parents, which is now applied
> and causes garbage to be output on the serial port.
> 
> &uart1 {
>        /delete-property/ assigned-clocks;
>        /delete-property/ assigned-clock-parents;
> };
> 
> Fixes it, but I didn't dig deeper than that.

Care to send this as a patch so that we at least have a stop gap
solution?

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
