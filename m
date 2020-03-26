Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHLpS-00056g-IC
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 06:17:23 +0000
Date: Thu, 26 Mar 2020 07:17:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200326061720.GM27288@pengutronix.de>
References: <20200325063418.27807-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325063418.27807-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 3/3] kconfig: update to Linux 5.5
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Wed, Mar 25, 2020 at 03:34:18PM +0900, Masahiro Yamada wrote:
> The previous sync was Linux 5.3-rc3. This updates Kconfig to Linux 5.5.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>  scripts/kconfig/Makefile        | 10 +++++++---
>  scripts/kconfig/conf.c          | 13 ++++++++++++-
>  scripts/kconfig/expr.c          |  7 +++++++
>  scripts/kconfig/mconf-cfg.sh    |  3 +++
>  scripts/kconfig/merge_config.sh | 12 ++++++------
>  scripts/kconfig/nconf-cfg.sh    |  3 +++
>  scripts/kconfig/parser.y        |  1 -
>  7 files changed, 38 insertions(+), 11 deletions(-)

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
