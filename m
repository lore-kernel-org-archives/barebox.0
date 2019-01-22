Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glr0A-00036l-S0
 for barebox@lists.infradead.org; Tue, 22 Jan 2019 08:01:44 +0000
Date: Tue, 22 Jan 2019 09:01:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190122080140.a6uum4x2q2b7qw2d@pengutronix.de>
References: <1548087912-22262-1-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1548087912-22262-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH 1/3] kbuild: cherry-pick changes from Linux v5.0-rc3
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 22, 2019 at 01:25:10AM +0900, Masahiro Yamada wrote:
> Not synced completely.
> 
> Just cherry-picking low-hanging fruits.
> 
>   0b35786d77ba  kbuild: call make once for all targets when O=.. is used
>   5e54d5e5fbc1  kbuild: kill EXTRA_ARFLAGS
>   836caba77c29  kbuild: kill backward compatibility checks
>   3156fd0529b5  kbuild: fix some minor typoes
>   b8b0618cf6fa  kbuild: remove extra ifdef/endif of top Makefile
>   16f890988114  kbuild: Remove reference to uninitialised variable
>   9319f4539c18  kbuild: support simultaneous "make %config" and "make all"
>   9d5db8949f1e  scripts/Makefile.clean: clean also $(extra-m) and $(extra-)
>   a4954fd7724c  kbuild: remove obj-n and lib-n handling
>   371fdc77af44  kbuild: collect shorthands into scripts/Kbuild.include
>   a29b82326ed4  kbuild: Remove duplicate $(cmd) definition in Makefile.clean
>   a1e7b7bb1ab5  Makefile: sort list of defconfig targets in make help output
>   34948e0bbf98  kbuild: Drop support for clean-rule
>   4218affdf57f  kbuild: remove warning about "make depend"
>   9c8fa9bc08f6  kbuild: fix if_change and friends to consider argument order
>   39a33ff80a25  kbuild: remove cc-option-align
>   a7f924190924  kbuild: add %.dtb.S and %.dtb to 'targets' automatically
>   54a702f70589  kbuild: mark $(targets) as .SECONDARY and remove .PRECIOUS markers
>   9564a8cf422d  Kbuild: fix # escaping in .cmd files for future Make
>   bd412d81b7ea  kbuild: .PHONY is not a variable, but PHONY is
>   6916162c7308  kbuild: remove duplicated comments about PHONY
>   d6c6ab93e17f  kbuild: remove deprecated host-progs variable
>   7d0ea2524202  kbuild: use 'else ifeq' for checksrc to improve readability
>   3f80babd9ca4  kbuild: remove unused cc-fullversion variable
>   bd352a739fde  kbuild: remove unused baseprereq
>   b421b8a6cb87  kbuild: remove unused archmrproper
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

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
