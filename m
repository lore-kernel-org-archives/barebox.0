Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YEYNE-0006sd-6o
 for barebox@lists.infradead.org; Fri, 23 Jan 2015 07:09:45 +0000
Date: Fri, 23 Jan 2015 08:09:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150123070916.GU12209@pengutronix.de>
References: <54C0E4D4.2010402@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54C0E4D4.2010402@ge.com>
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
Subject: Re: ARM newbie
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Thu, Jan 22, 2015 at 11:53:56AM +0000, Renaud Barbier wrote:
> 
> I am doing my first port to an ARM CPU (Broadcom chip). For testing I
> built the friendlyarm-tiny210 and created an objdump to see what the
> code look like:
> 
> barebox:     file format elf32-littlearm
> 
> 
> Disassembly of section .text:
> 
> 23e00000 <start>:
> 23e00000:   ea000012        b       23e00050 <start+0x50>
> ...
> 23e00050:   ea000013        b       23e000a4 <barebox_arm_reset_vector>
> ...
> 
> 23e000a4 <barebox_arm_reset_vector>:
> 23e000a4:   e52de004        push    {lr}       ; (str lr, [sp, #-4]!)
> 
> I am a bit surprise to see a push to stack as the first instruction of
> barebox_arm_reset_vector as the stack pointer has not been defined yet.
> Or is there a pre boot loader that is not built as part of the
> friendlyarm-tiny210  build.
> 
> Other BSP I have built do not produce this push instruction.
> Where is the difference coming from in the build?
> 
> Are all BSP having a lowlevel.c file assumed to have a pre-bootloader?

barebox_arm_reset_vector should have a __naked like the other boards
have, then the stack won't be used. Does the board work? If yes then the
stack pointer seems to be initialized with some value where it doesn't
hurt to push to, but it doesn't look intentional.

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
