Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gve0I-0001kH-Pr
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 08:10:20 +0000
Date: Mon, 18 Feb 2019 09:10:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190218081014.ea4m7vcsndojdgwf@pengutronix.de>
References: <20190217161609.11305-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190217161609.11305-1-sam@ravnborg.org>
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
Subject: Re: [PATCH v2 0/9] at91: Support PMC clock bindings
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Feb 17, 2019 at 05:16:00PM +0100, Sam Ravnborg wrote:
> The following patchset add supports for the PMC clk
> bindings for at91.
> The patchset was tested on:
> - at91sam9264ek - DT enabled
> - sama5d4-xplained - non DT
> 
> The patchset includes sama5d2.c which is not used today.
> I have a sama5d27-som1-ek board that I hope to find time to work
> with and then this will be needed.
> 
> Patch 4-8 add drivers but do not wire then into the build.
> This was done to somehow ease review of the final patch.
> Patches are rather big but trying to split them up more
> than already done seems not worth it.
> 
> Patch was made on top of:
> 12cd92023788fdc67ad72c6e7d96251a6234ca3e ("Merge branch 'for-next/rpi' into next")
> 
> On stray patch sneaked in - to kill a warning.
> 
> The patchset triggers some checkpatch warnings:
> - SPDX, the barebox variant of checkpatch is missing support for these (anyone?)
> - Too long lines. As code is copied from the kernel I left them as-is
> 
> Comments/testing very welcome!

Applied, thanks. Since AT91 is broken currently I applied it to master.

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
