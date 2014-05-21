Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmzmU-0007tJ-Au
 for barebox@lists.infradead.org; Wed, 21 May 2014 06:13:39 +0000
Date: Wed, 21 May 2014 08:13:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140521061314.GK5858@pengutronix.de>
References: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
 <1400533184-668-6-git-send-email-s.hauer@pengutronix.de>
 <537B6FDF.2050507@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <537B6FDF.2050507@gmail.com>
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
Subject: Re: [PATCH 5/6] of: Drop devicetree merge support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 20, 2014 at 05:08:15PM +0200, Sebastian Hesselbarth wrote:
> On 05/19/2014 10:59 PM, Sascha Hauer wrote:
> > I assume I am the only person knowing that barebox is able to
> > merge devicetrees. This feature seems broken for a while now since
> > trying to merge devicetress results in:
> > 
> > unflatten: too many end nodes
> 
> Uhm, I know about it because I see it every time I load an updated
> dtb on my hacky Chromecast barebox. Loading the dtb a second time
> again works then..
> 
> Anyway, I don't want to merge any trees but overwrite the existing,
> so I am fine with the removal ;)

Merging devicetrees may actually come back with the devicetree overlay
feature Pantelis Antoniou is working on. I'm waiting for this to be
merged in upstream dtc before further looking at it.

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
