Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cF6o8-00068Z-0Q
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 22:04:53 +0000
From: "Jonathan Stackhouse" <jon@beiwy.com>
References: <005301d250dd$d02054e0$7060fea0$@beiwy.com>
 <33edc937-c508-8b14-1505-f703a428c766@mev.co.uk>
In-Reply-To: <33edc937-c508-8b14-1505-f703a428c766@mev.co.uk>
Date: Thu, 8 Dec 2016 15:04:29 -0700
Message-ID: <003a01d2519f$0caa4120$25fec360$@beiwy.com>
MIME-Version: 1.0
Content-Language: en-us
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
Subject: RE: AM335x Porting Questions
To: 'Ian Abbott' <abbotti@mev.co.uk>, barebox@lists.infradead.org

Hello Ian,

Thank you for your kind reply.

I've modified all of the files that you've listed.

My next couple of questions are aimed at anyone in the community who may
know their answers.
Does the MLO/PBL depend on the device tree in order to do the low-level
initialization? I'm assuming that it does since the lowlevel.c for the
beaglebone contains the line "fdt = __dtb_z_am335x_bone_common_start;", but
I don't know. If it does, to what extent does it depend upon the device
tree?

Do I need to have a "working" device tree before I can use barebox? My hope
was that I could get barebox up and running first, then build and test the
device tree (although I have already been working on one).

Are there any other pointers that anyone can offer me?

Thank you,

Jon Stackhouse

-----Original Message-----
From: Ian Abbott [mailto:abbotti@mev.co.uk] 
Sent: Thursday, December 08, 2016 5:11 AM
To: Jonathan Stackhouse <jon@beiwy.com>; barebox@lists.infradead.org
Subject: Re: AM335x Porting Questions

On 07/12/16 23:01, Jonathan Stackhouse wrote:
> Hello Barebox Community!
>
> I'm attempting to port the Beaglebone board files
> (arch/arm/boards/beaglebone) to another similar board, but am having a 
> bit of a hard time understanding what all I need to do.
>
> Is there a specific procedure that I should follow when porting 
> barebox or is it merely making changes/additions to the files in 
> arch/{ARCH}/boards/some-similar-board? I've read though the README in 
> the barebox root directory as well as several of the docs in the 
> Documentation folder and the online user manual but have not found the 
> information I am looking for.

Having done something similar recently (but on socfpga, not am335x), the
directories/files in question are:

  arch/${ARCH}/boards/Makefile
  arch/${ARCH}/boards/YOUR-BOARD/* (most of your source code here)
  arch/${ARCH}/mach-SOMETHING/Kconfig (or arch/${ARCH}/Kconfig for some
${ARCH}s)
  arch/${ARCH}/configs/YOUR-BOARD_defconfig (optional)
  arch/${ARCH}/configs/YOUR-BOARD-xload_defconfig (optional)
  arch/${ARCH}/dts/Makefile (if ${ARCH} uses device-tree)
  arch/${ARCH}/dts/DTS-FOR-YOUR-BOARD.dts (if $(ARCH} uses device-tree)
  arch/${ARCH}/dts/OTHER-COMMON-DTS-STUFF.dtsi (optional, as required)
  images/Makefile.PICK-OR-CREATE-ONE
  images/Makefile (if you created a new images/Makefile.*)

You don't need the defconfig files if you only manage the configuration
outside of barebox, unless the board is to be merged back into barebox
upstream.

> Do the SPL/MLO and barebox.bin write any data to log files for 
> debugging purposes? If so, how do I configure the builds for these 
> logs and how do I access them? I'm asking because I noticed under 
> Debugging in menuconfig that I can set the "default loglevel" but I 
> don't know where the log gets stored, and I wanted to view it to see
whether my MLO is working or not.

Logs go to the console, which is usually a serial port or a frame buffer.

> Additionally, I've attempted to get the MLO to initialize UART0 and 
> UART2 for debugging purposes, but can't seem to get the "MLO>" prompt 
> to appear in PuTTY (settings are 115200, 8N1, no flow control). I have 
> console support set to "full", Console activation strategy set to 
> "activate first console on startup", low level debug messages enabled, 
> and the OMAP Debug UART Port Selection set to 2. I also used the same 
> UART initialization code that is in the beaglebone lowlevel.c file, 
> with the exception that I set it up for
> UART2 instead of UART0. What else I need to do?

You might need to set the default baudrate to 115200 under "General Settings
--> Default baudrate" in the barebox configurations for MLO and final-stage
bootloader.

You may also need to do some work on your .dts files to mark &uart2 status
as "okay" and set up the pin muxing for uart2.

> I apologize for this rather broad and long email, but I've been 
> battling this for quite some time and have finally decided to reach out
for help.

Good luck!  I've never actually used barebox on any AM335x based boards
(though I tinkered with u-boot a couple of years ago), and am a bit of a
noob with barebox myself.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
