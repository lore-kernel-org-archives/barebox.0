Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxVJN-00055S-M2
 for barebox@lists.infradead.org; Wed, 27 May 2015 06:59:34 +0000
Date: Wed, 27 May 2015 08:59:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150527065910.GQ6325@pengutronix.de>
References: <1432646591-6991-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1432646591-6991-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH v2 1/2] ARM: dts: Add an am33xx include file for MLO size
 reduction
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, May 26, 2015 at 03:23:10PM +0200, Wadim Egorov wrote:
> AM335x's MLO size limit is 109K.
> The am33xx.dtsi file adds spare and never used nodes to the dtb.
> With this patch we add a file to remove the unused nodes and reduce the
> size of the dtb.
> 
> Including this file will reduce the lzo packed MLO size about 6K.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>

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
