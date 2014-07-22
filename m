Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9g0V-0007Mp-HP
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 19:45:52 +0000
Date: Tue, 22 Jul 2014 21:45:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140722194528.GC23235@pengutronix.de>
References: <6b8c916b058b2ea98a40c6d701186608@linux-source.de>
 <20140722053847.GV23235@pengutronix.de>
 <94dc023fe4dffc56144a4d26532aff05@linux-source.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <94dc023fe4dffc56144a4d26532aff05@linux-source.de>
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
Subject: Re: [PATCH] arch/arm/lib/bootm: fix length check of kernel image
To: basti@linux-source.de
Cc: barebox@lists.infradead.org

On Tue, Jul 22, 2014 at 11:14:26AM +0200, basti@linux-source.de wrote:
> Hi Sascha,

(Adding back the list to Cc)

> 
> >>Signed-off-by: Sebastian Block <basti@linux-source.de>
> >>---
> >> arch/arm/lib/bootm.c |    2 +-
> >> 1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >>diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> >>index 4896d01..d9b9111 100644
> >>--- a/arch/arm/lib/bootm.c
> >>+++ b/arch/arm/lib/bootm.c
> >>@@ -314,7 +314,7 @@ static int do_bootz_linux(struct image_data *data)
> >> 			image_size - sizeof(*header));
> >> 	if (ret < 0)
> >> 		goto err_out;
> >>-	if (ret < end - sizeof(*header)) {
> >>+	if (ret < image_size - sizeof(*header)) {
> >
> >Did this cause any real trouble? I was quite surprised when I saw that
> >patch. After a test I saw that for me 'image_size' has the same
> >value as
> >'end'.
> 
> I run into trouble with it, caused by variable end contains memory
> address of the image not the size as returned by read_full.

Hm, this must have something to do with your kernel configuration. Maybe
you have CONFIG_ARM_PATCH_PHYS_VIRT disabled in your kernel.

Anyway, applied this patch to current master.

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
