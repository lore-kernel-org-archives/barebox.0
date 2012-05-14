Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STs6U-0000F2-Mc
 for barebox@lists.infradead.org; Mon, 14 May 2012 10:02:11 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 14 May 2012 12:01:05 +0200
References: <1336988285-6192-1-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1336988285-6192-1-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205141201.05779.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/7] Support most Samsung SoCs in S3C serial driver
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Alexey Galakhov wrote:
> Ok, I assume this should go into separate series. It fits both S5PV210 and
> S3C6410.
>
> This adds support for S3C and S5P architectures (all of my knowledge) to
> the serial driver. Since the only difference between them is in clock
> handling, this is moved to an arch-dependent separate function.
>
> Most modern architectures should define S3C_UART_HAS_UBRDIVSLOT and
> S3C_UART_HAS_UINTM.
>
> This adds support for most

Seems there should follow some more text? ;)

As this patch seems mostly like the patch from my S3C6410 repository, you can 
also add my:

Signed-off-by: Juergen Beisewrt <kernel@pengutronix.de>

> [...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
