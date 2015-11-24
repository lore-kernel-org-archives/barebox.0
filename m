Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a18kQ-0004Gv-5H
 for barebox@lists.infradead.org; Tue, 24 Nov 2015 08:14:46 +0000
Date: Tue, 24 Nov 2015 09:14:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151124081423.GB11966@pengutronix.de>
References: <1448265336-15862-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448265336-15862-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [just RFC 0/2] serial: ns16550: add Ralink UART support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Mon, Nov 23, 2015 at 10:55:34AM +0300, Antony Pavlov wrote:
> Please dont apply this patchseries! It's for review only!
> 
> This patchseries adds support for ns16550-like UART
> used in Ralink/Mediatek SoCs. This UART uses non-standard
> register addresses.

I'm getting unsure how much sense it makes to expand the ns16550 driver
like this and like we've done with Omap, Tegra and others. It's always a
little weight that we add to the driver and maybe we have reached the
point where we should split the driver into several SoC specific drivers
and some common library helper code for the general ns16550 support.

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
