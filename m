Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WzgxY-00059L-7B
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 06:45:34 +0000
Date: Wed, 25 Jun 2014 08:45:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140625064509.GL15686@pengutronix.de>
References: <1403610336-5949-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403610336-5949-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 0/3] MVEBU SoC ID and revision detection
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 24, 2014 at 01:45:33PM +0200, Sebastian Hesselbarth wrote:
> This patch set adds support for reading SoC ID and revision from
> PCIe controllers found on Marvell MVEBU SoCs.
> 
> Patch 1 adds PCI bus specific OF address translation required for
> reg property parsing of PCIe controller nodes.
> 
> Patch 2 selects above PCI OF address translation for MVEBU SoCs.
> 
> Patch 3 adds common code to find and parse PCIe controller nodes
> from MVEBU SoC DT and read out SoC ID and revision registers.
> 
> The patches are based on barebox next with latest MVEBU patches
> for cleanup and PBL images applied. They have been tested on
> Marvell Kirkwood, Dove, and Armada 370.
> 
> Sebastian Hesselbarth (3):
>   drivers: of: import PCI bus specific translator
>   ARM: mvebu: select PCI specific DT bus translator
>   ARM: mvebu: determine SoC id and revision from PCIe nodes

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
