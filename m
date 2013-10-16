Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VWLSH-00005b-3d
 for barebox@lists.infradead.org; Wed, 16 Oct 2013 07:23:41 +0000
Date: Wed, 16 Oct 2013 09:23:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131016072319.GL30088@pengutronix.de>
References: <20131015115116.GC2839@omega>
 <20131015122332.GI30088@pengutronix.de>
 <20131015183110.GA20967@omega> <20131015183927.GB51758@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131015183927.GB51758@gmail.com>
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
Subject: Re: raspberry pi mmc issue
To: Andre Heider <a.heider@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 15, 2013 at 08:39:27PM +0200, Andre Heider wrote:
> Hi,
> 
> On Tue, Oct 15, 2013 at 08:31:11PM +0200, Alexander Aring wrote:
> > Hi Sascha,
> > 
> > On Tue, Oct 15, 2013 at 02:23:32PM +0200, Sascha Hauer wrote:
> > > The only thing I realize here is that my 3.6.4 kernel fails to access
> > > the SD card when barebox has accessed it before:
> > > 
> > > [    3.623861] mmc0: SD Status: Invalid Allocation Unit size.
> > > [    3.635586] mmc0: error -110 whilst initialising SD card
> > > [    3.724743] mmc0: SD Status: Invalid Allocation Unit size.
> > > [    3.739073] mmc0: error -110 whilst initialising SD card
> > > [    3.836341] mmc0: SD Status: Invalid Allocation Unit size.
> > > [    3.847708] mmc0: error -110 whilst initialising SD card
> > > [    3.965447] mmc0: read SD Status register (SSR) after 3 attempts
> > > [    3.971483] mmc0: SD Status: Invalid Allocation Unit size.
> > 
> > Mhh, I think my patch would not fix your problem. I successful access
> > the sdcard after booting linux, but this was on qemu...
> 
> I'm not seeing the issue here either (using Linus' master).

Oh, great. Then I'll probably just have to update my kernel.

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
