Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLUM-0003au-2E
 for barebox@lists.infradead.org; Wed, 20 May 2020 09:58:15 +0000
Date: Wed, 20 May 2020 11:58:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520095811.GW11869@pengutronix.de>
References: <MN2PR16MB3135D515C95492ACE382152F91B90@MN2PR16MB3135.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB3135D515C95492ACE382152F91B90@MN2PR16MB3135.namprd16.prod.outlook.com>
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
Subject: Re: DTB overlay
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Renaud,

On Tue, May 19, 2020 at 05:33:33PM +0000, Barbier, Renaud wrote:
> Is there a limit on the number of overlay that can be  loaded with the of_overlay command?
> 
> It does not complain if I load two overlays. However, when booting my FIT image, I get twice the message:
> of_overlay: failed to copy symbols from overlay
> 
> Still all node modifications are added to the base device tree.
> 
> The error message is not displayed if I add only one overlay.

This commit seems to solve your issues at least partly:

| commit 7732d7669b5c54a5c17a6bab6706f6624da0f78e
| Author: Rouven Czerwinski <r.czerwinski@pengutronix.de>
| Date:   Fri Mar 6 09:38:11 2020 +0100
| 
|     of: overlay: rework error message for symbols
|     
|     Missing symbols for overlay or root tree are valid if the overlay only
|     adds paths to the device tree. The code handles this correctly, however
|     it still isues a WARNING for the missing symbols. Demote the warning to
|     info and move into the of_overlay_apply_symbols() function.
|     
|     Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
| 

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
