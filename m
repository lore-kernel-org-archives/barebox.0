Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzjFW-00030E-Qp
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 07:35:27 +0000
Date: Mon, 28 Jan 2013 08:35:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130128073525.GH1906@pengutronix.de>
References: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
 <1359283623-1782-30-git-send-email-s.hauer@pengutronix.de>
 <20130127145433.GA1217@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130127145433.GA1217@x61s.8.8.8.8>
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
Subject: Re: [PATCH 29/34] ARM: Factor out early mmu code
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 27, 2013 at 03:54:35PM +0100, Alexander Aring wrote:
> > +static void create_sections(unsigned long addr, int size_m, unsigned int flags)
> > +{
> > +	int i;
> > +
> > +	addr >>= 20;
> > +
> > +	for (i = size_m; i > 0; i--, addr++)
> > +		ttb[addr] = (addr << 20) | flags;
> > +}
> > +
> > +static void map_cachable(unsigned long start, unsigned long size)
> > +{
> > +	start &= ~(SZ_1M - 1);
> > +	size = (size + (SZ_1M - 1)) & ~(SZ_1M - 1);
> Maybe we can use ALIGN macro from common.h here?
> Only a small change, but it's easier to understand code.
> I can send a patch for this, if you like that idea.
> 
> Similar we can create a macro ALIGN_DOWN for start.

Good idea. I'll integrate this when redoing this series.

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
