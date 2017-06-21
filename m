Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNe9w-0001sx-Kz
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 11:50:58 +0000
Message-ID: <1498045832.2904.105.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 21 Jun 2017 13:50:32 +0200
In-Reply-To: <126e2527-f179-0c82-c384-c6c975a7c8e9@eurekelettronica.it>
References: <63687e34-f354-81d3-aed7-1a59866925c5@eurekelettronica.it>
 <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
 <1487689380.2268.18.camel@pengutronix.de>
 <82857526-9f9a-2878-9b8e-070f124e2a41@eurekelettronica.it>
 <20170621063246.wdfct6r2boyx4xo3@pengutronix.de>
 <126e2527-f179-0c82-c384-c6c975a7c8e9@eurekelettronica.it>
Mime-Version: 1.0
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
Subject: Re: Fwd: Barebox 2017.02 works great but no Linux Framebuffer... :-/
To: gianluca <gianlucarenzi@eurekelettronica.it>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 21.06.2017, 13:35 +0200 schrieb gianluca:
> On 06/21/2017 08:32 AM, Sascha Hauer wrote:
> > Hi Gianluca,
> >
> > On Mon, Jun 19, 2017 at 05:49:41PM +0200, gianluca wrote:
> >> Hello Lucas, Sascha and the barebox mailing list guys!
> >>
> >> I am back with the new boards batch release (now QuadPlus and DualLite iMX6)
> >>
> >> Now I adapted barebox to fit both processors and it works quite well.
> >>
> >> From Barebox point-of-view the ldb node of the device-tree is using three
> >> timings and they are working good depending on which panel bridge board I am
> >> connecting to (1280x800, 1024x600 and 800x480).
> >>
> >> The custom startup code of barebox is looking for a special eeprom on the
> >> panel-bridge and set the device tree accordingly, i.e. setting the
> >> native-mode node to the correct display-timing.
> >>
> >> The same device-tree is used in Linux (as in attachment) as you can see the
> >> ldb section and the panel section, using a simple-panel and a correct panel
> >> timing using the innolux,g101ice_l01 panel driver timings.
> >>
> >>>
> >>>> No, Linux does not support DT defined modes in the panel. You need a
> >>>> panel with a proper compatible and driver.
> >>>>
> >>>> See drivers/gpu/drm/panel. For most LVDS panels simple-panel is what you
> >>>> want to use.
> >>>>
> >>
> >> They are ignored in the Barebox starup (as you know barebox can use the
> >> display-timings in the ldb section) but the panel section is used in linux.
> >>
> >> Nevertheless it does not work.
> >
> > What exactly does not work? No picture in barebox? Any error messages?
> > Does it work in Linux?
> >
> 
> In Barebox no problem at all (screen frequency apart. For every 
> display-timing found it gives me @0 Hz...).
> 
> The problem is in Linux. The utility fbset is giving me 16bpp!!
> 
> The panel driver used (innolux,g101ice-l01) has the RGB888 format and 
> the ldb in the device-tree section has fsl,data-width = <24>
> 
> This issue is present for every panel I use (lg,lb070wv8 and 
> auo,b101aw03 too) so maybe some misconfiguration somewhere...
> 
> I was supposed to have 24 or 32 bit in the framebuffer driver using 
> fbset... May be some fbset issue?
> 
> Some issue??? I have no Xorg. only fbdev

The fbdev emulation in the imx-drm driver defaults to 16bpp. If you want
to change this you need to provide the module parameter
"legacyfb_depth=32".

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
