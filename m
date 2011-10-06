Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RBijm-0002AY-EG
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 07:51:27 +0000
Date: Thu, 6 Oct 2011 09:51:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111006075118.GS31404@pengutronix.de>
References: <4E8C6F3D.40308@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E8C6F3D.40308@ge.com>
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
Subject: Re: bootm
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 05, 2011 at 03:52:45PM +0100, Renaud Barbier wrote:
> Hello,
> I am looking for information on how to boot Linux with a device tree.
> 
> Basically, I have a  uImage and a device tree(dtb) and with U-boot I
> used to do:
> bootm uImage_address -- dtb_address
> 
> How does it work with barebox?

As Jean-Christophe pointed out the architecture is important. On
Arm we do not have devicetree support in any official tree, but
I already have patches.

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
