Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz2hf-00080w-4n
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 07:28:19 +0000
Date: Fri, 24 Sep 2010 09:26:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100924072643.GA16813@game.jcrosoft.org>
References: <1285075689-11071-1-git-send-email-plagnioj@jcrosoft.com>
	<1285075689-11071-2-git-send-email-plagnioj@jcrosoft.com>
	<4C9C4C9A.7010504@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C9C4C9A.7010504@gmail.com>
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

On 00:00 Fri 24 Sep     , Andre wrote:
> On 09/21/2010 06:28 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> >Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD<plagnioj at jcrosoft.com>
> >---
> >  lib/sha1.c   |   20 +++-----------------
> >  lib/sha256.c |   19 +++----------------
> >  2 files changed, 6 insertions(+), 33 deletions(-)
> >
> >diff --git a/lib/sha1.c b/lib/sha1.c
> >index 0e8aed1..b4e2abc 100644
> >--- a/lib/sha1.c
> >+++ b/lib/sha1.c
> >@@ -29,6 +29,7 @@
> >  #include<digest.h>
> >  #include<init.h>
> >  #include<linux/string.h>
> >+#include<asm/byteorder.h>
> >
> >  #define SHA1_SUM_POS	-0x20
> >  #define SHA1_SUM_LEN	20
> >@@ -44,23 +45,8 @@ sha1_context;
> >  /*
> >   * 32-bit integer manipulation macros (big endian)
> >   */
> >-#ifndef GET_UINT32_BE
> >-#define GET_UINT32_BE(n,b,i) {				\
> >-	(n) = ( (uint32_t) (b)[(i)    ]<<  24 )	\
> >-	    | ( (uint32_t) (b)[(i) + 1]<<  16 )	\
> >-	    | ( (uint32_t) (b)[(i) + 2]<<   8 )	\
> >-	    | ( (uint32_t) (b)[(i) + 3]       );	\
> >-}
> >-#endif
> >-
> >-#ifndef PUT_UINT32_BE
> >-#define PUT_UINT32_BE(n,b,i) {				\
> >-	(b)[(i)    ] = (unsigned char) ( (n)>>  24 );	\
> >-	(b)[(i) + 1] = (unsigned char) ( (n)>>  16 );	\
> >-	(b)[(i) + 2] = (unsigned char) ( (n)>>   8 );	\
> >-	(b)[(i) + 3] = (unsigned char) ( (n)       );	\
> >-}
> >-#endif
> >+#define GET_UINT32_BE(n,b,i) (n) = be32_to_cpu(((uint32_t*)(b))[i / 4])
> >+#define PUT_UINT32_BE(n,b,i) ((uint32_t*)(b))[i / 4] = cpu_to_be32(n)
> >
> 
> The previous macros served two purposes: endian swapping and
> performing the memory accesses byte-by-byte. New versions are unsafe
> for CPUs which do not support misaligned 32bit memory accesses.
be32_to_cpu and cpu_to_be32 are supposed to handle this

and if they need byte-by-byte you will handle there no in each file that need
to do it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
