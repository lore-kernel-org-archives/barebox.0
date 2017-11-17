Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFcTZ-0003WF-5e
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 08:58:19 +0000
Date: Fri, 17 Nov 2017 09:57:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171117085754.6hg3vc4pnzsvsavk@pengutronix.de>
References: <20171115222753.28426-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171115222753.28426-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] fs: Fix can_lseek_backward()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 15, 2017 at 02:27:53PM -0800, Andrey Smirnov wrote:
> To quote corresponding man page:
> 
> "... Upon successful completion, lseek() returns the resulting offset
> location as measured in bytes from the beginning of the file."
> 
> Which for lseek(fd, 0, SEEK_SET) would be 0, so returning 'ret' as
> final step of the function would mean it'd never return anything but 0
> as well. Change the code to explicitly return '1' to fix the problem.
> 
> Fixes: 7c3f8d366 ("uimage: fix: add can_lseek_backward and use in uimage_open")
> Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Sascha:
> 
> This change should probably also go to master, since without enabling
> TFTP would break 'bootm' for uImages (at least it does on my setup)

Yes, applied to master. I also created a stable/v2017.11 branch.

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
