Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rj5G1-000191-3T
 for barebox@lists.infradead.org; Fri, 06 Jan 2012 08:34:40 +0000
Date: Fri, 6 Jan 2012 09:34:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120106083419.GD5446@pengutronix.de>
References: <1325755439-19534-1-git-send-email-s.hauer@pengutronix.de>
 <1325755439-19534-3-git-send-email-s.hauer@pengutronix.de>
 <20120105131712.GF1810@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120105131712.GF1810@game.jcrosoft.org>
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
Subject: Re: [PATCH] ARM: move exception vectors away from start of binary
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 05, 2012 at 02:17:12PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:23 Thu 05 Jan     , Sascha Hauer wrote:
> > Traditionally U-Boot and barebox have the exception vectors at
> > the start of the binary. There is no real reason in doing so,
> > because in the majority of cases this data will not be at 0x0
> > where it could be used as vectors directly anyway.
> > This patch puts the vectors into a separate linker section and
> > defines an head function which is placed at the start of the
> > image instead. Putting this in a separate function also has
> > the advantage that it can be placed at the start of images
> > which require an additional header like several Freescale i.MX
> > images. As the head function contains the barebox arm magic
> > those images can now also be detected as barebox images.
> > The header of the image can be customized using
> > CONFIG_ARM_CUSTOM_HEAD. If this is set the user must specify
> > a custom barebox_arm_head function in the text_entry section.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> Please hold on this one

Sorry, I accidently sent this. It's not part of the posted series.

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
