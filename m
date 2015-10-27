Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zr6i5-0002JY-NZ
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 16:02:57 +0000
Date: Tue, 27 Oct 2015 17:02:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151027160231.GN25308@pengutronix.de>
References: <1445892950.4488.20.camel@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445892950.4488.20.camel@localhost>
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
Subject: Re: [PATCH v2] Make list of flash images and fix link all single
 image cases
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Trent,

On Mon, Oct 26, 2015 at 08:55:30PM +0000, Trent Piepho wrote:
> Create a new file named 'barebox-flash-images' in the top level output
> directory that lists each image generated, one per line.  Paths will
> be relative to the top level output directory.  This works if multiple
> images are generated as well as for a single image.
> 
> Also update the existing barebox-flash-image symlink to point to the
> image in all cases where there is a single image generated.  If
> multiple images are generated, it will point to the non-existent file
> 'multi-image-build'.

Nice. The result looks consistent. I just talked to our ptxdist
authority and he is happy with that change aswell, so: Applied, thanks

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
