Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vfo9P-0002Hx-7j
 for barebox@lists.infradead.org; Mon, 11 Nov 2013 09:51:19 +0000
Date: Mon, 11 Nov 2013 10:50:42 +0100
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20131111105042.58fa88fa@skate>
In-Reply-To: <20131111075738.GB24559@pengutronix.de>
References: <1383935439-23623-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20131111075738.GB24559@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 0/2] x86 minor fixes and questions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dear Sascha Hauer,

On Mon, 11 Nov 2013 08:57:38 +0100, Sascha Hauer wrote:

> > Also, I've tested the x86 support under Qemu, it starts fine. Thanks
> > to the bios disk driver, it detects one hard disk drive. However,
> > since the driver doesn't set num_blocks, the disk size is zero, and no
> > partition can be detected. Is this bios disk driver supposed to work
> > to read the entire hard drive, access a filesystem and load the kernel
> > image, or is the x86 support generally too limited for this at the
> > moment?
> 
> Does your disk contain a valid partition table? There's no way to
> properly detect the disk size, so barebox guesses the size based on the
> last partition on the disk. This fails of course on an unpartitioned
> device. See disk_guess_size().

Yes, my disk had a partition table. However, I see that
disk_guess_size() is only called if you have a DOS partition table, and
not a GPT type of partition table, and I don't remember which type I've
used during my testing.

I'll test again, and with the info that disk_guess_size() is the
important part, I'll have a closer look.

> But indeed, the x86 support is quite limited.

Yeah, no problem. I'm not really planning on making any real use of it,
was just curious to see whether it worked, and if yes, how :-)

> > Thomas Petazzoni (2):
> >   scripts/setupmbr: fix documentation
> >   arch/x86: fix link with recent gcc
> 
> Applied, thanks

Thanks!

Thomas
-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
