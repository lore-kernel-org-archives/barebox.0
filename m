Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGOVn-0007ZK-8k
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 09:02:14 +0000
Date: Wed, 28 Jan 2015 10:01:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150128090149.GC12209@pengutronix.de>
References: <1422357922-12241-1-git-send-email-d.lavnikevich@sam-solutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422357922-12241-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: Re: [PATCH v2] dts:imx6:pfla02: Align nand partitions by 512k
To: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 27, 2015 at 02:25:22PM +0300, Dmitry Lavnikevich wrote:
> NAND chip used on phyFLEX-i.MX6 with 4GB NAND (MT29F32G08AFACAWP) has
> 512k eraseblock size.
> 
> Align NAND partitions by 512k to fix erase fails.
> 
> Also increase barebox-environment and oftree partitions to be two
> eraseblocks. This will ensure safety in case of bad block.
> 
> Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

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
