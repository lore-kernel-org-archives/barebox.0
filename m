Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9zG-00041y-6s
 for barebox@lists.infradead.org; Mon, 13 May 2019 12:23:23 +0000
Date: Mon, 13 May 2019 14:23:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190513122319.xg2ykm6rmipsfhlo@pengutronix.de>
References: <20190510070712.mmcy7sbriyisgzp7@pengutronix.de>
 <b8c0d060-4f16-1895-df02-4c907a7392c4@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8c0d060-4f16-1895-df02-4c907a7392c4@mev.co.uk>
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
Subject: Re: v2019.05.0
To: Ian Abbott <abbotti@mev.co.uk>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 13, 2019 at 12:27:32PM +0100, Ian Abbott wrote:
> On 10/05/2019 08:07, Sascha Hauer wrote:
> > Hi All,
> > 
> > v2019.05.0 is out. This time we gained initial Layerscape support (for
> > the LS1046a) and initial very basic STM32MP1 support. What I like best
> > for this release is the improved pstore support. With pstore it's
> > possible to access the last kernel log, possibly including oopses and
> > panics. Also the barebox log is accessible from the running kernel.
> > pstore has been present before, but with this release we got the device
> > tree bindings, so now it's only a matter of putting the right thing
> > into the device tree to use pstore. Give it a try, it's nice ;)
> > 
> > Sascha
> 
> Hi Sascha,
> 
> The official tarball seems to be missing from the download page.  Thanks.

Oops, indeed. Should be there now.

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
