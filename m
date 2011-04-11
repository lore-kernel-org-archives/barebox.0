Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Bph-0003b8-9l
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 07:46:49 +0000
Date: Mon, 11 Apr 2011 09:46:47 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20110411074647.GI3811@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
	<1302273422-6987-15-git-send-email-s.hauer@pengutronix.de>
	<201104101433.44722.marc@cpdesign.com.au>
	<20110411074109.GE7285@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110411074109.GE7285@pengutronix.de>
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
Subject: Re: [PATCH 14/16] ARM: compile in image size and magic into
	barebox image
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 11, 2011 at 09:41:09AM +0200, Sascha Hauer wrote:
> > I don't understand this line. Did you mean something like:
> >
> > #define barebox_image_size *((unsigned int *)_barebox_image_size)
> >
> > Or am I missing something?
>
> _barebox_image_size is filled in by the linker. It can be seen as a
> pointer which address corresponds to the image size. I know this looks
> strange and I don't really like this. Maybe it can be done better?

You could add a comment until there is a better solution.

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
