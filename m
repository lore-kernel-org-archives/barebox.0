Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WKNlb-00060P-Iz
 for barebox@lists.infradead.org; Mon, 03 Mar 2014 07:58:27 +0000
Date: Mon, 3 Mar 2014 08:58:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140303075801.GJ17250@pengutronix.de>
References: <5310B108.8040800@celad.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5310B108.8040800@celad.com>
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
Subject: Re: nand pmecc crash detected
To: Herve Codina <herve.codina@celad.com>
Cc: josh.wu@atmel.com, linux-arm-kernel@lists.infradead.org, barebox@lists.infradead.org

On Fri, Feb 28, 2014 at 04:53:44PM +0100, Herve Codina wrote:
> Hi,
> 
> I am using an sam5d35 and its pmecc nand ecc controller.
> 
> In barebox, using similar atmel_nand.c the system crashes.
> 
> The problem was a call to chip->ecc.hwctl from nand_write_subpage_hwecc
> (nand_base.c) when we write a sub page.
> 
> chip->ecc.hwctl function is not set when we are using PMECC controller.
> 
> As a workaround, i set NAND_NO_SUBPAGE_WRITE for PMECC controller in
> order to disable sub page access in nand_write_page.
> 
> I think we can have the same problem in Linux. I do not performed
> subpage nand writes from Linux but i made the following patch according
> to my Barebox defect.
> 
> Here after are my patches (same modification) for 1st my local Barebox
> and 2nd my local Linux :

Applied (for barebox ;), thanks

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
