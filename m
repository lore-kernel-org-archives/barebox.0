Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OPEyE-00084R-Hl
	for barebox@lists.infradead.org; Thu, 17 Jun 2010 13:17:27 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1OPEyC-0003ev-HQ
	for barebox@lists.infradead.org; Thu, 17 Jun 2010 15:17:24 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1OPEyC-0004Wd-A0
	for barebox@lists.infradead.org; Thu, 17 Jun 2010 15:17:24 +0200
Date: Thu, 17 Jun 2010 15:17:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100617131724.GN20799@pengutronix.de>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
	<1276508921-3264-5-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1276508921-3264-5-git-send-email-s.hauer@pengutronix.de>
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
To: barebox@lists.infradead.org


Here is an updated version. I have put get_random_bytes() into
stdlib.h aswell, though of course this is no stdlib function.

Sascha

[PATCH 04/24] include support for a simple pseudo number generator

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h    |    1 +
 include/stdlib.h |   16 ++++++++++++++++
 lib/Makefile     |    1 +
 lib/random.c     |   22 ++++++++++++++++++++++
 4 files changed, 40 insertions(+), 0 deletions(-)
 create mode 100644 include/stdlib.h
 create mode 100644 lib/random.c

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
index 0000000..48c923f
--- /dev/null
+++ b/lib/random.c
@@ -0,0 +1,22 @@
+#include <common.h>
+#include <stdlib.h>
+
+static unsigned int random_seed;
+
+unsigned int rand(void)
+{
+	random_seed = random_seed * 1103515245 + 12345;
+	return (random_seed / 65536) % 32768;
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
1.7.1


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
