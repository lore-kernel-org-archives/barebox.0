Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZluWP-0005hm-F2
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 08:01:22 +0000
Date: Tue, 13 Oct 2015 10:00:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151013080058.GC7858@pengutronix.de>
References: <1444339185-17508-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20151012061112.GJ7858@pengutronix.de> <561B6305.40306@gmail.com>
 <561C014A.7010401@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <561C014A.7010401@gmail.com>
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
Subject: Re: [PATCH] fs: Fix memcpy_sz for remaining count/rwsize
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 12, 2015 at 08:51:54PM +0200, Sebastian Hesselbarth wrote:
> On 12.10.2015 09:36, Sebastian Hesselbarth wrote:
> >On 12.10.2015 08:11, Sascha Hauer wrote:
> >>On Thu, Oct 08, 2015 at 11:19:45PM +0200, Sebastian Hesselbarth wrote:
> >>>When using memcpy_sz with rwsize != 1 integer division of
> >>>count/rwsize may leave some bytes of the request uncopied if
> >>>count is not a multiple of rwsize.
> >>>
> >>>Fix this behavior by decrementing count by rwsize instead of
> >>>integer division and use plain memcpy for the remaining bytes.
> >>>
> >>>Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> >>>---
> >>>Cc: barebox@lists.infradead.org
> >>>---
> >>>  fs/fs.c | 9 ++++++---
> >>>  1 file changed, 6 insertions(+), 3 deletions(-)
> >>>
> >>>diff --git a/fs/fs.c b/fs/fs.c
> >>>index c041e41bb51b..ccbda22d2692 100644
> >>>--- a/fs/fs.c
> >>>+++ b/fs/fs.c
> >>>@@ -1580,9 +1580,7 @@ static void memcpy_sz(void *dst, const void
> >>>*src, size_t count, int rwsize)
> >>>
> >>>      rwsize = rwsize >> O_RWSIZE_SHIFT;
> >>>
> >>>-    count /= rwsize;
> >>>-
> >>>-    while (count-- > 0) {
> >>>+    while (count > 0) {
> >>>          switch (rwsize) {
> >>>          case 1:
> >>>              *((u8 *)dst) = *((u8 *)src);
> >>>@@ -1599,7 +1597,12 @@ static void memcpy_sz(void *dst, const void
> >>>*src, size_t count, int rwsize)
> >>>          }
> >>>          dst += rwsize;
> >>>          src += rwsize;
> >>>+        count -= rwsize;
> >>>      }
> >>
> >>This doesn't look correct. When count > 0 you are inside the loop, so
> >>
> >>>+
> >>>+    /* copy remaining bytes with plain memcpy */
> >>>+    if (count)
> >>>+        memcpy(dst, src, count);
> >>
> >>here count <= 0 which is no meaningful argument for the copy size.
> >>
> >>Should the loop start with while (count >= rwsize) instead?
> >
> >Dammit, last minute cosmetic change including breaking the
> >whole patch. Sorry for that.
> >
> >>I wonder if the behaviour shouldn't rather be:
> >>- let memcpy_sz return the number of bytes copied and not copy the
> >>   remaining partial word.
> >>- return error from memcpy_sz when input count < rwsize
> >>
> >>This would allow us to catch wrongly aligned sizes.
> >
> >I am open for any different resolution. I stumbled upon the odd
> >behavior of memcpy_sz while writing to NAND using memcpy. Maybe
> >it would be also good to always pick byte size for memcpy when
> >no specific size has been passed. It took me a while until I
> >realized it is not the NAND controller but memcpy that breaks
> >the data written by leaving some bytes uncopied.
> 
> Ok, the issue is something different maybe.
> 
> I used
> 
> memcpy -s /mnt/image.img -d /dev/nand0.u-boot.bb 0 0
> 
> i.e. I did not specify any rwsize option. Looking at the code,
> mem_parse_options does initialize mode with 0 and memcpy_sz
> should use plain memcpy as fallback.
> 
> However, if I look at include/fcntl.h, I see that O_RWSIZE_8
> collides with O_CREAT. I think that is the root cause of the
> 64b memcpy_sz issue I am suffering from?

Oh Damned! /me hiding under a brown paper bag.

I don't know how you are calling memcpy_sz, but that could lead to
these kind problems.

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
