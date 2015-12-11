Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7THQ-0001Xd-A4
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 19:23:01 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 11 Dec 2015 19:22:29 +0000
Message-ID: <1449861755.26955.114.camel@rtred1test09.kymeta.local>
References: <1449784305.26955.83.camel@rtred1test09.kymeta.local>
 <20151211094142.GZ11966@pengutronix.de>
In-Reply-To: <20151211094142.GZ11966@pengutronix.de>
Content-Language: en-US
Content-ID: <B783F36C4A844044936B3691E1BF72B9@kymetacorp.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] socfpga: Allow setting partition xloader boots from for
 mmc
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Fri, 2015-12-11 at 10:41 +0100, Sascha Hauer wrote:
> On Thu, Dec 10, 2015 at 09:51:39PM +0000, Trent Piepho wrote:
> > The xloader boots the 2nd stage barebox from socfpga_barebox_part when
> > using NOR.  But when using MMC it boots from a hardcoded "disk0.1".
> > Add the mmc device name to the partition description and use it for
> > mmc booting.
> 
> What is the device string in your case? Is the device another one or is
> the partition another one? I'm asking because I rather have the code
> pushed into the "do the right thing" direction than in the "configure it
> correctly" direction.

On my device there are multiple partitions and I select which one to use
based on data from an eeprom.  It's disk0.boot0, disk0.boot1, etc.

The socfpga code was copied from omap. On omap the partition description
has both nand and nor.  socfpga doesn't have nand, but it does have mmc,
so it makes sense it should have both nor and mmc.

There is a board, phytec-som-am335x, that changes the default OMAP part
to something else.  See commit ed1618261b10888dba13bf97d3d316351b65eab5.

I want to do the same thing on by board, except:
SocFPGA should have mmc+nor instead of phytec's nand+nor.  Which is this
patch.
I want to select a different partition based on an eeprom, which is in
board specific code.  And doesn't have to modify the arch code.

Since SocFPGA has just one mmc controller, there is only disk0.  So one
could hard-code "disk0." and append the partition to it.  But it
increases code complexity and size in the preloader to do that.  I don't
see what the point would be.  "disk0.1" actually exists as a device
while "1" doesn't, so it seems more natural to use the former.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
