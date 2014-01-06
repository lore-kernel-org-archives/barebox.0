Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.g1.pair.com ([66.39.3.162])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W09lT-0001MS-Fc
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 12:58:44 +0000
Message-ID: <52CAA869.5070600@kosagi.com>
Date: Mon, 06 Jan 2014 20:58:17 +0800
From: Sean Cross <xobs@kosagi.com>
MIME-Version: 1.0
References: <52CA7565.7060808@kosagi.com>
 <20140106102039.GD3677@pengutronix.de>
In-Reply-To: <20140106102039.GD3677@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 6/1/14 6:20 PM, Sascha Hauer wrote:
> On Mon, Jan 06, 2014 at 05:20:37PM +0800, Sean Cross wrote:
>> but I'm starting to grasp at straws now when it comes to
>> bringing DDR up.
>>
>> Novena has an SO-DIMM slot.  In U-Boot, we wrote a hook for setup_ddr()
>> that got the SO-DIMM's SPD via I2C, performed calibration, and returned
>> with DDR all configured.
>>
>> In Barebox, I'm running into some trouble:
>>
>>     1) How do I access I2C routines from lowlevel.c?  I need to be able
>> to query the EEPROM on the DDR module itself to get its timing parameters.
> There is no way to access the regular i2c functions that early. You are
> lucky that the mpc85xx has the same i2c controller and the same problem.
> See arch/ppc/mach-mpc85xx/fsl_i2c.c, it contains the lowlevel functions
> to access the i2c bus. We probably have some SPD EEPROM parsing code
> from U-Boot aswell.
Looks like there's some DDR2 code left over, but not much related to
DDR3.  Can't win 'em all, but that's a lucky break on the FSL I2C stuff.

>>     2) How much character printing can I get in lowlevel.c?  I notice
>> putc_ll() works, but puts_ll() doesn't, presumably because I have the
>> text offset incorrectly set.
> Yes right. only putc_ll and puthex_ll can be used.
Noted.  putc_ll() it is.  No printf for me, in bringing up DDR3.

>>     3) How much functionality can I have in ~96 KiB?  I believe that's
>> roughly the amount of space allowed in the OCRAM on an i.MX6DL once you
>> allow for code in ROM that's actually doing the loading.
>>
>>     4) Failing that, is it possible to load some preboot code to set up
>> DDR?  I realize the traditional method is a hardcoded pokefile, but
>> since we support DDR3 modules, we can't rely on that.
> You have several options here. First option is to compile a small first
> stage barebox which runs from OCRAM. This first stage loader would need
> i2c support and support for loading the 2nd stage barebox from whatever
> medium you boot from. 96KiB should be enough to accomplish this. The good
> about this way is that it's relatively straight forward. Also you could
> directly start a kernel instead of the 2nd stage barebox which makes
> your boot process really fast. The downside is that you have two barebox
> binaries and configs to handle. Also the available binary space in the 1st
> stage loader probably won't be enough to contain code for bootstrapping
> from say MMC and NAND and SPI, so you need additional binaries for each
> boot source.
> Another option is to do what the phyCORE am335x does, see
> arch/arm/boards/pcm051/lowlevel.c. The ROM code loads the binary to
> internal SRAM. Then this board calls relocate_to_current_adr() and setup_c()
> right after startup. At this point you have a regular C environment and
> have everything in place to use fsl_i2c.c and gather information about
> your SDRAM. When done call barebox_arm_entry() with the amount of SDRAM
> you found. This will then uncompress the regular barebox to SDRAM and
> continue from there.
>
> I recommend using the second approch, although it's probably harder to
> understand what is going on there. Feel free to ask when you encounter
> problems.
>
Let me make sure I understand the mechanics of the two options.

For the first option -- a first-stage and a second-stage -- lowlevel.c
would call barebox_arm_entry(), and the boot script would configure DDR,
load a larger barebox off of MMC, and jump to it.  The TEXT_ADDR of the
first stage would point to somewhere like 0x00908000 (near the top of SRAM).

For the second option -- what the phyCORE am335x does -- it would run
lowlevel.c with the stack in SRAM, which would set up DDR, then
barebox_arm_entry would put the stack somewhere in SDRAM.

The second does sound more attractive, as it would allow us to continue
using USB boot for factory tests.  However, I'm having trouble getting
barebox to be small enough.  I've disabled most commands, most drivers,
networking, USB, MMC, autocompletion, enabled Thumb2, and am using the
simplified shell, and the size of images/barebox-kosagi-novena-6dl.img
is still 87k.  If this is the size of the stripped-down version, where
would the regular barebox fit?

If I do go with the two-stage approach, is barebox.bin a binary that can
simply be loaded into RAM and jumped to, assuming PIC is enabled?  I
suppose I could reuse the DTB file in memory by passing it to the
second-stage bootloader at this point...


Sean

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
