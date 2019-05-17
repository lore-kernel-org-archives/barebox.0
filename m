Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZib-0006ia-Om
 for barebox@lists.infradead.org; Fri, 17 May 2019 10:04:04 +0000
Date: Fri, 17 May 2019 12:03:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190517100359.73n7h6okfjwqexw4@pengutronix.de>
References: <20190516051254.9309-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516051254.9309-1-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] treewide: replace '---help---' with 'help' in Kconfig
 files
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Thu, May 16, 2019 at 02:12:54PM +0900, Masahiro Yamada wrote:
> In Linux, '---help---' was deprecated in favor of 'help', and
> this is checked by the recent checkpatch.pl
> 
> See Linux commit 84af7a6194e493fae312a2b7fa5a3b51f76d9282
> 
> The number of '---help---' is gradually decreasing in Linux, but there
> are still lots. However, '---help---' will be completely killed when
> the time comes.
> 
> Fortunately, there are only some in Barebox. Replacing them is not hard.
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
