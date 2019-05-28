Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXDh-0006AV-6v
 for barebox@lists.infradead.org; Tue, 28 May 2019 08:12:32 +0000
Date: Tue, 28 May 2019 10:12:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190528081227.bha5tj7gsbwrfn5w@pengutronix.de>
References: <20190524072448.16110-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524072448.16110-1-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] kbuild: drop support for cc-ldoption
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Fri, May 24, 2019 at 04:24:48PM +0900, Masahiro Yamada wrote:
> Barebox is not using this macro.
> 
> Linux commit 055efab3120bae7ab1ed841317774f3c953f6e1b killed this
> macro, so let's remove it from barebox too.
> 
> I see another cc-ldoption in dts/scripts/Kbuild.include, but did not
> touch it. In my understanding, the dts/ directory is synced with the
> upstream devicetree-rebasing project [1].
> 
> [1] git://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git
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
