Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clAFl-00075A-2v
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 08:13:54 +0000
Date: Tue, 7 Mar 2017 09:13:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170307081330.gb3iz6gebpbwlt3r@pengutronix.de>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/45] AT91, at91sam9x5ek updates
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Mon, Mar 06, 2017 at 02:53:11PM -0800, Andrey Smirnov wrote:
> Hi everyone,
> 
> I recently had a chance to work with at91sam9x5ek board and as a part
> of that effort I converted the code to support features found in
> Barebox for i.MX based SoCs. Most notably this patchset converts
> at91sam9x5ek to use multi-image PBL build process as well as adds
> support for board initialization from attached devicetree blob.
> 
> Sascha, at least for now, all of the patches, in chronological order,
> are included in this submission. However if this proves to be too
> burdensome to review, I'd be more than happy to split it into several
> individual submissions. One such division could be:
> 
> 	   - Generic bug fixes/infrastructure enhancements
> 	   - Peripheral drivers updates
> 	   - at91sam9x5ek specific changes
> 
> Please let me know if that is preferrable.

I had a short look at all patches, overall they look good. Nevertheless
it would be good to sort them like you suggested. It just makes it
easier to apply.

Thanks for working on this, a general AT91 overhaul was long overdue. I
hope this series prepares a path to cleanup the other AT91 SoCs aswell.

The clock support you ported over from the kernel is for all AT91 SoCs
and not only one, right?

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
