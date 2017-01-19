Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cU8nZ-0007UI-9l
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 09:14:25 +0000
Date: Thu, 19 Jan 2017 10:14:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170119091403.fapqdjnd2xpnylep@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
 <CAOMZO5Du=RGWT2HWRZde15oMAU5hTvwXXdphVDTB3rQ7OubacQ@mail.gmail.com>
 <20170116125820.dx7cxtwhnz5rwrw5@pengutronix.de>
 <CAOMZO5AF3Zo6pJsF41=-maoVAd1w4TeqcS71atROn7gh0eYTzg@mail.gmail.com>
 <20170118070738.g5a7rdahunjes4jl@pengutronix.de>
 <CAOMZO5CrofMwr24332mudXfi+hgKM4-WFwrrw0NXoFeNBRc62g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5CrofMwr24332mudXfi+hgKM4-WFwrrw0NXoFeNBRc62g@mail.gmail.com>
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
Subject: Re: i.MX7 support
To: Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 18, 2017 at 07:36:57AM -0200, Fabio Estevam wrote:
> On Wed, Jan 18, 2017 at 5:07 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > I have a rev 2.0 board here.
> 
> Does the 'reboot' command in Linux work?

Ok, found it. The i.MX7 has two iomux controllers, the regular one and
the LPSR iomux controller. In the warp7 and other dts files the LPSR
pins are attached to the regular controller, not the LPSR controller.
I just sent out a series fixing this, you are on Cc.
With U-Boot this problem does not occur since U-Boot uses it's own code
to correctly configure the iomux_lpsr controller which is then not
touched again from Linux.
With this fix reset works in barebox and also reboot under Linux.

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
