Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxAQD-0007Lv-UC
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 06:32:10 +0000
Date: Thu, 11 Jul 2013 08:31:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130711063147.GD14452@pengutronix.de>
References: <1373439641-18852-1-git-send-email-shc_work@mail.ru>
 <20130710125236.GE29932@pengutronix.de>
 <20130710131618.GF516@pengutronix.de>
 <1373469195.50797428@f66.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373469195.50797428@f66.mail.ru>
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
Subject: Re: [PATCH 1/3] ARM: Add "verbose" parameter for start_linux procedure
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Jul 10, 2013 at 07:13:15PM +0400, Alexander Shiyan wrote:
> > On Wed, Jul 10, 2013 at 02:52:36PM +0200, Michael Olbrich wrote:
> > > On Wed, Jul 10, 2013 at 11:00:39AM +0400, Alexander Shiyan wrote:
> > > > This patch will make a normal booting more silent.
> > > 
> > > Why? Booting the kernel is the most important task for barebox. Why
> > > shouldn't we see a few lines about what is actually happening here by
> > > default.
> > > 
> > > If you really want no output then introduce a 'quiet' option.
> > 
> > I think we really need different verbosity levels. standard would be
> > 
> > - print commandline
> > - print which kernel image is started
> > - print which devicetree (if any) is used
> > 
> > There's more I'd like to output optionally, but it's also interesting to
> > output less in some cases.
> 
> How many people have so many opinions.
> What we do with patch then?

For now I applied the following. This doesn't change anything in the
verbosity but should solve your actual problem.

The verbosity stuff needs a bit more thinking. Michael wants to be more
verbose by standard, because he is the one who has to guess what's going
wrong at our customers. I want to be more quiet optionally because less
console output means less boot time.

We could convert the meaning of the verbosity parameter could be one
of KERN_* with the standard to KERN_INFO. Then we could implement
everytging from quiet to chatty.

Sascha

8<--------------------------------------------------------

From 0e93a686675e89aa95bbfb68e1b7a2cc59c09aeb Mon Sep 17 00:00:00 2001
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 10 Jul 2013 11:00:40 +0400
Subject: [PATCH] ARM: Use armlinux_bootparams address for DTB

In some cases, the address of the devicetree, which is obtained
dynamically, may be located in the kernel text area, which leads
to overwrite devicetree by kernel. The patch uses the address for
devicetree, provided by board, if it possible.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 40a63ea..9176482 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -265,12 +265,21 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 	int architecture;
 
 	if (oftree) {
-		printf("booting Linux kernel with devicetree\n");
-		params = oftree;
+		if (armlinux_bootparams) {
+			struct fdt_header *header = oftree;
+
+			memcpy(armlinux_bootparams, oftree,
+					fdt32_to_cpu(header->totalsize));
+		} else {
+			armlinux_bootparams = oftree;
+		}
+
+		printf("booting Linux kernel with devicetree at 0x%p\n",
+				armlinux_bootparams);
 	} else {
-		setup_tags(initrd_address, initrd_size, swap);
-		params = armlinux_bootparams;
+		setup_tags(initrd_address, initrd_size, swap, verbose);
 	}
+
 	architecture = armlinux_get_architecture();
 
 	shutdown_barebox();
@@ -288,10 +297,10 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		"mov r2, %1\n"
 		"bx %2\n"
 		:
-		: "r" (architecture), "r" (params), "r" (kernel)
+		: "r" (architecture), "r" (armlinux_bootparams), "r" (kernel)
 		: "r0", "r1", "r2"
 	);
 #else
-	kernel(0, architecture, params);
+	kernel(0, architecture, armlinux_bootparams);
 #endif
 }
-- 
1.8.3.2

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
