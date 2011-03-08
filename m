Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail13.tpgi.com.au ([203.12.160.181])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Px46A-0006sd-L0
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 21:05:43 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Wed, 9 Mar 2011 08:04:38 +1100
References: <4D764613.5020708@telemotive.de>
	<AANLkTi=CXxPuac0Jub=uyD-A0qvDMgK2UVYv++JP_X+T@mail.gmail.com>
	<4D7651A2.90301@eukrea.com>
In-Reply-To: <4D7651A2.90301@eukrea.com>
MIME-Version: 1.0
Message-Id: <201103090804.38216.marc@cpdesign.com.au>
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
Subject: Re: Install barebox to target
To: barebox@lists.infradead.org

Hi,

> > 2011/3/8 Thomas Mayer<thomas.mayer@telemotive.de>:
> >> according to the cpu datasheet  the bootloader has to store at offset
> >> 0x400 (1KByte).
> >> I tried to dd barebox that way  but it didn't work (command: "dd
> >> if=barebox.bin of=/dev/sdb bs=512 seek=2&&  sync&&  sync").

sudo dd if=barebox.bin of=/dev/sde bs=512 seek=2 skip=2 && sync


> >> I also tried to use the prebuild freescale redboot binary with mmc
> >> support and this works.
> >> 
> >> Have you any idea what I'm doing wrong?

The flash header in the barebox image is at offset 0x400 already, so 
effectively you are dd'ing it to 0x800 .. hence the skip=2 is also required.

> >> Is it possible that a mmc binary need a special flash header to work
> >> correctly?

Very possible  :) 

Another thing to check is that your image isn't larger than 256K (or what you 
specify in the variable that goes in __image_len_XXXXX section) 

> 
> check arch/arm/boards/eukrea_cpuimx35/flash_header.c
> it works fine on our i.MX35 baord but I had to hack
> CPUIMX35_FLASH_HEADER_BASE to get it working.

I remember what a PITA this is to tackle when you're getting started. Here's 
what I use now... pardon the formatting:

struct imx_flash_header __flash_header_0x0400 sd_flash_header = {
	.app_code_jump_vector	= TEXT_BASE + ((unsigned int)&exception_vectors - 
TEXT_BASE),
	.app_code_barker	= APP_CODE_BARKER,
	.app_code_csf		= 0,
	.dcd_ptr_ptr		= TEXT_BASE + 0x0400 + offsetof(struct imx_flash_header, 
dcd),
	.super_root_key		= 0,
	.dcd			= TEXT_BASE + 0x0400 + offsetof(struct imx_flash_header, 
dcd_barker),
	.app_dest		= TEXT_BASE,
	.dcd_barker		= DCD_BARKER,
	.dcd_block_len		= sizeof(sd_dcd_entry),
};

unsigned long __image_len_0x0400 sd_barebox_len = 0x40000;


Cheers
Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
