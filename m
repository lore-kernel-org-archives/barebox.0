Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gW8AS-0005Va-Fd
 for barebox@lists.infradead.org; Sun, 09 Dec 2018 23:07:23 +0000
Date: Mon, 10 Dec 2018 00:07:05 +0100
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181209230705.mmjbjy4eupzf6n4w@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
 <20181129113048.31857-3-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181129113048.31857-3-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 02/15] Makefile: Correctly deal with make options which
 contain an "s"
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

By the way, the way of detecting make options has already changed in the
current incarnation of that line, which is from commit 6f0fa58e459642b16
(which also has a nice explanation, of course):

ifneq ($(findstring s,$(filter-out --%,$(MAKEFLAGS))),)

 - Roland

On Thu, Nov 29, 2018 at 12:30:35PM +0100, Steffen Trumtrar wrote:
> Based on linux v3.2 patch: e6ac89fabd030704eac691dab7783ebe06e6b2c1
> 
>     kbuild: Correctly deal with make options which contain an "s"
> 
>     When using remake, which is based on gnumake, if you invoke
>     an example build as shown below, the build will become silent
>     due to the top level make file incorrectly guessing that
>     the end user wants a silent build because an argument that
>     contained an "s" was used.  Here are two examples one with remake
>     and one with straight gnumake.
> 
>     remake --no-extended-errors
>     make --warn-undefined-variables
> 
>     Fix up the top level Makefile to use filter to parse the options
>     that mean silent instead of findstring catching other random
>     arguments containing an "s".
> 
>     Signed-off-by: Jason Wessel <jason.wessel@windriver.com>
>     CC: Michal Marek <mmarek@suse.cz>
>     CC: Andrew Morton <akpm@linux-foundation.org>
>     CC: linux-kbuild@vger.kernel.org
>     Signed-off-by: Michal Marek <mmarek@suse.cz>
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index dedb16d60069..cddff1267972 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -252,7 +252,7 @@ endif
>  # If the user is running make -s (silent mode), suppress echoing of
>  # commands
>  
> -ifneq ($(findstring s,$(MAKEFLAGS)),)
> +ifneq ($(filter s% -s%,$(MAKEFLAGS)),)
>    quiet=silent_
>  endif
>  
> -- 
> 2.19.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
