Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yt7v7-0002QZ-9Y
 for barebox@lists.infradead.org; Fri, 15 May 2015 05:12:26 +0000
Date: Fri, 15 May 2015 07:12:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150515051202.GG6325@pengutronix.de>
References: <1431512154-25432-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431512154-25432-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH] ARM: am33xx: Fix SCRM compatible string to match new DT
 compatible string
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

Hi Wadim,

On Wed, May 13, 2015 at 12:15:54PM +0200, Wadim Egorov wrote:
> Commit 461f8cfc7ea788428240271818363333ceff5c4c renamed the SCRM compatible
> string in am33xx.dtsi and breaks all am335x based boards.
> 
> Rename the SCRM compatible string.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>

Applied to master, thanks. Please mention next time that this should
be applied to master. I realized this time but I might miss it next
time.

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
