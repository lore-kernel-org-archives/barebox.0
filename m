Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OiMAp-0006lr-Rz
	for barebox@lists.infradead.org; Mon, 09 Aug 2010 06:49:28 +0000
Date: Mon, 9 Aug 2010 08:49:23 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20100809064923.GL30096@pengutronix.de>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100808064846.GA31364@merkur.ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100808064846.GA31364@merkur.ravnborg.org>
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
Subject: Re: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hi Sam,

On Sun, Aug 08, 2010 at 08:48:46AM +0200, Sam Ravnborg wrote:
> Which bring up another question. We have plenty of projects out there
> that rely on kconfig.

ptxdist as well.

> What can we do to kconfig to make the integration easier?
>
> We have discussed that kconfig should be a seperate installable tool
> (as rpm, deb whatever). But there is a few quirks needed before we can
> do so.

I don't think that it is necessary. Last time I checked the most
complicated thing was to exchange the project name ("Linux kernel") to
something else, because there were quite a lot of hand coded numbers
representing the string length or length-1. But we are not up to the
latest versions - I'll have to re-check.

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
