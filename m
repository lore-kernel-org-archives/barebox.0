Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFpUU-0003Wn-GO
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 16:24:55 +0000
Date: Thu, 5 Apr 2012 18:24:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120405162448.GI3852@pengutronix.de>
References: <1333618896-7863-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333618896-7863-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imx27-regs: fix .h usage in assembly file
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 05, 2012 at 11:41:36AM +0200, Eric B=E9nard wrote:
> 7ab0a0a i.MX27: Added helper for setup chipselect control register
> added an helper which triggers the following error :
> arch/arm/mach-imx/include/mach/imx27-regs.h:243: Error: bad instruction `=
static inline void imx27_setup_weimcs(size_t cs,unsigned upper,unsigned low=
er,unsigned addional)'
> =

> This patch fix this problem.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Thanks, Eric. You are my hero of the day. I applied your patches except
the ones Jean-Christophe commented on. I assume he will come up with
another solution.

Thanks
 Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
