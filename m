Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqh4c-0001P9-PB
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 08:54:36 +0000
Date: Mon, 16 Jul 2012 10:54:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716085418.GG30009@pengutronix.de>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
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
Subject: Re: barebox image size
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

On Mon, Jul 16, 2012 at 10:37:41AM +0200, christian.buettner@rafi.de wrote:
> hi,
> 
> we need to implement a lot of features into the barebox. Finally the size 
> of the image will be bigger than the standard max of 256K.
> When i flash an image, bigger than 256K to nand, barebox does not boot 
> anymore - if i reduce it to 256K or smaller, everthing works fine.
> 
> What do i have to do to use a bigger barebox image size?

Just a guess:

You are using imx_nand_load_image() with a fixed size of 256k. grep for
this function in the current tree and see how the correct image size is
calculated.

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
