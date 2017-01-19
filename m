Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUC1t-0003Mz-5N
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 12:41:27 +0000
Date: Thu, 19 Jan 2017 13:38:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170119123849.dcyozsblhb45upde@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
 <CAOMZO5Du=RGWT2HWRZde15oMAU5hTvwXXdphVDTB3rQ7OubacQ@mail.gmail.com>
 <20170116125820.dx7cxtwhnz5rwrw5@pengutronix.de>
 <CAOMZO5AF3Zo6pJsF41=-maoVAd1w4TeqcS71atROn7gh0eYTzg@mail.gmail.com>
 <20170118070738.g5a7rdahunjes4jl@pengutronix.de>
 <CAOMZO5CrofMwr24332mudXfi+hgKM4-WFwrrw0NXoFeNBRc62g@mail.gmail.com>
 <20170119091403.fapqdjnd2xpnylep@pengutronix.de>
 <CAOMZO5D4jSGrYPhsu=bk2wM_Dvzg-0zKC_JQTuyZpb7N-iqFtA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5D4jSGrYPhsu=bk2wM_Dvzg-0zKC_JQTuyZpb7N-iqFtA@mail.gmail.com>
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

Hi Fabio,

On Thu, Jan 19, 2017 at 09:54:57AM -0200, Fabio Estevam wrote:
> On Thu, Jan 19, 2017 at 7:14 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Ok, found it. The i.MX7 has two iomux controllers, the regular one and
> > the LPSR iomux controller. In the warp7 and other dts files the LPSR
> > pins are attached to the regular controller, not the LPSR controller.
> > I just sent out a series fixing this, you are on Cc.
> > With U-Boot this problem does not occur since U-Boot uses it's own code
> > to correctly configure the iomux_lpsr controller which is then not
> > touched again from Linux.
> > With this fix reset works in barebox and also reboot under Linux.
> 
> Thanks for the fix!

I have one issue with starting the kernel on i.MX7. The architected
timer does not work. In U-Boot I found arch/arm/imx-common/syscounter.c
in which the system counter is initialized. I just copied the code and
it works, but I wonder what I am doing here. I can't find any
documentation in the Reference Manual and also the 8MHz tick rate for
the architected timer seems to fall from the sky. Do you have any
additional documentation?

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
