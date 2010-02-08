Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NeR46-0002u0-Cv
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 10:42:06 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Mon, 8 Feb 2010 16:11:52 +0530
Message-ID: <B85A65D85D7EB246BE421B3FB0FBB59301E2639AF2@dbde02.ent.ti.com>
In-Reply-To: <4B6C5C5E.2020208@tylerlabs.com>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: barebox for leopardboard
To: "barebox@tylerlabs.com" <barebox@tylerlabs.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox-bounces@lists.infradead.org 
> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> Tyler W. Wilson
> Sent: Friday, February 05, 2010 11:29 PM
> To: barebox@lists.infradead.org
> Subject: Re: barebox for leopardboard
> 
> On 2/5/2010 1:49 PM, Sascha Hauer wrote:
> > Hi Tyler,
> >
> > On Fri, Feb 05, 2010 at 12:25:28PM -0400, Tyler W. Wilson wrote:
> >    
> >> I am curious if anybody has done any work on getting 
> barebox running on
> >> the leopardboard, so I do not reproduce effort.
> >>
> >> I am especially interested in setting up a bootloader that directly
> >> supports USB and DFU, so that I do not need to use the 
> UART/serial port.
> >>      
> > I know nothing about the leopardboard, from googling I 
> found out that
> > this is a beagleboard with a camera connected to it, right? 
> Barebox runs
> > on the beagleboard, but unfortunately we do not have USB 
> support for it.
> > You would have to port the usb driver for it, then DFU should work.
> > As a first shot you can compile the beagleboard defconfig 
> and see how
> > far you get.
> >
> > Sascha
> >
> >    
> Unfortunately, it is a little different - it uses a DaVinci DM355 
> processor, which is an ARM9 + custom DSP. The beagleboard 
> uses an OMAP3x 
> of course. Unfortunately, even I am confused on the TI naming 
> scheme as 
> to what is an OMAP versus what is a DaVinci.
> 
> I will probably do as you suggest - start with the 
> beagleboard configs 
> and also look at the leopardboard code in the ti u-boot repo. 
> Hopefully 
> that will give me enough data to get the basic barebox running.

Tyler,

You may want to post specific queries to davinci-linux-open-source@linux.davincidsp.com

Best regards,
Sanjeev

> 
> The USB worries me, since I am just familiar enough with it 
> to know how 
> complex it can be. Time will tell.
> 
> Thank you for your input.
> 
> Tyler
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
