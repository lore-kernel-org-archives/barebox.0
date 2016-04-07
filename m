Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ao8XH-0001rm-Mz
 for barebox@lists.infradead.org; Thu, 07 Apr 2016 11:55:44 +0000
Date: Thu, 7 Apr 2016 13:55:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160407115519.GI9102@pengutronix.de>
References: <1460015557-18347-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1460015557-18347-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] common: add dependency !SANDBOX on imd target tool
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 07, 2016 at 10:52:37AM +0300, Antony Pavlov wrote:
> The build of bareboximd-target tool fails on sandbox architecture:
> 
>       CC      scripts/bareboximd-target
>     /tmp/ccoGPulo.o: In function `imd_concat_strings':
>     scripts/../common/imd.c:216: undefined reference to `barebox_malloc'
>     /tmp/ccoGPulo.o: In function `read_file_2':
>     scripts/bareboximd.c:68: undefined reference to `barebox_open'
>     scripts/bareboximd.c:74: undefined reference to `barebox_lseek'
>     scripts/bareboximd.c:84: undefined reference to `barebox_lseek'
>     scripts/bareboximd.c:90: undefined reference to `barebox_malloc'
>     scripts/bareboximd.c:99: undefined reference to `barebox_read'
>     scripts/bareboximd.c:119: undefined reference to `barebox_free'
>     scripts/bareboximd.c:121: undefined reference to `barebox_close'
>     /tmp/ccoGPulo.o: In function `imd_command':
>     scripts/../common/imd.c:292: undefined reference to `barebox_printf'
>     scripts/../common/imd.c:319: undefined reference to `barebox_printf'
>     scripts/../common/imd.c:322: undefined reference to `barebox_free'
>     scripts/../common/imd.c:324: undefined reference to `barebox_printf'
>     /tmp/ccoGPulo.o: In function `usage':
>     scripts/bareboximd.c:134: undefined reference to `barebox_printf'
>     collect2: error: ld returned 1 exit status
>     scripts/Makefile:58: recipe for target 'scripts/bareboximd-target' failed
> 
> See also
> 
>     commit d4aa01503348a033b1057d8a66c20a4f5819e01f
>     Author: Alexander Aring <alex.aring@gmail.com>
>     Date:   Tue Nov 19 02:08:13 2013 +0100
> 
>         common: add dependency !SANDBOX on target tools
> 
>         The build of target tools fails on sandbox architecture.
>         We don't need any target tools in this case, so add a dependency.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Alexander Aring <alex.aring@gmail.com>
> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

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
