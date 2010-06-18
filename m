Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OPV40-00036N-HP
	for barebox@lists.infradead.org; Fri, 18 Jun 2010 06:28:29 +0000
Date: Fri, 18 Jun 2010 08:28:26 +0200
From: 'Sascha Hauer' <s.hauer@pengutronix.de>
Message-ID: <20100618062826.GP20799@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Re: [PATCH 04/11] include support for a simple pseudo number generator
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 17, 2010 at 02:26:58PM +0100, Andy Pont wrote:
> Sascha Hauer wrote...
> 
> > +#define RAND_MAX 32767
> > +
> > +/* return a pseudo-random integer in the range [0, RAND_MAX] */
> > +unsigned int rand(void);
> 
> *Snip*
> 
> > +unsigned int rand(void)
> > +{
> > +	random_seed = random_seed * 1103515245 + 12345;
> > +	return (random_seed / 65536) % 32768;
> > +}
> 
> The return value on this function seems wrong as it will always return a
> value between 0 and 32767 irrespective of what RAND_MAX is set to which
> doesn't agree with the comment on the function prototype.

Well the way the rand function is implemented it is not suitable for
RAND_MAX > 32767. Ok, changed it for the attached patch.

I originally thought there would be discussion about the pros and cons
of random ethernet addresses, but about not this patch ;)

Sascha

commit dcd5248b7dceb918c5c5d9b045893421ddc6c112
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Fri Jun 11 14:10:36 2010 +0200

    include support for a simple pseudo number generator
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/include/net.h b/include/net.h
index 8db83d8..709e76c 100644
--- a/include/net.h
+++ b/include/net.h
@@ -16,6 +16,7 @@
 #include <linux/types.h>
 #include <param.h>
 #include <malloc.h>
+#include <stdlib.h>
 #include <asm/byteorder.h>	/* for nton* / ntoh* stuff */
 
 
diff --git a/include/stdlib.h b/include/stdlib.h
new file mode 100644
index 0000000..dc72013
--- /dev/null
+++ b/include/stdlib.h
@@ -0,0 +1,16 @@
+#ifndef __STDLIB_H
+#define __STDLIB_H
+
+#define RAND_MAX 32767
+
+/* return a pseudo-random integer in the range [0, RAND_MAX] */
+unsigned int rand(void);
+
+/* set the seed for rand () */
+void srand(unsigned int seed);
+
+/* fill a buffer with pseudo-random data */
+void get_random_bytes(char *buf, int len);
+
+
+#endif /* __STDLIB_H */
diff --git a/lib/Makefile b/lib/Makefile
index b072fb6..4a33aaa 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_GENERIC_FIND_NEXT_BIT) += find_next_bit.o
 obj-y			+= glob.o
 obj-y			+= notifier.o
 obj-y			+= copy_file.o
+obj-y			+= random.o
 obj-y			+= lzo/
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
diff --git a/lib/random.c b/lib/random.c
new file mode 100644
index 0000000..352d6bf
--- /dev/null
+++ b/lib/random.c
@@ -0,0 +1,26 @@
+#include <common.h>
+#include <stdlib.h>
+
+static unsigned int random_seed;
+
+#if RAND_MAX > 32767
+#error this rand implementation is for RAND_MAX < 32678 only.
+#endif
+
+unsigned int rand(void)
+{
+	random_seed = random_seed * 1103515245 + 12345;
+	return (random_seed / 65536) % (RAND_MAX + 1);
+}
+
+void srand(unsigned int seed)
+{
+	random_seed = seed;
+}
+
+void get_random_bytes(char *buf, int len)
+{
+	while (len--)
+		*buf++ = rand() % 256;
+}
+
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
