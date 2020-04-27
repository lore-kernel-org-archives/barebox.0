Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSydA-00035u-HE
 for barebox@lists.infradead.org; Mon, 27 Apr 2020 07:56:45 +0000
Date: Mon, 27 Apr 2020 09:56:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200427075642.GN5877@pengutronix.de>
References: <20200424185924.705754-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424185924.705754-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 1/6] kbuild: remove meaningless headers_check from help
 target
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

Hi Masahiro,

On Sat, Apr 25, 2020 at 03:59:19AM +0900, Masahiro Yamada wrote:
> This is never shown because include/asm-$(ARCH)/Kbuild does not exist.
> 
> headers_check does not make any sense for barebox.
> 
> Linux also deprecated headers_check by commit 7ecaf069da52 ("kbuild:
> move headers_check rule to usr/include/Makefile").
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Thank you by the way for your constant stream of updates in the
Kbuild/Kconfig area. It's an area most people don't really like to
touch, still it needs quite some care. I really appreciate your work.

Regards,
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
