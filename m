Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjQIV-0000nA-37
 for barebox@lists.infradead.org; Thu, 02 Mar 2017 12:57:32 +0000
Date: Thu, 2 Mar 2017 13:57:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170302125706.5irufth27bv4qq25@pengutronix.de>
References: <20170302124549.GA12024@newbook.tkernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170302124549.GA12024@newbook.tkernel.org>
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
Subject: Re: i.MX28 evk compile error
To: barebox <barebox@lists.infradead.org>, u74147@gmail.com

On Thu, Mar 02, 2017 at 08:45:49PM +0800, DU HUANPENG wrote:
> 
> Hi, I have one i.MX283 and one i.MX280 board, and I want to try barebox
> on these boards.
> I encounter a compile error using the config file
>   freescale-mx28-evk_defconfig
> (It seems a host program compile error.)

Please retry with current master. There is a fix I should have applied earlier:

commit e2805b5ee515baa5f3319811db9d839cca215707
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Tue Jan 31 15:29:12 2017 +0100

    scripts: mxsimage: Fix build with OpenSSL < 1.1.x
    
    Move the compatibility wrapper functions up so that they
    are defined before they are used.
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


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
