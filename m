Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bG34A-0003M3-OB
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 11:45:03 +0000
Date: Thu, 23 Jun 2016 13:44:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160623114440.GF20657@pengutronix.de>
References: <1466606944-22735-1-git-send-email-s.mueller-klieser@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466606944-22735-1-git-send-email-s.mueller-klieser@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 0/1] am335x kernel not booting
To: Stefan =?iso-8859-15?Q?M=FCller-Klieser?= <s.mueller-klieser@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 22, 2016 at 04:49:03PM +0200, Stefan M=FCller-Klieser wrote:
> Dear list,
> =

> this is more of a request for help, as I am not sure if my current
> analysis is correct. The problem I am having is that the kernel current
> master does not boot and fails with:
> =

> Error: unrecognized/unsupported machine ID (r1 =3D 0x00001030).
> =

> My setup is:
> phyBOARD-WEGA-AM335x
> kernel: master with multiv7/omap2plus defconfig
> barebox: master with phycore-am335x image
> =

> Git bisecting lead to the DEBUG_RODATA change, which is now turned on
> for arm and arm64. Google brought up this thread:
> =

> http://www.spinics.net/lists/arm-kernel/msg511355.html
> =

> Which brought me to the bootm.c in barebox to check if there is enough
> space for decompression. I found the assumption of a compression factor
> of 4 also in the barebox. What puzzles me is that this assumption still
> holds true even for DEBUG_RODATA, at least for my case, though.
> With DEBUG_RODATA turned on, the compression ratio went up from 2.9 to
> 3.5. So my guess is that the kernel is relocating and barebox does not
> account for this case.

No, the kernel does not relocate itself. The problem is that the kernel
overwrites the device tree while zeroing the bss segment.

We setup this:

|--- space for uncompressed image ---||-- compressed image --||-- oftree --|

After uncompressing the kernel clears bss and has this:

| ----- uncompressed image ----------||--------- bss -------------|

so bss overlaps the device tree.

> Additionally I found some recommendations in
> git/kernel/Documentation/arm/Booting which I think should be taken
> into consideration for barebox.

I have my problems with these recommendations. The recommendation is to
put the image 32MiB into RAM. a multi_v7_defconfig already builds a 18MiB
image, so it's forseeable that 32MiB won't last very long.

Then the recommendation for placing the device tree and initrd is 128MiB
into RAM which can become very tight when the initrd is big.

These recommendations are written with multigigabyte memories in mind
and completely ignore that there are still small systems with a total of
32MiB of RAM.


That said, I currently have no better idea than to follow these
recommendations and wait until we hit the wall.
Another way would be to supplement the kernel image with the information
how big it will be after decompression. I have a draft patch for that,
but it doesn't work properly yet.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
