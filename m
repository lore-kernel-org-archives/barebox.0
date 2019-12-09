Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGS5-0006RD-9W
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 10:39:42 +0000
Date: Mon, 9 Dec 2019 11:39:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191209103939.mmayang3qirhakm2@pengutronix.de>
References: <20191204140721.20299-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204140721.20299-1-ahmad@a3f.at>
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
Subject: Re: [PATCH 0/2] bus: efi: add basic ACPI bus infrastructure
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Wed, Dec 04, 2019 at 03:07:19PM +0100, Ahmad Fatoum wrote:
> Microsoft specifies an ACPI Watchdog Action Table for its server
> offerings that abstracts away hardware-specifics of watchdog devices.
> This can be an alternative to implementing many different watchdog
> driver in barebox for x86 H/W, as the driver is implemented in the
> BIOS and barebox would only need to implement the H/W.
> 
> Unfortunately, I don't H/W handy that provides the WDAT table.
> I've implemented the ACPI bus nevertheless, so here's the patch.
> 
> I haven't found anything else I'd like to do with ACPI, so I wrote a
> sample driver to test the API. Not sure if it should go into the tree,
> but I'd be in favor of adding it till there is a real user of the ACPI
> bus (besides devinfo).
> 
> Cheers
> Ahmad
> 
> Ahmad Fatoum (2):
>   bus: efi: add basic ACPI bus infrastructure
>   misc: add ACPI test driver

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
