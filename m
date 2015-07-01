Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAAIu-0002hv-Py
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 05:11:25 +0000
Date: Wed, 1 Jul 2015 07:11:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150701051101.GW18611@pengutronix.de>
References: <1435584372-5306-1-git-send-email-fabio.estevam@freescale.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435584372-5306-1-git-send-email-fabio.estevam@freescale.com>
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
Subject: Re: [PATCH] mx53-qsb: Fix boot hang during reboot stress test
To: Fabio Estevam <fabio.estevam@freescale.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 29, 2015 at 10:26:12AM -0300, Fabio Estevam wrote:
> Fix the DDR init sequence the same way as done by aee0013e53b339a5
> from U-boot in order to prevent the boot hang under reboot stress test.

Applied, thanks.

We already saw this patch for U-Boot, but then it was forgotten. Thanks for
sending it.

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
