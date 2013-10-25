Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZqRU-0007gJ-5z
 for barebox@lists.infradead.org; Fri, 25 Oct 2013 23:05:21 +0000
Date: Sat, 26 Oct 2013 01:04:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131025230454.GC30088@pengutronix.de>
References: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
 <1382646226-24871-2-git-send-email-a.heider@gmail.com>
 <20131025105827.GE26639@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131025105827.GE26639@ns203013.ovh.net>
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
Subject: Re: [PATCH 1/6] fb: add a stride value to struct fb_info
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 25, 2013 at 12:58:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 22:23 Thu 24 Oct     , Andre Heider wrote:
> > Add support for framebuffers with noncontiguous horizontal lines.
> > 
> > Video drivers can set this value if the hardware requires it.
> > In case a driver does not set it, the current value of
> > xres * (bpp / 8) is used instead.
> 
> we never use this in linux ever
> 
> so do not do this in barebox either

Liunux has this value aswell. It's just called line_length there. As we
mostly resemble the fbdev API we should name it like this in barebox
aswell.

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
