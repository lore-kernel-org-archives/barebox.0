Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9bY3-0004hK-3L
	for barebox@lists.infradead.org; Sat, 23 Oct 2010 10:42:04 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 23 Oct 2010 12:36:50 +0200
References: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
	<1287766405-1646-8-git-send-email-jbe@pengutronix.de>
	<20101022174304.GG22139@pengutronix.de>
In-Reply-To: <20101022174304.GG22139@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010231236.50704.jbe@pengutronix.de>
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
Subject: Re: [PATCH 07/11] Adapt the existing imx-ipu fb driver to support
	runtime videomode selection
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Fri, Oct 22, 2010 at 06:53:21PM +0200, Juergen Beisert wrote:
> > Adapt the API to the new framebuffer videomode selection at runtime. If
> > the new feature is not used, there is no visible change at runtime for
> > platforms using this driver.
>
> This conflicts with the ipu fb patch I posted today.

I see. I generated this list on to of barebox-next. Next try...

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
