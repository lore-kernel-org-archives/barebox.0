Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSGjf-0002kZ-5M
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 06:55:28 +0000
Date: Mon, 11 Jun 2018 08:55:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180611065516.zvdxlvyhsztrd5zv@pengutronix.de>
References: <alpine.DEB.2.20.1806110631180.5797@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1806110631180.5797@blala.de>
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
Subject: Re: [RESEND v3 50/52] scripts: imx-image: Share the code to write
 barebox header
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 11, 2018 at 06:39:32AM +0000, Alexander Kurz wrote:
> Hi Andrey,
> there's something wrong with this patch,
> when generating e.g. the kindle3 image (imx35 / kindle3_defconfig) 
> with this patch, the generated imximage differs and the device wont
> boot. "Share the code to ..." should not change the program behaviour.

This patch is still not in master. I dropped it (and the one adding
imx-image support for i.MX8) for now until this is resolved.

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
