Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YDSnb-0007Z9-HX
 for barebox@lists.infradead.org; Tue, 20 Jan 2015 07:00:29 +0000
Date: Tue, 20 Jan 2015 08:00:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150120070005.GH18220@pengutronix.de>
References: <1421670878-23133-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421670878-23133-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH 1/2] ARM: dts: am335x-phytec-phycore-som: Add USB host
 support
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 19, 2015 at 01:34:37PM +0100, Wadim Egorov wrote:
> Add USB host support for all phycore-som based boards.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  arch/arm/dts/am335x-phytec-phycore-som.dtsi | 30 +++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)

Applied, thanks.

I assume this has been tested on Linux aswell, right?

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
