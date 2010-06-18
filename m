Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OPazw-0005Vp-N5
	for barebox@lists.infradead.org; Fri, 18 Jun 2010 12:48:45 +0000
Date: Fri, 18 Jun 2010 14:48:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100618124834.GA15561@pengutronix.de>
References: <1275991382.18173.37.camel@lws-gamez>
	<20100610115454.GN20799@pengutronix.de>
	<1276861302.27924.13.camel@lws-gamez>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1276861302.27924.13.camel@lws-gamez>
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
Subject: Re: [PATCH] mx2 GPIO OCRx register
To: Teresa Gamez <T.Gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hello Teresa,

On Fri, Jun 18, 2010 at 01:41:42PM +0200, Teresa Gamez wrote:
> Hello Sascha,
> 
> is it reasonable to create a gpio_mode commad then? Or is there an other
> way to do this in the barebox shell?

A gpio_mode command should be fine. Maybe something like
'mux_mode <pin_no> <mode>'. We could then put a list of variables
into the environment:

PC5_PF_I2C2_SDA="69 0"
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
