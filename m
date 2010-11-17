Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PIdbw-0002Lw-92
	for barebox@lists.infradead.org; Wed, 17 Nov 2010 08:43:25 +0000
Date: Wed, 17 Nov 2010 09:43:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101117084322.GQ6017@pengutronix.de>
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<20101101131946.GW6017@pengutronix.de>
	<201011151057.01538.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201011151057.01538.jbe@pengutronix.de>
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
Subject: Re: [PATCHv2] Add dynamic video initialization to barebox
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 15, 2010 at 10:57:01AM +0100, Juergen Beisert wrote:
> Hi Sascha,
> 
> Sascha Hauer wrote:
> > On Tue, Oct 26, 2010 at 01:31:36PM +0200, Juergen Beisert wrote:
> > > Currently barebox uses a fixed videomode setup. Everything is compiled
> > > in. This change adds the possibility to select a videomode according to a
> > > connected display at runtime. The current behaviour is still present if
> > > not otherwise configured. If configured for runtime setup, initialization
> > > of the video hardware will be delayed until the required videomode will
> > > be selected from the shell code. If more than one videomode is supported
> > > by the platform, running the 'devinfo' command on the framebuffer device
> > > shows the supported videomode list. After selecting the videomode, the
> > > output can be enabled.
> >
> > General remarks about this series:
> >
> > - Please do not add code with '#if 0' and activate it later. This shows
> >   the series has the wrong order.
> 
> This was for review only. If I would change the code in one step, the patch is 
> unreadable.
> 
> > - Please refrain from basing your internal functions around 'struct
> >   device_d'. By doing so we completey lose type safety and at least in
> >   case of the mci framework where three different devices are involved
> >   this leads to unreadable and error prone code.
> 
> But IMHO in the case of the MCI there _are_ three devices!
>  - The one that knows how to handle disk drives
>  - The one that knows what a SD card is
>  - the one that knows how to transfer data from an to an attached device.
> 
> Why this is unreadable or error prone? If you combine all these different 
> functions into one I would say: Yes, the result is unreadable and error 
> prone. And if you would say for a bootloader this separate approach is 
> over-engineered, I would say: Maybe.

I'm not at all against the presence of three devices. It's only a bad
idea to use the struct device_d * as a reference between functions. In
the MCI framework all functions take some device and then the
platform_data is derefenced to three different struct types. How do I
know which of the three devices is passed there? I have to look at the
calling function figure this out. We can simply let the compiler barf
when somebody passes a wrong pointer type when we do it like we always
did: Just pass a struct mci_host or whatever around.

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
