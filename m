Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YD70A-00011r-5R
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 07:43:58 +0000
Date: Mon, 19 Jan 2015 08:43:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150119074336.GL18220@pengutronix.de>
References: <1421503131-24840-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421503131-24840-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 1/2] ARM: pxa: RAM and console fixes for zylonite
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sat, Jan 17, 2015 at 02:58:50PM +0100, Robert Jarzmik wrote:
> There is at least one zylonite variant with a PXA311 and only 64 MB of
> memory, while the other variants have at least 128 MB.
> As 64 MB is the smallest common denominator, tell barebox to use only
> the 64 MB bytes.
> 
> At the same time, fix the kernel command line to use only these 64 MB,
> and output log on the console.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

Squashed these into the original commits.

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
