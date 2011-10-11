Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDWLw-0002uw-90
	for barebox@lists.infradead.org; Tue, 11 Oct 2011 07:02:17 +0000
Date: Tue, 11 Oct 2011 09:01:56 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20111011070155.GD16040@sapphire.tkos.co.il>
References: <20110308071058.GB22012@jasper.tkos.co.il>
	<4DE1E2FA.1090907@wellsense-tech.com>
	<20110529063350.GB32378@jasper.tkos.co.il>
	<4DE1F253.4050504@wellsense-tech.com>
	<20110529072803.GE32378@jasper.tkos.co.il>
	<4E9148E5.6070102@wellsense-tech.com>
	<20111010044451.GA28707@sapphire.tkos.co.il>
	<4E93E4F4.8040604@wellsense-tech.com>
	<20111011065419.GL18273@pengutronix.de>
	<4E93E8CB.1040504@wellsense-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E93E8CB.1040504@wellsense-tech.com>
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
Subject: Re: iMX35 3stack framebuffer problem
To: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Boaz,

On Tue, Oct 11, 2011 at 08:57:15AM +0200, Boaz Ben-David wrote:
> On 10/11/11 08:54, Robert Schwebel wrote:
> 
>     On Tue, Oct 11, 2011 at 08:40:52AM +0200, Boaz Ben-David wrote:
> 
>         Yes, I didn't mention it, but I tried your suggestion. It works
>         (meaning there's no flicker) but
> 
>         the problem is that the screen is blank for about 8 seconds before I
>         have control again to init it.
> 
>         People here said they prefer flicker over 8 seconds of blank time...
> 
>     This is why we have a framebuffer / video driver framework in Barebox.
>     We do not have a driver for MX35 yet, but that could of course be
>     changed.
> 
>     On the other hand, I'm wondering why it needs 8 s until you see
>     something on the Linux side. We have an MX35 system here which runs at
>     532 MHz, and it needs about 1 s from power-on into Linux userspace, so
>     we decided to show the splash screen from there.
> 
>     rsc
> 
> The kernel size is almost 5MB (it includes an initramfs).
> 
> 8 seconds are from the time I call "bootm uImage" and until the init script in
> the initramfs kicks in.
> 
> If I can seriously shorten this time I will be glad to know, maybe there's
> something I missed.
> 
> Any input will be appreciated.

See 
http://elinux.org/images/8/89/ELCE-2010-Barebox-Booting-Linux-Fast-and-Fancy.pdf.  
This presentation (by Robert Schwebel) specifically mentions Barebox on 
i.MX35.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
