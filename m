Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIT3J-0003HG-MH
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 06:35:31 +0000
Date: Fri, 2 Nov 2018 07:35:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181102063517.dt4lf4izn5mrbetk@pengutronix.de>
References: <20181101182555.18561-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181101182555.18561-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/4] ARM: rdu2: config PMIC SW1AB and SW1C rails to 1.375
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 01, 2018 at 07:25:52PM +0100, Lucas Stach wrote:
> This is the default out-of-reset voltage, but if only the i.MX6 SoC
> got reset, the PMIC might still be stuck at the lower volatge for the
> slow operating point.

s/volatge/voltage and applied, thanks

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
