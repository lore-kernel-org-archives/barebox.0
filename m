Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrMUV-0002K0-BH
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 07:17:07 +0000
Date: Mon, 2 Jun 2014 09:16:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140602071645.GT15686@pengutronix.de>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-11-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1401440856-6145-11-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 10/10] device drivers: harmonize underscore in driver names
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 30, 2014 at 11:07:36AM +0200, Holger Schurig wrote:
> Some device names were in the form "imx_spi", others in the form "imx-gpt".
> As most device names used the dash and not the underscore, this device
> driver harmonizes them all.

Generally ok, but you have to fix the users aswell. I think you catched
the statically created devices, but there are many occurrences of this:

	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 4096,
                           IORESOURCE_MEM, &fb_mode);

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
