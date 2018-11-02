Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIVX1-00046w-Ka
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 09:14:21 +0000
Date: Fri, 2 Nov 2018 10:14:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181102091406.qewpj5eszyrmrhpu@pengutronix.de>
References: <20181102091156.26476-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181102091156.26476-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] mmc: atmel: Make write work on sama5d3
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On Fri, Nov 02, 2018 at 10:11:56AM +0100, Sascha Hauer wrote:
> For some reason the sama5d3 needs a delay after a
> MMC_CMD_STOP_TRANSMISSION command. Without it writing fails with:
> 
> ERROR: atmel_mci f0000000.mmc@f0000000: command/data timeout
> ERROR: atmel_mci f0000000.mmc@f0000000: command/data timeout
> 
> The reason is not yet clear, so live with this hack for now.

I won't apply this one, just want to have that noted somewhere. If
anyone has an idea please tell me, I am clueless :(

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
