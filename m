Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUv45-0002fq-Ck
 for barebox@lists.infradead.org; Tue, 01 Apr 2014 09:33:06 +0000
Received: by mail-bk0-f48.google.com with SMTP id mx12so1257776bkb.21
 for <barebox@lists.infradead.org>; Tue, 01 Apr 2014 02:32:40 -0700 (PDT)
Date: Tue, 1 Apr 2014 11:32:34 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140401093232.GA5777@omega.Speedport_W_921V_1_24_000>
References: <20140401090229.GT17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140401090229.GT17250@pengutronix.de>
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
Subject: Re: Introducing barebOS
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 01, 2014 at 11:02:29AM +0200, Sascha Hauer wrote:
> Hi All,
> 
> barebox more and more comes in the area that is has everything an
> operating system needs:
> 
> - support for all kinds of storage devices
> - support for various different fileystems
> - Cooperative multitasking with the poller mechanism
> - memory management in form of malloc/free and iospace resources
> - drivers for Networking, MMC, USB, UARTs, Framebuffer devices, (S)ATA,
>   SPI, I2C, W1, Keyboard, EEPROMs, LEDs
> 
> I therefore decided that it's no longer necessary to have the overhead
> of Linux at all. The project will be renamed to barebOS in the next few
> days. Support for booting Linux will be dropped as soon as some the
> remaining missing features are added, like for example a working vi
> applet and nodejs integration. I'm looking forward to your feedback!
> 

damn, I don't have a thesis for my master degree anymore.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
