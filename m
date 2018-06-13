Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT0gJ-0001XQ-2f
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 07:59:10 +0000
Date: Wed, 13 Jun 2018 09:58:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180613075851.jahbduckylscljg5@pengutronix.de>
References: <20180612184800.4940-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180612184800.4940-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/14] VFxxx DCD fixes and improvements
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 12, 2018 at 11:47:46AM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This series is the result of investigation into DDR failures on a ZII
> VF610 Dev derivative design. It mostly code sharing changes, cleanups
> and some fixes and a nasty DCD hack removal. All of the changes are
> limited to VFxxx and shouldn't affect any other supported SoCs.
> 
> Feedback is wellcome!

s/wellcome/welcome/ ;)

Nice cleanup. I don't know much about vfxxx, so I only looked superficially over it.
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
