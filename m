Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.aruba.it ([62.149.128.201] helo=smtp1.aruba.it)
	by bombadil.infradead.org with smtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NYNOq-0005lw-Tn
	for barebox@lists.infradead.org; Fri, 22 Jan 2010 17:34:29 +0000
Date: Fri, 22 Jan 2010 18:34:17 +0100
Message-Id: <KWNST5$F3E5C74A9E7804703269FDE3154F494E@aruba.it>
MIME-Version: 1.0
From: "Luca Ceresoli" <list@lucaceresoli.net>
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
Subject: Re: Current status of barebox for OMAP3530/beagle
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> I would expect NAND to be working, though I haven't tested it. What's
> going wrong on your board?
Actually nothing about NAND, I think. Only, barebox with NAND support
does not run (no prompt). Detailed report follows.

Hardware: BeagleBoard (actually EBVBeagle) rev C2.
Toolchain: CodeSourcery 2009q3.
No JTAG device, sorry.

I set up a UART boot script that follows these steps:
1. 1st stage loader is the OMAP3530 boot ROM.
USER button is pressed, so it will boot from UART and receive
the 2nd stage loader.
2. 2nd stage is barebox with omap3530_beagle_per_uart_defconfig,
which is working great for transferring stage3 in SDRAM.
3. For 3rd stage loader I'm trying both U-boot (V1) and barebox.
4. The 3rd stage must load in NAND a signed image for regular
(non-UART) booting, for which I'm also trying V1 and barebox.

U-boot-v1 (omap3_beagle_config) as 3rd stage is working.
Also, using the V1 stage3 in SDRAM to burn a signed V1 in NAND works,
and after a normal reboot (user button not pressed) I get the prompt.

At step 3 I replace V1 with barebox, config
omap3530_beagle_per_uart_defconfig plus a few commands (config2.patch).

The result:

 ...
 # go 0x80000000 [at the stage2 prompt]
 ## Starting application at 0x80000000 ...


 barebox 2009.12.0 (Jan 22 2010 - 10:26:45) [now in stage3!]

 Board: Texas Instrument's Beagle
 Malloc space: 0x87bfff10 -> 0x87ffff10 (size 4 MB)
 Stack space : 0x87bf7f10 -> 0x87bfff10 (size 32 kB)
 running /env/bin/init...
 not found
 barebox-full>help [different prompt]
 ? - alias for help
 bootu - bootu - start a raw linux image
 ...
 barebox-full>cpuinfo
 implementer: ARM
 architecture: Unknown
 cache: no cache
 Control register: A W P D L Z I U XP
 barebox-full>devinfo
 devices:
 |----serial_ns165500
 |----cs0
 |----ramfs0
 |----devfs0
 |----mem0 (mem)
 |----mem1 (ram0)

 drivers:
 serial_ns16550
 ramfs
 devfs
 mem
 barebox-full>meminfo
 max system bytes = 16624
 system bytes = 16624
 in use bytes = 9336
 barebox-full>mtest 0x84000000 0x87bf0000
 Testing 0x84000000 ... 0x87bf0000:
 Pattern 0xFFFFFFED Writing... Reading... [10 minutes, no error]
 barebox-full>

Great.
Now I add NAND support (config3.patch), restart the whole procedure
and suddenly stage3 barebox does not start:

 ...
 # go 0x80000000 [at the stage2 prompt]
 ## Starting application at 0x80000000 ...

 [nothing else]

This time barebox.bin is 83544 bytes big. In the previous test it was
less than 64KB. May this be the issue?
I tried another config, without NAND but with some totally useless
options, just to increase bin size. I got one that's 68908 bytes and
it does not boot, exactly as the NAND version.

A variant to all of the above consists in using U-boot V1 as a
3rd stage loader, to burn barebox in NAND.
The results are the same: without NAND support and below 64 kB it
boots, with NAND support or useless stuff and above 64 kB it does't.

Luca



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
