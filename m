Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL4IE-0003z8-9t
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 07:32:03 +0000
Date: Mon, 18 Jan 2016 08:31:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160118073140.GE13058@pengutronix.de>
References: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
 <1452870438-29656-14-git-send-email-s.hauer@pengutronix.de>
 <87mvs6kg5u.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mvs6kg5u.fsf@gmail.com>
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
Subject: Re: [PATCH 13/13] bootm: add initial FIT support
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jan 15, 2016 at 04:37:17PM +0100, Holger Schurig wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> Hi,
> 
> > +config CMD_BOOTM_FITIMAGE
> > +	bool
> > +	prompt "FIT image support"
> > +	select FITIMAGE
> > +	depends on CMD_BOOTM && ARM
> > +	help
> > +	  Support using FIT Images. Have a look at the u-boot source
> > +	  tree in the "doc/uImage.FIT" folder for more information:
> > +	  http://git.denx.de/?p=u-boot.git;a=tree;f=doc/uImage.FIT
> 
> I know that you've posted a link here, and I even went there.
> 
> Still I think it would be better if the abbrev "FIT" get's explained
> or spelled out at least once. Neither this help text nor the commit
> text is really enlightening.

You are right. I rephrased that to:

	  Support using Flattened Image Tree (FIT) Images. FIT is an image
	  format introduced by U-Boot. A FIT image contains one or multiple
	  kernels, device trees and initrds. The FIT image itself is a flattened
	  device tree binary. Have a look at the u-boot source tree
	  in the "doc/uImage.FIT" folder for more information:
	  http://git.denx.de/?p=u-boot.git;a=tree;f=doc/uImage.FIT

Does that sound ok?

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
