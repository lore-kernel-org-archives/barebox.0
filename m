Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGzPx-0003zA-Db
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 21:45:18 +0000
Date: Wed, 26 Sep 2012 23:45:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926214515.GT1322@pengutronix.de>
References: <loom.20120926T210129-125@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20120926T210129-125@post.gmane.org>
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
Subject: Re: Write Protect Error re-flashing /dev/nor0.barebox
To: Jerry Kirk <jkirk865@gmail.com>
Cc: barebox@lists.infradead.org

Hi Jerry,

On Wed, Sep 26, 2012 at 07:07:32PM +0000, Jerry Kirk wrote:
> We are updating from 2012-03 to 2012-09 and after flashing our SOM
> (Phytec PCM043 - imx35) we starting getting this error:
> 
> barebox:/ erase /dev/nor0.barebox
>                                      
> erase: Operation not permitted
> 
> It worked the first time, when overwriting the 2012-03 image and booted, etc.
> We have tried a few intermediate Barebox versions and think it worked up to 2012-
> 07.
> 
> Any ideas what we now need to do to be able to overwrite Barebox?

I think you are the victim of a bug fix ;)

You probably registered the partition readonly. (see the 'ro'
flag in the mtdparts variable). Since some releases barebox
actually honors this flag:

commit a4fde70067b6113fd9dc7a4295ebd3f55b756db6
Author: Jan Luebbe <jlu@pengutronix.de>
Date:   Mon Jun 25 14:03:27 2012 +0200

    fs/devfs.c: disallow write and erase if a partition is read-only
    
    Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
