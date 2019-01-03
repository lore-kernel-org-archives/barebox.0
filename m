Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1geyAl-0003Nz-Sv
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 08:16:13 +0000
Date: Thu, 3 Jan 2019 09:16:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103081606.yz2s7q4jxzgpz2yt@pengutronix.de>
References: <20190102202611.6530-1-sam@ravnborg.org>
 <20190102202611.6530-4-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190102202611.6530-4-sam@ravnborg.org>
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
Subject: Re: [PATCH v1 3/3] at91sam9263ek: add bootstrap support
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Wed, Jan 02, 2019 at 09:26:11PM +0100, Sam Ravnborg wrote:
> Fix lowlevel init to get reset vector.
> 
> Add new MACH_AT91SAM9263EK_BOOTSTRAP config entry
> used when building the bootstrap variant.
> The new config entry is required as we cannot combine MULTI_IMAGE
> with a bootstrap variant.

Why can't that be combined?

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
