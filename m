Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNI4-0001jF-LJ
 for barebox@lists.infradead.org; Mon, 06 Apr 2020 08:39:34 +0000
Message-ID: <046714b1d937f5b85c18d2962f09af3a0c5a5aee.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 06 Apr 2020 10:39:28 +0200
In-Reply-To: <CAEFqijwo5iHKz_F+qmGQ4_K9RtMAovnhXw47-kv+WTQ399X9ug@mail.gmail.com>
References: <CAEFqijwo5iHKz_F+qmGQ4_K9RtMAovnhXw47-kv+WTQ399X9ug@mail.gmail.com>
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
Subject: Re: Booting optee
To: Stas U <drop.bash@gmail.com>, barebox@lists.infradead.org

On Sun, 2020-04-05 at 19:01 +0200, Stas U wrote:
> Hey guys,
> 
> I'm facing a problem trying to boot first optee and then the linux
> kernel on a custom board based around an i.MX6q SoM. Besides some
> information about overlapped physical memory optee boots fine and
> hands over to the normal world where the kernel is being decompressed.
> According to the comments in the optee source, memory regions of the
> same type can overlap and will be merged. A longfile of the boot
> process can be found at: https://pastebin.com/6PtttRPW
> 
> Afterwards, 1 in 10 times the kernel would boot. I suspect that optee
> configures the memory somehow funny so after relocation of the kernel
> it can't execute the kernel code. I suspect, since the relocation is
> happening randomly once in a while it will boot. As suggested in the
> IRC channel, I should use early boot for optee.

What kernel options are enabled in your kernel? Currently CPU idle will
break secure world entry, also did you enable PSCI? Any output with
early_printk?

> Sadly, I can't figure out where and how to tell the barebox pbl to
> first boot optee. I found the early boot option in the config of
> barebox. As far as I understand, the PBL will first boot optee instead
> of barebox. As soon as optee hands over to the normal world, barebox
> will execute and start the kernel.
> 
> The documentation (https://www.barebox.org/doc/latest/user/optee.html)
> tells me, my board needs to call start_optee_early() with a valid tee
> and fdt. I don't quite get where the transition between PBL and
> barebox happens thus where this call should happen. Also I can't wrap
> my head around at where to put optee and the FDT. Right now they are
> located on the emmc, obviously I can't access the fs at this stage, so
> I'd need to link them to the barebox binary and pass the relative
> addresses?

arch/arm/boards/phytec-som-imx6 contains the board specific code for
your board. lowlevel.c is the c file compiled into the pbl. What you
need to do for OP-TEE early loading is:

1. Compile the tee.bin into barebox via the firmware/ directory
2. setup a stack and call setup_c
3. immediately call into a new pure C function afterwards to start from
a clean C environment
5. Enable DT_OVERLAY and configure your OP-TEE for DT_OVERLAY as well
6. read the DT_OVERLAY from the shared location during barebox
initialization
6. apply the overlay to the during barebox start as a pure_initcall

> Could someone pls give me some hints at where to look next since I'm
> completely out of useful ideas.

Since this seems to be a kernel boot issue, I'd suggest getting more
information from early kernel boot. The kernel has options to check the
memory during initialization, however I currently don't remember the
options. 

Regards,
Rouven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
