Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9b11-0004By-Cl
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 12:17:01 +0000
Date: Thu, 6 Sep 2012 14:16:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120906121654.GV26594@pengutronix.de>
References: <20120906060058.GE4761@game.jcrosoft.org>
 <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 01/12] add barebox logo
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 06, 2012 at 08:04:49AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> in logo/ you will found the barebox logo with color or white
> in:
>  - bmp (black background)
>  - png24 (transparent or black background)
>  - png8 (black background)
> 
> for the following size
>  - 100x100
>  - 200x200
>  - 400x400
>  - 600x600
>  - 800x800
>  - 900x900
> 
> The logo are origanize in a way to be able to include them in the envfs
> by just point as it.

No. It's ok to have a small logo in the tree, but I won't commit a bunch
of big binaries to the tree.

Most people probably want to use their own logo for a product anyway.
I'm fine with uploading the logos to some website and wget them
automatically when necessary.

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
