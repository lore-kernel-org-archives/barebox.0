Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFzVX-0002Ks-Oe
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 10:38:25 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 64C802400FC
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 12:38:09 +0200 (CEST)
Date: Fri, 26 Oct 2018 12:38:07 +0200
From: Patrick Boettcher <patrick.boettcher@posteo.de>
Message-ID: <20181026123807.3f980f28@yaise-pc1>
In-Reply-To: <20181026102342.lhx6hpcnobqe2g4k@pengutronix.de>
References: <20181026120558.1ef80a86@yaise-pc1>
 <20181026102342.lhx6hpcnobqe2g4k@pengutronix.de>
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
Subject: Re: IMX6UL: Booting kernel with initramfs blocks
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Mikael Pann <Mikael.pann@stimio.fr>

Hi,

Thanks for your super fast answer.

On Fri, 26 Oct 2018 12:23:42 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > When trying to boot the image with bootm -o .. .. it takes some time
> > (to load I guess) and then blocks.  
> 
> Could you copy the image out from UBI to /somefile first to get UBI
> out of the equation first?

I copied 

  cp /dev/nand0.root.ubi.kernel-recovery test 
  md5sum test

The md5sum is identical with the one from my deploy dir.

Comparing the start of the zImage-initramfs file "manually" (some
bytes) with the zImage-image reveals that it is identical.

I'm using v2017.04.0-phy3 of phytec's fork of barebox, btw.
 
> Doing bootm -v -v might reveal some more information then.


  Loading ARM Linux zImage '/dev/nand0.root.ubi.kernel-recovery'
  OS image not yet relocated
  Passing control to ARM zImage handler
  no OS load address, defaulting to 0x888e1000
  no initrd load address, defaulting to 0x8a542000
  Loading devicetree from '/dev/nand0.root.ubi.oftree-recovery'
  Failed to fixup node in of_state_fixup+0x1/0x1ac: No such device
  commandline: consoleblank=0 console=ttymxc0,115200n8 rootwait ro fsck.repair=yes 
  {
    <device-tree dumped, looks good to me >
  };
 
  Starting kernel at 0x888e1000, oftree at 0x8a542000...
  nv variables modified, saving them
  <... blocks here ...>


--
Patrick.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
