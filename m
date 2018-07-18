Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffml5-0007zL-2i
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 13:44:49 +0000
Date: Wed, 18 Jul 2018 15:44:32 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180718134432.2zs5s2nvmqjphqqz@pengutronix.de>
References: <CAPPP46SniSuaZPfHGgb3YyvwDsW2jz6UwXLaNP5XL1PbF8_eWg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPPP46SniSuaZPfHGgb3YyvwDsW2jz6UwXLaNP5XL1PbF8_eWg@mail.gmail.com>
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
Subject: Re: qemu and barebox
To: Giuseppe Levi <giuseppe.levi@gmail.com>
Cc: barebox@lists.infradead.org

Hi Giuseppe,

this was discussed recently; see
https://www.mail-archive.com/barebox@lists.infradead.org/msg27074.html

tldr: there are issues with QEMU and ARM64, and no solution yet.

 - Roland

On Wed, Jul 18, 2018 at 03:02:48PM +0200, Giuseppe Levi wrote:
> Hi all,
> i'm trying to run barebox using qemu because I need to develop and
> emulate a spacial boot configuration of the CERN White Rabbit switch
> (http://white-rabbit.web.cern.ch/).
> I used  the ARCH=arm
> and CROSS_COMPILE=aarch64-linux-gnu-
> 
> Selected the qemu virt board in menuconfig.
> 
> Compilation seems ok but when trying
> qemu-system-aarch64 -m 2048M -cpu cortex-a57 -machine virt -display
> none -serial stdio -kernel barebox
> 
> The system does not give me any output eve if is running using 100% of
> one core on my 4 core machine.
> 
> The final goal would be to setup barebox to boot from network and then
> arrange a bootp server un another virtual machine.
> 
> What I'm doing wrong ? is the CPU type cortex-a57 correct even if in
> menuconfig the type is market as Atemel-AT91 ?
> 
> 
> 
> Thenks, Giuseppe Levi

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
