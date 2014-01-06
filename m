Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0BS9-0003yj-I4
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 14:46:54 +0000
Date: Mon, 6 Jan 2014 15:41:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140106144131.GB6750@pengutronix.de>
References: <52CA7565.7060808@kosagi.com>
 <20140106102039.GD3677@pengutronix.de>
 <52CAA869.5070600@kosagi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52CAA869.5070600@kosagi.com>
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
Subject: Re: Porting Barebox to i.MX6QDL "Novena"
To: Sean Cross <xobs@kosagi.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 06, 2014 at 08:58:17PM +0800, Sean Cross wrote:
> On 6/1/14 6:20 PM, Sascha Hauer wrote:
> > I recommend using the second approch, although it's probably harder to
> > understand what is going on there. Feel free to ask when you encounter
> > problems.
> >
> Let me make sure I understand the mechanics of the two options.
> 
> For the first option -- a first-stage and a second-stage -- lowlevel.c
> would call barebox_arm_entry(), and the boot script would configure DDR,
> load a larger barebox off of MMC, and jump to it.  The TEXT_ADDR of the
> first stage would point to somewhere like 0x00908000 (near the top of SRAM).

Yes. Only TEXT_BASE should point to the bottom of SRAM since it's the
start address of the binary.

> 
> For the second option -- what the phyCORE am335x does -- it would run
> lowlevel.c with the stack in SRAM, which would set up DDR, then
> barebox_arm_entry would put the stack somewhere in SDRAM.

Yes.

> 
> The second does sound more attractive, as it would allow us to continue
> using USB boot for factory tests.  However, I'm having trouble getting
> barebox to be small enough.  I've disabled most commands, most drivers,
> networking, USB, MMC, autocompletion, enabled Thumb2, and am using the
> simplified shell, and the size of images/barebox-kosagi-novena-6dl.img
> is still 87k.  If this is the size of the stripped-down version, where
> would the regular barebox fit?

Sorry I was confused. Somehow I assumed that once your 1st stage loader
can setup the SDRAM from lowlevel code it can be bigger than internal
SRAM. That's nonsense of course.
Once you need code to setup SDRAM you are doomed to use the two staged
approach (or a very limited single stage).
However, image compression can help you in this case to stretch the
limits of the first stage a bit, see the attached config. With this you
could:

- Let the ROM load the binary to SRAM
- configure SDRAM from lowlevel code
- uncompress to SDRAM
- execute from SDRAM

> 
> If I do go with the two-stage approach, is barebox.bin a binary that can
> simply be loaded into RAM and jumped to, assuming PIC is enabled?  I
> suppose I could reuse the DTB file in memory by passing it to the
> second-stage bootloader at this point...

Yes. If you only want to test barebox without doing all the lowlevel
stuff you can also jump to it from U-Boot. Just copy barebox.bin
somewhere to SDRAM and jump to it using U-Boots 'go' command.

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
