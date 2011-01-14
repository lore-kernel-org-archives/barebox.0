Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdgDh-000312-ES
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 09:45:22 +0000
Date: Fri, 14 Jan 2011 10:45:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110114094519.GH24373@pengutronix.de>
References: <4D23313B.9040002@free-electrons.com>
	<4D2F16E5.1020502@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D2F16E5.1020502@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] BMP: Add support for 32bpp video frame buffer
To: Gregory CLEMENT <gregory.clement@free-electrons.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Jan 13, 2011 at 04:14:45PM +0100, Gregory CLEMENT wrote:
> On 01/04/2011 03:39 PM, Gregory CLEMENT wrote:
> > Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
> > ---
> >  commands/bmp.c |    1 +
> >  1 files changed, 1 insertions(+), 0 deletions(-)
> > 
> > diff --git a/commands/bmp.c b/commands/bmp.c
> > index 5bac031..644a977 100644
> > --- a/commands/bmp.c
> > +++ b/commands/bmp.c
> > @@ -25,6 +25,7 @@ static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int
> >  		*(u16 *)adr = px;
> >  		break;
> >  	case 32:
> > +		*(u32 *)adr = px;
> >  		break;
> >  	}
> >  }
> Any comments for this patch?
> 
> It seems pretty trivial and it works at least for me.
> But if I missed something, let me know.

Sorry, missed it. Applied now.

Thanks
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
