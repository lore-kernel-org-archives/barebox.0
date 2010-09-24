Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz6iM-00069C-Pq
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 11:45:19 +0000
Date: Fri, 24 Sep 2010 13:43:50 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100924114350.GG16813@game.jcrosoft.org>
References: <1285075689-11071-1-git-send-email-plagnioj@jcrosoft.com>
	<1285075689-11071-2-git-send-email-plagnioj@jcrosoft.com>
	<4C9C4C9A.7010504@gmail.com>
	<20100924074303.GO23406@pengutronix.de>
	<20100924083438.GE16813@game.jcrosoft.org>
	<4C9C7A6C.2060802@gmail.com>
	<20100924110045.GF16813@game.jcrosoft.org>
	<20100924111512.GR23406@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100924111512.GR23406@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Andre <armccurdy@gmail.com>

On 13:15 Fri 24 Sep     , Sascha Hauer wrote:
> On Fri, Sep 24, 2010 at 01:00:45PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > >>>>-	    | ( (uint32_t) (b)[(i) + 3]       );	\
> > > >>>>-}
> > > >>>>-#endif
> > > >>>>-
> > > >>>>-#ifndef PUT_UINT32_BE
> > > >>>>-#define PUT_UINT32_BE(n,b,i) {				\
> > > >>>>-	(b)[(i)    ] = (unsigned char) ( (n)>>   24 );	\
> > > >>>>-	(b)[(i) + 1] = (unsigned char) ( (n)>>   16 );	\
> > > >>>>-	(b)[(i) + 2] = (unsigned char) ( (n)>>    8 );	\
> > > >>>>-	(b)[(i) + 3] = (unsigned char) ( (n)       );	\
> > > >>>>-}
> > > >>>>-#endif
> > > >>>>+#define GET_UINT32_BE(n,b,i) (n) = be32_to_cpu(((uint32_t*)(b))[i / 4])
> > > >>>>+#define PUT_UINT32_BE(n,b,i) ((uint32_t*)(b))[i / 4] = cpu_to_be32(n)
> > > >>>>
> > > >>>>
> > > >>>
> > > >>>The previous macros served two purposes: endian swapping and performing
> > > >>>the memory accesses byte-by-byte. New versions are unsafe for CPUs which
> > > >>>do not support misaligned 32bit memory accesses.
> > > >>
> > > >>Indeed. We have get_unaligned_be32() / put_unaligned_be32(). These should be
> > > >>the correct functions, right?
> > > >
> > > >no-nned IIRC as be32_to_cpu and cpu_to_be32 already handle this
> > > >depending on the arch
> > > >
> > > 
> > > I think get_unaligned_be32() / put_unaligned_be32() are correct in
> > > this case. be32_to_cpu / cpu_to_be32 perform endian swapping (if
> > > required) with source and destination both being 32bit variables,
> > > not memory locations ?
> > no the arch have to handle this
> 
> No. As Andre mentioned cpu_to_be32 operates on variables, not on
> pointers. with ((uint32_t*)(b))[i / 4] you cast b to a pointer to
> uint32_t which you dereference with [i / 4]. This has nothing to do
> with cpu_to_be32 and will crash if the architecture does not allow
> unaligned accesses.
except cpu_to_be 32 do a swapb so it's safe

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
