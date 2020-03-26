Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHLmv-0003cC-Am
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 06:14:46 +0000
Date: Thu, 26 Mar 2020 07:14:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200326061443.GK27288@pengutronix.de>
References: <20200325063002.27306-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325063002.27306-1-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH 1/3] kbuild: remove clean-dirs syntax
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 25, 2020 at 03:30:02PM +0900, Masahiro Yamada wrote:
> [ Linux comit 1634f2bfdb846ed0a8b73131a9dff7c420fb3fe1 ]
> 
> The only the difference between clean-files and clean-dirs is the -r
> option passed to the 'rm' command.
> 
> You can always pass -r, and then remove the clean-dirs syntax.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>  scripts/Makefile.clean   | 15 +--------------
>  scripts/kconfig/Makefile |  2 +-
>  2 files changed, 2 insertions(+), 15 deletions(-)

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
