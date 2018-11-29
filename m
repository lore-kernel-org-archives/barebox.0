Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKUv-0002Kl-2K
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:28:46 +0000
Message-ID: <1543490911.17644.44.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 29 Nov 2018 12:28:31 +0100
In-Reply-To: <1543416825.5085.11.camel@erwinrol.com>
References: <1543416825.5085.11.camel@erwinrol.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: jlu@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: imx6ul (phytec Segin board) USB/DFU
To: Erwin Rol <mailinglists@erwinrol.com>, Barebox List <barebox@lists.infradead.org>

On Wed, 2018-11-28 at 15:53 +0100, Erwin Rol wrote:
> Than when barebox runs I want to put that same USB port in DFU mode
> and update the nand flash (barebox, env, kernel, rootfs) via DFU.

If using DFU isn't a strict requirement, fastboot might be a better
alternative (support for barebox-update, ubiformat, command execution,
widely available host tool).

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
