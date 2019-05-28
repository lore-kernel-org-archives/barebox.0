Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXDT-00061H-FG
 for barebox@lists.infradead.org; Tue, 28 May 2019 08:12:17 +0000
Date: Tue, 28 May 2019 10:12:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190528081212.n3eqe5e6hpjjmrsd@pengutronix.de>
References: <20190524071051.32285-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524071051.32285-1-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] kbuild: remove unneeded patterns from distclean
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Fri, May 24, 2019 at 04:10:51PM +0900, Masahiro Yamada wrote:
> Drop the following patterns based on Linux.
> 
> [1] -size 0
>    Linux commit f4b129f519f1bbd191dca2bf17d1137edf941fd1
> 
> [2] '.*.cmd'
>    Linux commit a03fcb50e816a69acffb13b5e56db75063aeba8a
> 
> [3] (second) '.*.orig' '.*.rej'
>    Linux commit f78271dfb77353c4d045f9735deebe21839fb2ed
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
