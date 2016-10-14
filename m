Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1buzGI-0005NL-Sa
 for barebox@lists.infradead.org; Fri, 14 Oct 2016 09:58:47 +0000
Date: Fri, 14 Oct 2016 11:58:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161014095824.rlkpofx5bsvxfi3f@pengutronix.de>
References: <F6D4D53A3E6A8043A8517794EE9C52320CE989@HRSRV03.haslerrail.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F6D4D53A3E6A8043A8517794EE9C52320CE989@HRSRV03.haslerrail.net>
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
Subject: Re: How to configure and enable the barebox state?
To: Trostel Alain <Alain.Trostel@haslerrail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Alain,

On Thu, Oct 13, 2016 at 01:38:36PM +0000, Trostel Alain wrote:
> Hi,
> 
> I would like to configure and enable the barebox state. My assumption is
> that I need to change the following device tree for my Phytec AM335x
> SOM:
> 
> arch/arm/dts/am335x-phytec-phycore-som.dts
> 
> But from the documentation
> (http://www.barebox.org/doc/latest/devicetree/bindings/barebox/barebox,state.html)
> it is not clear to me where exactly I need to add the variable node
> example.

You can put it anywhere in the device tree that is parsed by the device
parser. I would recommend putting it directly in the root node.

> Furthermore, I have check that the 'CONFIG_OFDEVICE' is
> enabled.
> So, where is the correct place to add the variable node configuration
> and what needs to be enabled in barebox?

for using the state framework you'll need:

CONFIG_STATE
CONFIG_STATE_DRV
CONFIG_CMD_STATE

If you want to use the bootchooser ontop of state you'll also need:

CONFIG_BOOTCHOOSER
CONFIG_CMD_BOOTCHOOSER

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
