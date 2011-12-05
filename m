Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXTzO-0007OX-80
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:33:31 +0000
Date: Mon, 5 Dec 2011 09:33:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111205083314.GW27267@pengutronix.de>
References: <1322931722-23569-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322931722-23569-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH V3 1/3] arm/mach-pxa: Initial Intel/Marvell PXA support
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org, Luotao Fu <l.fu@pengutronix.de>

Hi Robert,

On Sat, Dec 03, 2011 at 06:02:00PM +0100, Robert Jarzmik wrote:
> From: Marc Kleine-Budde <mkl@pengutronix.de>
> 
> The core support was brought by Marc and Sascha.
> The cache choice was fixed by Luotao Fu.
> Some gpio and devices addons were provided by Robert.
> 
> Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

I applied this one as I think it's fine now. There are still some issues
with the other patches though.

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
