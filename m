Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PHvoh-0006Lm-3m
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 09:57:48 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 15 Nov 2010 10:57:01 +0100
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<20101101131946.GW6017@pengutronix.de>
In-Reply-To: <20101101131946.GW6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201011151057.01538.jbe@pengutronix.de>
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
To: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer wrote:
> On Tue, Oct 26, 2010 at 01:31:36PM +0200, Juergen Beisert wrote:
> > Currently barebox uses a fixed videomode setup. Everything is compiled
> > in. This change adds the possibility to select a videomode according to a
> > connected display at runtime. The current behaviour is still present if
> > not otherwise configured. If configured for runtime setup, initialization
> > of the video hardware will be delayed until the required videomode will
> > be selected from the shell code. If more than one videomode is supported
> > by the platform, running the 'devinfo' command on the framebuffer device
> > shows the supported videomode list. After selecting the videomode, the
> > output can be enabled.
>
> General remarks about this series:
>
> - Please do not add code with '#if 0' and activate it later. This shows
>   the series has the wrong order.

This was for review only. If I would change the code in one step, the patch is 
unreadable.

> - Please refrain from basing your internal functions around 'struct
>   device_d'. By doing so we completey lose type safety and at least in
>   case of the mci framework where three different devices are involved
>   this leads to unreadable and error prone code.

But IMHO in the case of the MCI there _are_ three devices!
 - The one that knows how to handle disk drives
 - The one that knows what a SD card is
 - the one that knows how to transfer data from an to an attached device.

Why this is unreadable or error prone? If you combine all these different 
functions into one I would say: Yes, the result is unreadable and error 
prone. And if you would say for a bootloader this separate approach is 
over-engineered, I would say: Maybe.

>   The framebuffer code should be based around struct fb_info.

I do not like this idea, but okay. In the next series I will do it in this 
way.

> - Please keep the line lengths within sensible limits.

Sorry, I checked it the last time, but some lines are slipped through.

> - Get rid of CONFIG_VIDEO_DELAY_INIT and make the mode runtime
>   changeable. All this requires is a
>   host->fb_disable(info); host->fb_mode(info, newmode);
> host->fb_enable(mode);

Hmm, you want to be able to change the videomode more than one times in 
barebox? So, I need more effort in memory management. Okay.

Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
