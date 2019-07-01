Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhq3x-00009X-SA
 for barebox@lists.infradead.org; Mon, 01 Jul 2019 06:45:19 +0000
Date: Mon, 1 Jul 2019 08:45:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190701064514.jlocqt2nptmivx3l@pengutronix.de>
References: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
 <a07c0c37128f9f33cee472c963753999e57374c2.1561525118.git-series.r.czerwinski@pengutronix.de>
 <20190626075205.k5kkwumyougusmaz@pengutronix.de>
 <a833d9b85f9449df778aec4e990a284379190993.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a833d9b85f9449df778aec4e990a284379190993.camel@pengutronix.de>
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
Subject: Re: [PATCH 10/13] arm: uncompress: verify sha256 if enabled
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 01, 2019 at 08:19:13AM +0200, Rouven Czerwinski wrote:
> On Wed, 2019-06-26 at 09:52 +0200, Sascha Hauer wrote:
> > On Wed, Jun 26, 2019 at 06:58:51AM +0200, Rouven Czerwinski wrote:
> > > Add piggydata verification before the ARM uncompress function.
> > > This calculates the sha256sum of the compressed barebox binary and
> > > only
> > > continues if the builtin sha256sum matches the calculated
> > > sha256sum.
> > > 
> > > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > > ---
> > >  arch/arm/cpu/uncompress.c | 18 +++++++++++++++++-
> > >  1 file changed, 17 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> > > index e527165..ce5f2c1 100644
> > > --- a/arch/arm/cpu/uncompress.c
> > > +++ b/arch/arm/cpu/uncompress.c
> > > @@ -42,14 +42,18 @@ unsigned long free_mem_end_ptr;
> > >  extern unsigned char input_data[];
> > >  extern unsigned char input_data_end[];
> > >  
> > > +extern unsigned char sha_sum[];
> > > +extern unsigned char sha_sum_end[];
> > > +
> > >  void __noreturn barebox_multi_pbl_start(unsigned long membase,
> > >  		unsigned long memsize, void *boarddata)
> > >  {
> > > -	uint32_t pg_len, uncompressed_len;
> > > +	uint32_t pg_len, uncompressed_len, pbl_hash_len;
> > >  	void __noreturn (*barebox)(unsigned long, unsigned long, void
> > > *);
> > >  	unsigned long endmem = membase + memsize;
> > >  	unsigned long barebox_base;
> > >  	void *pg_start, *pg_end;
> > > +	void *pbl_hash_start, *pbl_hash_end;
> > >  	unsigned long pc = get_pc();
> > >  
> > >  	pg_start = input_data + global_variable_offset();
> > > @@ -92,6 +96,18 @@ void __noreturn barebox_multi_pbl_start(unsigned
> > > long membase,
> > >  	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to
> > > 0x%08lx (uncompressed size: 0x%08x)\n",
> > >  			pg_start, pg_len, barebox_base,
> > > uncompressed_len);
> > >  
> > > +	if (IS_ENABLED(CONFIG_PBL_VERIFY_PIGGY)) {
> > > +		pbl_hash_start = sha_sum + global_variable_offset();
> > > +		pbl_hash_end = sha_sum_end + global_variable_offset();
> > > +		pbl_hash_len = pbl_hash_end - pbl_hash_start;
> > > +		if (pbl_barebox_verify(pg_start, pg_len,
> > > pbl_hash_start,
> > > +				       pbl_hash_len) != 0) {
> > > +			putc_ll('!');
> > > +			pr_err("hash mismatch, refusing to
> > > decompress");
> > > +			panic("hash mismatch, refusing to decompress");
> > 
> > Isn't printing the string in panic() enough?
> 
> Unfortunately not, pbl/misc.c defines panic as:
> 
> void __noreturn panic(const char *fmt, ...)
> {
> 	while(1);
> }

Then maybe we should add the printf here. We have static inline wrappers
for printf when the cosnole is disabled in the PBL.

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
