Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQfW7-00069U-KX
 for barebox@lists.infradead.org; Fri, 12 Apr 2013 15:03:56 +0000
Date: Fri, 12 Apr 2013 17:03:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130412150353.GR1906@pengutronix.de>
References: <1365679699-4475-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365679699-4475-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [RFC] omap4-fb: use uncached screen_base
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Thu, Apr 11, 2013 at 01:28:19PM +0200, Jan Weitzel wrote:
> If the buffer is cached the image on the LCD is broken. Only some small
> lines on the last rows. Flushing the cache "repairs" the image.
> 
> Is remap_range the right way to get a non cached buffer?

I think using this is ok for now, at least when the driver is ARM
specific, which the omap fb driver is. We do not have a propert API
for this kind of stuff and I currently have no idea how such an API
would look like.

You should make sure though that pdata->screen->start and the screen
size are page aligned.

> This patch only covers prealloc_screen, not dynamic
> If the buffer is dynamic, is the use of dma_alloc_coherent right?

correct.

> Or should
> the buffer remaped again if freed?

ideally it should, at least when the screen is passed via platform data.
Anyway, when you pass it via platform_data then you normally do it to
preserve the screen during kernel start, so I wouldn't free it in this
case.

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
