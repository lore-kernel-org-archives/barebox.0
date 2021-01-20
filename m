Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2LI3-0002DK-DB
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 21:45:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>) id 1l2LHz-00045q-3H
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 22:45:19 +0100
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>) id 1l2LHy-0002Nj-Pk
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 22:45:18 +0100
Date: Wed, 20 Jan 2021 22:45:18 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20210120214518.grammoec2et5uvft@pengutronix.de>
References: <20210120125107.736121-1-andrej.picej@norik.com>
 <20210120125107.736121-3-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120125107.736121-3-andrej.picej@norik.com>
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
Subject: Re: [PATCH 2/3] ARM: i.MX: implement GPMI NAND xload
Cc: barebox@lists.infradead.org

On Wed, Jan 20, 2021 at 01:51:06PM +0100, Andrej Picej wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Commit is based on initial Sascha Hauer's work. It implements PBL xload
> mechanism to load image from GPMI NAND flash.
> 
> Additional work was done, so that the NAND's size, page size and OOB's
> size are autodetected and not hardcoded. Detection method follows the
> same methods as used in NAND driver, meaning NAND ONFI support is probed
> and if NAND supports ONFI, NAND memory organization is read from ONFI
> parameter page otherwise "READ ID" is used.
> 
> Currently only implemented for i.MX6 familly of SoCs.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>

I did not look at the code, but I appreciate how those names line up
nicely :-)

 - Roland

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
