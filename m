Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5krD-0003nz-Gk
 for barebox@lists.infradead.org; Thu, 05 Sep 2019 06:03:01 +0000
Date: Thu, 5 Sep 2019 08:02:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190905060256.2l7mbcrjwbxsfxsz@pengutronix.de>
References: <20190827150918.16247-1-ahmad@a3f.at>
 <20190904065321.rowojfaibla3rimy@pengutronix.de>
 <979a1f83-5291-9bdf-21f4-48e1ea5cfeeb@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <979a1f83-5291-9bdf-21f4-48e1ea5cfeeb@pengutronix.de>
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
Subject: Re: [PATCH v2 00/10] Add initial support for -fsanitize={ubsan,asan}
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 04, 2019 at 09:52:52AM +0200, Ahmad Fatoum wrote:
> On 9/4/19 8:53 AM, Sascha Hauer wrote:
> > On Tue, Aug 27, 2019 at 05:09:08PM +0200, Ahmad Fatoum wrote:
> >> This series adds undefined behavior and address sanitizer support to
> >> barebox. Both are fully functional on sandbox, where they are also used
> >> to implement dump_stack() now.
> >>
> >> I haven't yet read about how Kernel AddressSanitizer works, so this one
> >> only works on sandbox via libasan for now.
> >>
> >> The undefined behavior sanitizer depends on the compiler instrumenting
> >> potential pitfalls and then calling the routines in lib/ubsan.c if it
> >> catches something undefined, so that should readily work on other arches
> >> as well. I tested it on sandbox and the i.MX6Q so far.
> >>
> >> Eventually, it should be possible to enable it for all the non-PBL stuff
> >> with a single Kconfig option, but for now you need to explicitly add a
> >>
> >> 	UBSAN_SANITIZE_myfile.o := y
> >>
> >> in the respective Makefile. Enabling it wholesale doesn't yet work on
> >> ARM, I suspect it might be due to binary size.
> >>
> >> Changes in v2:
> >> 	v1 was incomplete and sent our more by mistake,
> >> 	so no changelog.
> > 
> > Applied, thanks
> 
> Could you swap patch 08 and 09? Patch 08 depends on the KASAN symbol
> in the Kconfig option of SANDBOX_UNWIND, but this symbol is introduced
> in patch 09..

Just did that.

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
