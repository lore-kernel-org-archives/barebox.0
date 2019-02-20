Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMxv-00087M-FR
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 08:10:53 +0000
Date: Wed, 20 Feb 2019 09:10:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190220081049.ceruxmbw5ovgt4yy@pengutronix.de>
References: <20190219152013.17484-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219152013.17484-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] fixup! scripts/checkpatch.pl: rebase on top of upstream
 v5.0-rc6
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2019 at 04:20:14PM +0100, Ahmad Fatoum wrote:
> Import const_structs.checkpatch from Linux v5.0-rc6. Leaving the
> file empty leads to false positives. If false positives pop up
> with the Linux list, they could be adjusted.
> 
> The fixed-up commit message needs to be adjusted as well:
>   - - const_structs.checkpatch: added as empty file for now
>   + - const_structs.checkpatch: imported from upstream

U-Boot simply has a dummy line in this file. I think we should either do
this or add real names which are actually meaningful for barebox.

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
