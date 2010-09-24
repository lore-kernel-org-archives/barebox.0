Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz62f-0002Yi-72
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 11:02:14 +0000
Date: Fri, 24 Sep 2010 13:00:45 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100924110045.GF16813@game.jcrosoft.org>
References: <1285075689-11071-1-git-send-email-plagnioj@jcrosoft.com>
	<1285075689-11071-2-git-send-email-plagnioj@jcrosoft.com>
	<4C9C4C9A.7010504@gmail.com>
	<20100924074303.GO23406@pengutronix.de>
	<20100924083438.GE16813@game.jcrosoft.org>
	<4C9C7A6C.2060802@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C9C7A6C.2060802@gmail.com>
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
Subject: Re: [PATCH 2/2] sha1/sha256: use be32_to_cpu and cpu_to_be32
To: Andre <armccurdy@gmail.com>
Cc: barebox@lists.infradead.org

On 03:16 Fri 24 Sep     , Andre wrote:
> On 09/24/2010 01:34 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >On 09:43 Fri 24 Sep     , Sascha Hauer wrote:
> >>On Fri, Sep 24, 2010 at 12:00:42AM -0700, Andre wrote:
> >>>On 09/21/2010 06:28 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >>>
> >>>>Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD<plagnioj at jcrosoft.com>
> >>>>---
> >>>>   lib/sha1.c   |   20 +++-----------------
> >>>>   lib/sha256.c |   19 +++----------------
> >>>>   2 files changed, 6 insertions(+), 33 deletions(-)
> >>>>
> >>>>diff --git a/lib/sha1.c b/lib/sha1.c
> >>>>index 0e8aed1..b4e2abc 100644
> >>>>--- a/lib/sha1.c
> >>>>+++ b/lib/sha1.c
> >>>>@@ -29,6 +29,7 @@
> >>>>   #include<digest.h>
> >>>>   #include<init.h>
> >>>>   #include<linux/string.h>
> >>>>+#include<asm/byteorder.h>
> >>>>
> >>>>   #define SHA1_SUM_POS	-0x20
> >>>>   #define SHA1_SUM_LEN	20
> >>>>@@ -44,23 +45,8 @@ sha1_context;
> >>>>   /*
> >>>>    * 32-bit integer manipulation macros (big endian)
> >>>>    */
> >>>>-#ifndef GET_UINT32_BE
> >>>>-#define GET_UINT32_BE(n,b,i) {				\
> >>>>-	(n) = ( (uint32_t) (b)[(i)    ]<<   24 )	\
> >>>>-	    | ( (uint32_t) (b)[(i) + 1]<<   16 )	\
> >>>>-	    | ( (uint32_t) (b)[(i) + 2]<<    8 )	\
> >>>>-	    | ( (uint32_t) (b)[(i) + 3]       );	\
> >>>>-}
> >>>>-#endif
> >>>>-
> >>>>-#ifndef PUT_UINT32_BE
> >>>>-#define PUT_UINT32_BE(n,b,i) {				\
> >>>>-	(b)[(i)    ] = (unsigned char) ( (n)>>   24 );	\
> >>>>-	(b)[(i) + 1] = (unsigned char) ( (n)>>   16 );	\
> >>>>-	(b)[(i) + 2] = (unsigned char) ( (n)>>    8 );	\
> >>>>-	(b)[(i) + 3] = (unsigned char) ( (n)       );	\
> >>>>-}
> >>>>-#endif
> >>>>+#define GET_UINT32_BE(n,b,i) (n) = be32_to_cpu(((uint32_t*)(b))[i / 4])
> >>>>+#define PUT_UINT32_BE(n,b,i) ((uint32_t*)(b))[i / 4] = cpu_to_be32(n)
> >>>>
> >>>>
> >>>
> >>>The previous macros served two purposes: endian swapping and performing
> >>>the memory accesses byte-by-byte. New versions are unsafe for CPUs which
> >>>do not support misaligned 32bit memory accesses.
> >>
> >>Indeed. We have get_unaligned_be32() / put_unaligned_be32(). These should be
> >>the correct functions, right?
> >
> >no-nned IIRC as be32_to_cpu and cpu_to_be32 already handle this
> >depending on the arch
> >
> 
> I think get_unaligned_be32() / put_unaligned_be32() are correct in
> this case. be32_to_cpu / cpu_to_be32 perform endian swapping (if
> required) with source and destination both being 32bit variables,
> not memory locations ?
no the arch have to handle this
> 
> Of course the easy way to test any version is to build for an
> architecture which cares about alignment and look at the
> disassembly. If the compiler generates one 32bit load/store
> instruction instead of 4 byte accesses then the code is wrong.
> 
> In any case, this looks dubious:
> 
> #define PUT_UINT32_BE(n,b,i) ((uint32_t*)(b))[i / 4] = cpu_to_be32(n)
> 
> Behaviour when i == 0 is the same as when i == 1, which wasn't the
> case with the old macros. Also, if b is not 32bit aligned, store
> will be misaligned regardless of having cpu_to_be32(), or anything
> else, on the rhs.
except here i is always a multiple of 4

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
