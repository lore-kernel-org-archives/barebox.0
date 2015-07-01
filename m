Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAAez-00022B-SL
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 05:34:14 +0000
Date: Wed, 1 Jul 2015 07:33:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150701053350.GY18611@pengutronix.de>
References: <1435699944-20478-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435699944-20478-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] treewide: fix 'new blank line at EOF' formatting error
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 01, 2015 at 12:32:24AM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/automount.c            | 1 -
>  commands/export.c               | 1 -
>  commands/false.c                | 1 -
>  commands/help.c                 | 1 -
>  commands/net.c                  | 1 -
>  commands/readline.c             | 1 -
>  commands/timeout.c              | 1 -
>  commands/trigger.c              | 1 -
>  commands/true.c                 | 1 -
>  commands/ubi.c                  | 1 -
>  commands/version.c              | 1 -
>  common/complete.c               | 1 -
>  common/kallsyms.c               | 1 -
>  common/parser.c                 | 1 -
>  fs/cramfs/cramfs.c              | 1 -
>  fs/fat/fat.c                    | 1 -
>  fs/ramfs.c                      | 1 -
>  lib/fnmatch.c                   | 1 -
>  lib/lzo/lzo1x_decompress_safe.c | 1 -
>  lib/random.c                    | 1 -
>  lib/strtox.c                    | 1 -
>  net/net.c                       | 1 -
>  net/nfs.c                       | 1 -
>  23 files changed, 23 deletions(-)

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
