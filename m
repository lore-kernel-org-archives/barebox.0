Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SwxPp-0000Z0-P5
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 15:34:23 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 91728FFABA0
 for <barebox@lists.infradead.org>; Thu,  2 Aug 2012 17:40:29 +0200 (CEST)
Date: Thu, 2 Aug 2012 17:34:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120802153422.GL19759@game.jcrosoft.org>
References: <20120730100022.GD19759@game.jcrosoft.org>
 <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
 <1343642565-32257-5-git-send-email-plagnioj@jcrosoft.com>
 <20120802153032.GE1451@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120802153032.GE1451@pengutronix.de>
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
Subject: Re: [PATCH 05/12] Add compressed image support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:30 Thu 02 Aug     , Sascha Hauer wrote:
> On Mon, Jul 30, 2012 at 12:02:38PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > +
> >  void barebox_pbl(uint32_t offset)
> >  {
> > +	uint32_t compressed_start, compressed_end, len;
> > +	void (*uncompress)(void *compressed_start, unsigned int len);
> > +
> > +	compressed_start = (uint32_t)&input_data - offset;
> > +	compressed_end = (uint32_t)&input_data_end - offset;
> > +	len = compressed_end - compressed_start;
> > +
> > +	/*
> > +	 * Check if the compressed binary will be overwritten
> > +	 * by the uncompressed binary
> > +	 */
> > +	if (compressed_start >= TEXT_BASE &&
> > +			compressed_start < TEXT_BASE + len * 4 ) {
> > +		/*
> > +		 * copy compressed binary to its link address
> > +		 */
> > +		memcpy(&input_data, (void *)compressed_start, len);
> > +		compressed_start = (uint32_t)&input_data;
> > +	}
> > +
> > +	uncompress = barebox_uncompress;
> > +
> > +	/* call barebox_uncompress with its absolute address */
> > +	__asm__ __volatile__(
> > +		"mov r0, %1\n"
> > +		"mov r1, %2\n"
> > +		"mov pc, %0\n"
> > +		:
> > +		: "r"(uncompress), "r"(compressed_start), "r"(len)
> > +		: "r0", "r1");
> 
> When the pbl code runs at its correct address, then we can simply do a
> barebox_uncompress() here.
> 
> Fixed this before applying.
the code in start does not do this

we just do a call to barebox_pbl

are you really sure about this?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
