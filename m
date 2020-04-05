Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLAX5-0003SU-4k
 for barebox@lists.infradead.org; Sun, 05 Apr 2020 19:02:12 +0000
Received: by mail-wm1-x344.google.com with SMTP id c195so6285136wme.1
 for <barebox@lists.infradead.org>; Sun, 05 Apr 2020 12:02:10 -0700 (PDT)
MIME-Version: 1.0
From: Stas U <drop.bash@gmail.com>
Date: Sun, 5 Apr 2020 19:01:58 +0200
Message-ID: <CAEFqijwo5iHKz_F+qmGQ4_K9RtMAovnhXw47-kv+WTQ399X9ug@mail.gmail.com>
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
Subject: Booting optee
To: barebox@lists.infradead.org

Hey guys,

I'm facing a problem trying to boot first optee and then the linux
kernel on a custom board based around an i.MX6q SoM. Besides some
information about overlapped physical memory optee boots fine and
hands over to the normal world where the kernel is being decompressed.
According to the comments in the optee source, memory regions of the
same type can overlap and will be merged. A longfile of the boot
process can be found at: https://pastebin.com/6PtttRPW

Afterwards, 1 in 10 times the kernel would boot. I suspect that optee
configures the memory somehow funny so after relocation of the kernel
it can't execute the kernel code. I suspect, since the relocation is
happening randomly once in a while it will boot. As suggested in the
IRC channel, I should use early boot for optee.

Sadly, I can't figure out where and how to tell the barebox pbl to
first boot optee. I found the early boot option in the config of
barebox. As far as I understand, the PBL will first boot optee instead
of barebox. As soon as optee hands over to the normal world, barebox
will execute and start the kernel.

The documentation (https://www.barebox.org/doc/latest/user/optee.html)
tells me, my board needs to call start_optee_early() with a valid tee
and fdt. I don't quite get where the transition between PBL and
barebox happens thus where this call should happen. Also I can't wrap
my head around at where to put optee and the FDT. Right now they are
located on the emmc, obviously I can't access the fs at this stage, so
I'd need to link them to the barebox binary and pass the relative
addresses?

Could someone pls give me some hints at where to look next since I'm
completely out of useful ideas.


Thank you
BS

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
