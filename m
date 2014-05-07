Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WhyQu-0001sL-An
 for barebox@lists.infradead.org; Wed, 07 May 2014 09:46:37 +0000
Date: Wed, 7 May 2014 11:46:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140507094613.GE5918@pengutronix.de>
References: <cover.1399365447.git.silvio.fricke@gmail.com>
 <20140507062352.GG5858@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140507062352.GG5858@pengutronix.de>
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
Subject: Re: [PATCH] rework dts file for edmqmx6
To: Silvio Fricke <silvio.fricke@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 07, 2014 at 08:23:52AM +0200, Sascha Hauer wrote:
> On Tue, May 06, 2014 at 10:44:20AM +0200, Silvio Fricke wrote:
> > Hi,
> > 
> > here a patch for rework of the dts file for the data-modul base board edmqmx6.
> > The patch is based on top of the dts-branch 09015ae52c18424c (ARM: Tegra20: Use
> > upstream dtsi files).
> 
> Applied, thanks

And reverted it. It doesn't build:

ERROR (path_references): Reference to non-existent node or label "stmpe"

Silvio, Could you update this patch on current master?

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
