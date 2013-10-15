Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22c.google.com ([2a00:1450:4013:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW9X8-000177-OZ
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 18:39:55 +0000
Received: by mail-ea0-f172.google.com with SMTP id r16so4174908ead.17
 for <barebox@lists.infradead.org>; Tue, 15 Oct 2013 11:39:31 -0700 (PDT)
Date: Tue, 15 Oct 2013 20:39:27 +0200
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131015183927.GB51758@gmail.com>
References: <20131015115116.GC2839@omega>
 <20131015122332.GI30088@pengutronix.de>
 <20131015183110.GA20967@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131015183110.GA20967@omega>
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
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Tue, Oct 15, 2013 at 08:31:11PM +0200, Alexander Aring wrote:
> Hi Sascha,
> 
> On Tue, Oct 15, 2013 at 02:23:32PM +0200, Sascha Hauer wrote:
> > The only thing I realize here is that my 3.6.4 kernel fails to access
> > the SD card when barebox has accessed it before:
> > 
> > [    3.623861] mmc0: SD Status: Invalid Allocation Unit size.
> > [    3.635586] mmc0: error -110 whilst initialising SD card
> > [    3.724743] mmc0: SD Status: Invalid Allocation Unit size.
> > [    3.739073] mmc0: error -110 whilst initialising SD card
> > [    3.836341] mmc0: SD Status: Invalid Allocation Unit size.
> > [    3.847708] mmc0: error -110 whilst initialising SD card
> > [    3.965447] mmc0: read SD Status register (SSR) after 3 attempts
> > [    3.971483] mmc0: SD Status: Invalid Allocation Unit size.
> 
> Mhh, I think my patch would not fix your problem. I successful access
> the sdcard after booting linux, but this was on qemu...

I'm not seeing the issue here either (using Linus' master).

Regards,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
