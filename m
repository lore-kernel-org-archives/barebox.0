Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VfmNk-0007Px-SB
 for barebox@lists.infradead.org; Mon, 11 Nov 2013 07:58:01 +0000
Date: Mon, 11 Nov 2013 08:57:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131111075738.GB24559@pengutronix.de>
References: <1383935439-23623-1-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383935439-23623-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org

Hi Thomas,

On Fri, Nov 08, 2013 at 07:30:37PM +0100, Thomas Petazzoni wrote:
> Hello,
> 
> Here are two minor fixes for the x86 support. The first patch avoids
> linking problems on recent gcc versions, and the second one fixes the
> documentation.
> 
> Also, I've tested the x86 support under Qemu, it starts fine. Thanks
> to the bios disk driver, it detects one hard disk drive. However,
> since the driver doesn't set num_blocks, the disk size is zero, and no
> partition can be detected. Is this bios disk driver supposed to work
> to read the entire hard drive, access a filesystem and load the kernel
> image, or is the x86 support generally too limited for this at the
> moment?

Does your disk contain a valid partition table? There's no way to
properly detect the disk size, so barebox guesses the size based on the
last partition on the disk. This fails of course on an unpartitioned
device. See disk_guess_size().

But indeed, the x86 support is quite limited.

> Thomas Petazzoni (2):
>   scripts/setupmbr: fix documentation
>   arch/x86: fix link with recent gcc

Applied, thanks

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
