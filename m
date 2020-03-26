Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHLoa-0004zY-Su
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 06:16:30 +0000
Date: Thu, 26 Mar 2020 07:16:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200326061627.GL27288@pengutronix.de>
References: <20200325063019.27369-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325063019.27369-1-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH 2/3] kbuild: change *FLAGS_<basetarget>.o to take the
 path relative to $(obj)
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 25, 2020 at 03:30:19PM +0900, Masahiro Yamada wrote:
> [ Linux commit 54b8ae66ae1a3454a7645d159a482c31cd89ab33 ]
> 
> I introduced a new variable, target-stem, which can be used also from
> explicit rules.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>  scripts/Makefile.host    | 14 +++++++-------
>  scripts/Makefile.lib     |  9 ++++++---
>  scripts/kconfig/Makefile |  8 ++++----
>  3 files changed, 17 insertions(+), 14 deletions(-)

Applied, thanks

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
