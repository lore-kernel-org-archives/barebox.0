Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx4M8-0002IT-Or
 for barebox@lists.infradead.org; Mon, 12 Aug 2019 07:03:02 +0000
Date: Mon, 12 Aug 2019 09:02:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190812070259.smq4wxhsxqlxdt4e@pengutronix.de>
References: <20190807164808.15228-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807164808.15228-1-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] kbuild: use -fmacro-prefix-map to make __FILE__ a
 relative path
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 08, 2019 at 01:48:08AM +0900, Masahiro Yamada wrote:
> Linux commit a73619a845d5625079cc1b3b820f44c899618388
> 
> The __FILE__ macro is used everywhere in the kernel to locate the file
> printing the log message, such as WARN_ON(), etc.  If the kernel is
> built out of tree, this can be a long absolute path, like this:
> 
>   WARNING: CPU: 1 PID: 1 at /path/to/build/directory/arch/arm64/kernel/foo.c:...
> 
> This is because Kbuild runs in the objtree instead of the srctree,
> then __FILE__ is expanded to a file path prefixed with $(srctree)/.
> 
> Commit 9da0763bdd82 ("kbuild: Use relative path when building in a
> subdir of the source tree") improved this to some extent; $(srctree)
> becomes ".." if the objtree is a child of the srctree.
> 
> For other cases of out-of-tree build, __FILE__ is still the absolute
> path.  It also means the kernel image depends on where it was built.
> 
> A brand-new option from GCC, -fmacro-prefix-map, solves this problem.
> If your compiler supports it, __FILE__ is the relative path from the
> srctree regardless of O= option.  This provides more readable log and
> more reproducible builds.
> 
> Please note __FILE__ is always an absolute path for external modules.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>  Makefile | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

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
