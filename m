Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJAs-0002Xx-8J
 for barebox@lists.infradead.org; Thu, 13 Jun 2019 06:25:27 +0000
Date: Thu, 13 Jun 2019 08:25:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190613062523.hz5xckmfyjl4mm4b@pengutronix.de>
References: <20190611101635.22422-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611101635.22422-1-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] kbuild: do not drop -I without parameter
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 11, 2019 at 07:16:35PM +0900, Masahiro Yamada wrote:
> Linux commit 48f6e3cf5bc6dd0ee00405342ff310c3b1fedb35
> [ Adjusted for barebox for some missing commits ]
> 
> The comment line for addtree says "skip if -I has no parameter".
> 
> What it actually does is "drop if -I has no parameter".  For example,
> if you have the compiler flag '-I foo' (a space between), it will be
> converted to 'foo'.  This completely changes the meaning.
> 
> What we want is, "do nothing" for -I without parameter so that
> '-I foo' is kept as-is.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

Applied this one and the Kconfig update ontop of it. Thanks,

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
