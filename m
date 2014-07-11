Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5VBb-0007xC-3t
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 07:24:03 +0000
Date: Fri, 11 Jul 2014 09:23:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140711072340.GE23282@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
 <1404837514-773-1-git-send-email-plagnioj@jcrosoft.com>
 <1404837514-773-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404837514-773-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] EFI: introduce efi_strguid to convert GUID to human
 readable names
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 08, 2014 at 06:38:34PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> use in devinfo Protocols
> 
> Tested today on qemu with all the GUID translated
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

I added this to my series with one change. I added the string conversion
function to common/efi-guid.c since it can be used on other
architectures aswell (for example should we ever decide to not only run
on EFI, but also provide EFI functionality).

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
