Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIusS-00063C-41
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 04:46:25 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id ECEEAFF88F7
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 06:47:30 +0200 (CEST)
Date: Sat, 14 Apr 2012 06:28:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120414042832.GB2074@game.jcrosoft.org>
References: <F9C551623D2CBB4C9488801D14F864C614B2F7@ex-mb1.corp.adtran.com>
 <20120413202303.GT3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120413202303.GT3852@pengutronix.de>
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
Subject: Re: I want to use Barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 22:23 Fri 13 Apr     , Sascha Hauer wrote:
> On Fri, Apr 13, 2012 at 03:37:04PM +0000, ANDY KENNEDY wrote:
> > I first saw Barebox about a year ago, did a little poking around and
> > realized that this seems like the way to go for booting an embedded
> > system.  I am, however, meeting opposition to implementing Barebox in
> > our current system.  I need some help on questions I cannot answer.  If
> > you could, please take the time to answer the following few issues.
> > 
> > 1)  I have a concern that barebox is not mainstream enough yet.
> 
> Well by using it you could make it a bit more mainstream ;)
> 
> > 
> > 2)  I have a feeling we will always be porting everyone's bsp (that
> >     already has a working u-boot) to barebox.
> 
> I'd say that usually barebox better abstracts from the hardware, so
> different boards usually feel much more the same. With U-Boot the usage
> often differs across different boards. Having a common environment
> becomes a real advantage when you have many different boards.
> 
> > 3)  I also don't really see the real advantage over standard u-boot
> >     (what's the 'killer' application?).
> 
> For me the basic killing feature is that barebox has filesystem support
> which means that you can mount filesystems and only have one
> 'ls' (cp, rm,..) command to access all files and devices. U-Boot instead
> has a set of these commands for each filesystem and device:
> 
>   fatload <interface> <dev[:part]>  <addr> <filename> [bytes]
>   nand read - addr off|partition size
>   mmc read addr blk# cnt
>   eeprom read  devaddr addr off cnt
> 
> All these commands have a different syntax and are non obvious to use.
> Also note that the target of all the commands above is a chunk of plain
> SDRAM. This means that in case of a system update you always have to
> copy the update image first from the device to SDRAM and then from SDRAM
> to the target device. To do this you have to know where SDRAM is (varies
> across different boards) and also the size of the update image is
> limited by the amount of free SDRAM you have. With barebox all this goes
> down to for example cp /mnt/usb0-fat/rootimage /dev/nor0.root.
> 
> There are other things aswell:
> 
> - barebox has a sane configuration system (U-Boot is configured using
>   several thousand CFG_* defines)
> - barebox can always start itself as a second stage loader (with U-Boot
>   you have to compile a special ramboot image which then again can't
>   start first stage)
> - barebox can start zImages, raw Linux images, uImages, all using the
>   same command (U-Boot is limited to uImages)
you forget Android Image
> - barebox has command line options, U-Boot only supports positional
>   arguments
> - barebox has a driver model which means that you can register devices
>   which automatically find the correct driver.
> - you can put your environment into files as opposed to 'executable
>   environment variables' in U-Boot
we have full feature bootp support with a dhcp client supporting
vondor id
client id
client uuid
user class

and very esay to extend

we have menu support that you can write in c or shell

we have shell support with shell script (file)
U-Boot use var to store the shell which is quite hard to customised
and make it nearly imposssible to foactorize.

On barebox we have a defaultenv that you just need to cusmoize in your board
without having to touch it. (this simplify to adding of platform quite a lot).

We have DFU support, srial of USB device that you can select at the runtime
(take a look on the Atmel reference baord or the Calao)

We have pull support that allow you to have recurent task evenif we do not
support IRQ (impossible in u-boot)

And if you need modules support to extend barebox feature at the run time

And framebufer support (derived from the kernel)

I'm sure I forget some feature but barebox is design to easly share the code
with the kernel and to simplify the life of the developper and the end
customer

And I implement complex boot sequence easly in barebox where in U-Boot evenif
I known perfecly I get hard time.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
