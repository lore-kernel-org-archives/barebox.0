Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8o5R-0006CT-2g
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 08:02:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1T8o5O-0004Rh-DT
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 10:02:14 +0200
Date: Tue, 4 Sep 2012 10:02:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904080214.GM24458@pengutronix.de>
References: <20120812180535.GK6271@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120812180535.GK6271@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/4 v2] fs/mount: add autodetection support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Aug 12, 2012 at 08:05:35PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> v2:
> 	fix typo
> 	move convert to fs_driver after check
> 
> please pull
> The following changes since commit 58713d32746d49ad39ba17658fe82f1b98b80b2e:
> 
>   commands: memset: fix help message (2012-08-09 08:44:38 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git tags/fs
> 
> for you to fetch changes up to 7565f1e0f6877357c3e38f40d73f5773957f94b6:
> 
>   command/mount: add autodetection support (2012-08-12 21:46:15 +0800)

This series breaks compilation on several architectures due to missing
asm/unaligned.h header:

- openrisc
- blackfin
- ppc

For ppc Renaud Barbier already sent a fix. I fixed the remaining myself.

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
