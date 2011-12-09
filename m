Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYwaK-0008T7-PC
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 09:17:42 +0000
Date: Fri, 9 Dec 2011 10:17:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111209091729.GZ27267@pengutronix.de>
References: <1323353029-17281-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323353029-17281-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC PATCH 0/3] add tlsf memory allocator
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Thu, Dec 08, 2011 at 06:03:46PM +0400, Antony Pavlov wrote:
> This patch series adds the tlsf memory allocator to barebox.
> 
> TLSF: Two Level Segregated Fit memory allocator implementation.
> Written by Matthew Conte (matt@baisoku.org).
> Public Domain, no restrictions.
> 
> [RFC PATCH 1/3] import TLSF 2.0
> [RFC PATCH 2/3] adapt tlsf for barebox
> [RFC PATCH 3/3] add tlsf-based malloc implementation

The tlsf code looks really nice. Not that I even tried to understand it,
but it looks like one *could* understand the code when he has to (unlike
the dlmalloc code). It is also smaller in binary space and it has the
great advantage of having memory pools. Memory pools can be useful to
seperate the general malloc space from the ramfs malloc space, so that
a full ramfs does not crash barebox. It could also be used to implement
dma_alloc_coherent().

Unfortunately there are two downsides. As the author already says on the
webpage it's slightly slower than dlmalloc. That's ok as long we do not
store big files in ramfs. The second one is that it needs a
memset(pool, 0, size) on initialization. Without it I was not able to
test your patches as barebox crashes before even the console was
initialized. This memset can take quite a long time. Maybe we should ask
Matthew if we really have to clear the pool completely or if it's enough
to clear certain parts of it.

Overall I think we should give these patches a try as an alternative
malloc implementation with the perspective of replacing dlmalloc
completely some day.

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
