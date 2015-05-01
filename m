Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yo4ai-0004C0-7I
 for barebox@lists.infradead.org; Fri, 01 May 2015 06:38:29 +0000
Date: Fri, 1 May 2015 08:38:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150501063805.GC6325@pengutronix.de>
References: <1430337588-11998-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430337588-11998-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/3] PCI: register and active bridge device before
 proceeding to scan
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 29, 2015 at 09:59:46PM +0200, Lucas Stach wrote:
> The bridge device needs to be registered and activated before
> the scanning can proceed, as the bridge is the parent for other
> devices.
> 
> This fixes a NULL ptr derefernce when scanning PCI hierarchies
> with bridges behind bridges.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> Please apply to master, as this fixes a crash when activating
> PCI support on the GW54xx board.
> ---
>  drivers/pci/pci.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)


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
