Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSiKe-0003GE-Q4
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 12:23:30 +0000
Date: Tue, 12 Jun 2018 14:23:08 +0200
From: David Jander <david@protonic.nl>
Message-ID: <20180612142308.4a048a14@erd980>
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
Subject: Device-tree node renames break barebox/kernel compatibility...
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>, Barebox List <barebox@lists.infradead.org>, Marco Franchi <marco.franchi@nxp.com>, Shawn Guo <shawnguo@kernel.org>


Hi Sascha,

I know this is old already, and I was surprised that I couldn't find any
complaints about this yet, but I recently came across this patch in the kernel:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=df5cc9d0b42d15fa33b30440cca7a11ca7ba35a4

...which was adopted in barebox as this:

https://git.pengutronix.de/cgit/barebox/patch/dts/src/arm/imx6qdl.dtsi?id=2e9cce8fb1f577088e2b20ae2f461130e13ad190

As I don't know the exact reason as to why this was necessary, or why this is
an issue at all, I just wanted to point out the fact that this leads to some
breakage in barebox new and old. The sensible code comes from u-boot
originally so maybe it is there where blame is to be found, but I can't find
this code on latest u-boot anymore...

The specific problem I observed is here:
https://git.pengutronix.de/cgit/barebox/tree/net/eth.c#n299

But I guess this can cause other similar problems elsewhere... If you agree
that all these potential places are broken, I'd like to know what the correct
fix should be and I'd be happy to submit patches.

The thing is: barebox has its own device-tree but nevertheless should patch
the devicetree of any given Linux kernel to boot. In the aforementioned piece
of code, barebox will identify an ethernet node by its full DT-path from it's
own device tree (!) and associate a MAC address with that device. Later, when
a kernel (+ its DT) is loaded, that DT is fixed-up with the MAC address saved
earlier by searching for the ethernet node by full DT-path name.
Due to the above patches, these path names (which in theory should be
immutable, since the ethernet device is still connected to the same instance
of the same bus at the same physical address) just happen to be different
between different versions of the kernel and the bootloader. This is awful,
because now old bootloaders cannot load newer kernels and newer bootloaders
cannot load older kernels... again!

I still hope that someone tells my that my board code is broken and that I
should not do things like this to start. If not, how should this issue be
solved?

Best regards,

-- 
David Jander
Protonic Holland.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
