Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOew-0006xx-MX
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 15:22:52 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iKOev-0007xo-CY
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 17:22:49 +0200
References: <20191015150842.pti6kze33kcsmrsm@reflex>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <729772a1-c869-5346-595a-3c0986e3f7f9@pengutronix.de>
Date: Tue, 15 Oct 2019 17:22:49 +0200
MIME-Version: 1.0
In-Reply-To: <20191015150842.pti6kze33kcsmrsm@reflex>
Content-Language: en-US
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
Subject: Re: setup for a working framebuffer in qemu
To: barebox@lists.infradead.org

Hello Denis,

On 10/15/19 5:08 PM, Denis Roio wrote:
> 
> hi all! noob question here, hope you don't mind
> 
> is there a recommended, matching configuration to run barebox in qemu
> with a working /dev/fb0 ?

Easiest way is to use barebox sandbox. It has a SDL fb driver.

> 
> 
> I have made some tries already with no success:
> 
> - qemu emulated mips-malta boots, but no fb0
> - qemu emulated vexpress boots, but no fb0

Could be that they don't have driver support in barebox.
Check under drivers/fb.

> - qemu emulated sabrelite can't even get it to boot

There's a CONFIG_BOARD_ARM_GENERIC_DT option that yields a barebox image
that boots like Linux does and can be passed to qemu's -kernel
option. The commit introducing it has some extra info on how to use
it with QEMU + sabrelite.
https://www.spinics.net/lists/u-boot-v2/msg38795.html

> 
> I'm a bit out of ideas. Would really appreciate guidance, this is
> mostly for fun while poking around this wonderful project.
> 
> 
> Thanks!
> 
> 


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
