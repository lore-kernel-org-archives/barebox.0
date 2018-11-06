Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJwjn-0003Mz-8a
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 08:29:29 +0000
Date: Tue, 6 Nov 2018 09:29:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181106082914.ykoffbmdfqkdaflg@pengutronix.de>
References: <20181102152751.2a0b995c@yaise-pc1>
 <20181104170705.0ad35065@yaise-pc1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181104170705.0ad35065@yaise-pc1>
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
Subject: Re: Barebox stops working if /env/boot/mmc is removed
To: Patrick Boettcher <patrick.boettcher@posteo.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Patrick,

On Sun, Nov 04, 2018 at 05:07:05PM +0100, Patrick Boettcher wrote:
> On Fri, 2 Nov 2018 15:27:51 +0100
> Patrick Boettcher <patrick.boettcher@posteo.de> wrote:
> 
> > Hi list,
> > 
> > I'm using barebox 2017.04.0-BSP (phytec's fork though).
> > 
> > I'm customizing my environment in a (Yocto) .bbappend-file.
> > 
> > When I'm removing (or not adding) the /env/boot/mmc-file the
> > barebox-image created by Yocto is not booting at all, that is, on the
> > serial console I don't see anything.
> > 
> > Maybe this is a problem of phytec's fork, but I'm wondering what could
> > create this behavior in general? Missing env-files make barebox not
> > boot.
> 
> The issue seems to have come from a file which was maybe in a previous
> default environment and has been modified in the user-environment and
> was now remove in the default-env or overwritten or whatnot.
> 
> It seems that I fixed it by erasing
> the /dev/barebox-environment-partition after flashing the new
> barebox-version.
> 
> For the moment this is not an issue for my system/application. It's a
> bit scary though.

What does "Stops working" mean? Doesn't start at all? Doesn't start
kernel? Your description is a bit vague.

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
