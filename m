Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHRqq-0006NX-9B
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 07:52:49 +0000
Date: Fri, 8 Jan 2016 08:52:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160108075226.GZ13058@pengutronix.de>
References: <1452159623-24327-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1452159623-24327-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] PCI: imx6: properly shut down core when leaving barebox
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 07, 2016 at 10:40:23AM +0100, Lucas Stach wrote:
> As the i.MX6 PCIe core doesn't have a software reachable reset
> wired up, it's hard for any driver to get the core into a known
> good state.
> 
> To make it easier for whatever software follows barebox, bring
> back the core into a safe state before leaving barebox.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> This patch is on top of Andrey Smirnovs changes to the
> imx6 pcie driver.
> ---
>  drivers/pci/pci-imx6.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)

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
