Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ZJE-0004gf-OA
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 14:38:29 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 12 Aug 2012 16:37:30 +0200
References: <1344781367-13547-1-git-send-email-s.hauer@pengutronix.de>
 <1344781367-13547-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344781367-13547-5-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201208121637.30369.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/8] ARM s3c boards: Do not hardcode image sizes
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> The existing nand_boot functions all do the same, so move it to
> a common place. To be flexible enough for future boards the real
> image size is used instead of hardcoded 256k.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Juergen Beisert <jbe@pengutronix.de>
> ---
>  arch/arm/boards/a9m2410/a9m2410.c               |    7 -------
>  arch/arm/boards/a9m2440/a9m2440.c               |    7 -------
>  arch/arm/boards/friendlyarm-mini2440/mini2440.c |    7 -------
>  drivers/mtd/nand/nand_s3c24xx.c                 |   10 ++++++++++
>  4 files changed, 10 insertions(+), 21 deletions(-)
>
[...]

I'm fine with this change.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
