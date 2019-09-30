Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF0WY-00029P-0S
 for barebox@lists.infradead.org; Mon, 30 Sep 2019 18:35:56 +0000
Date: Mon, 30 Sep 2019 20:35:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190930183551.seuch7ni4yvyrd7e@pengutronix.de>
References: <20190927060536.25664-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927060536.25664-1-ahmad@a3f.at>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] kbuild, LLVMLinux: Add -Werror to cc-option to support
 clang
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Fri, Sep 27, 2019 at 08:05:36AM +0200, Ahmad Fatoum wrote:
> From: Mark Charlebois <charlebm@gmail.com>
> =

> Clang will warn about unknown warnings but will not return false
> unless -Werror is set. GCC will return false if an unknown
> warning is passed.
> =

> Adding -Werror make both compiler behave the same.
> =

> [arnd: it turns out we need the same patch for testing whether -ffunction=
-sections
>        works right with gcc. I've build tested extensively with this patch
>        applied, so let's just merge this one now.]
> =

> Signed-off-by: Mark Charlebois <charlebm@gmail.com>
> Signed-off-by: Behan Webster <behanw@converseincode.com>
> Reviewed-by: Jan-Simon M=F6ller <dl9pf@gmx.de>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Acked-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> [afa: ported to barebox from upstream c3f0d0bc5b01ad9]
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  scripts/Kbuild.include | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
