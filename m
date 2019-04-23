Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hIrnz-0001ba-S8
 for barebox@lists.infradead.org; Tue, 23 Apr 2019 09:33:37 +0000
Date: Tue, 23 Apr 2019 11:33:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190423093333.47ymjtktn2dhq42c@pengutronix.de>
References: <20190415002121.15988-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190415002121.15988-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] ARM: zii-vf610-dev: Use -fno-tree-switch-conversion
 -fno-jump-tables
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>

On Sun, Apr 14, 2019 at 05:21:19PM -0700, Andrey Smirnov wrote:
> Original and very poor workaround no longer works against GCC8, so
> drop it and replace with a proper solution that should've been used in
> the first place - specifying -fno-tree-switch-conversion
> -fno-jump-tables as CFLAGS when building lowlevel.c
> 
> Tested to work with:
> 
>     - GCC 8.2.1 (arm-none-eabi)
>     - GCC 7.1.0 (arm-none-eabi)
>     - GCC 4.8.4 (armv7l-timesys-linux-gnueabihf)
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Heiner Kallweit <hkallweit1@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>

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
