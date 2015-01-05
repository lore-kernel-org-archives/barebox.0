Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y85t1-0005uH-LE
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 11:31:52 +0000
Date: Mon, 5 Jan 2015 12:31:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150105113122.GR30369@pengutronix.de>
References: <1419394862-31457-1-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1419394862-31457-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH 0/3] kbuild: drop redundant code
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

Hi Masahiro,

On Wed, Dec 24, 2014 at 01:20:59PM +0900, Masahiro Yamada wrote:
> 
> 
> 
> Masahiro Yamada (3):
>   kbuild: remove redundant -include include/generated/autoconf.h
>   kbuild: do not create symbolic link include/asm
>   kbuild: do not create include2 directory

Very nice stuff. It has some fixes in areas people (including me)
normally don't want to touch. Thanks for doing this. Applied all,
also the other kbuild patches you sent.

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
