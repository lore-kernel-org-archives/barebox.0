Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x230.google.com ([2607:f8b0:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqBbF-00067b-1O
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 03:36:18 +0000
Received: by mail-vk0-x230.google.com with SMTP id k1so52671046vkb.0
 for <barebox@lists.infradead.org>; Tue, 12 Apr 2016 20:35:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1460506588.9103.26.camel@rtred1test09.kymeta.local>
References: <1460506588.9103.26.camel@rtred1test09.kymeta.local>
Date: Tue, 12 Apr 2016 20:35:55 -0700
Message-ID: <CAHQ1cqH78JnvYEcRVWJX_s6aSDn_1L+nurtu0L5bofPyHkNLQQ@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: Barebox on small memory systems
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

> In order to get an image file out of flash and programmed into the FPGA,
> it's useful to have a number of barebox drivers, like the MCI system,
> partition table parsing, FAT filesystem, etc.  Basically getting the
> full barebox (with a minimal set of drivers, e.g. no shell) running
> without having SDRAM access.
>
> So can one run barebox in 256 Kb?

I was able to do it, although in a different, but IMHO comparable
configuration. My use-case was running bare minimum Barebox _with_ the
shell and UART driver, sans everything else out of IRAM (256kB) on
i.MX6Q (the users wanted to be able to tweak DDR controller's
configuration at runtime via BB console interface). If memory serves
me well after system booted I had about 50kB or RAM to spare(although
I don't know what the peak usage was during boot process)

>
> A minimal config of a non-PBL non-relocatable barebox with the necessary
> features is only about 54 Kb.  So that certainly fits.  But that doesn't
> include stack, heap, bss, etc.  Can a stripped down barebox actually run
> in 256 Kb and mount a FAT filesystem to get a next stage bootloader?

The image I was building was indeed a non-PBL non-relocatable variant,
however I had to do three further modifications:

- Disable MMU, becuase just the page table alone in my case would take
about 1MB or space
- Create a stripped down .dts that didn't include Kernel's .dts and
contained only bare minimum
- Apply the following patch to avoid copying device tree blob and
process it in-place instead

From 3f9b5b2631de9fa5a270012c09e18a145946e728 Mon Sep 17 00:00:00 2001
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 8 Nov 2015 16:39:42 -0800
Subject: [PATCH] arm/cpu/start.c: Avoid copying device-tree when possible

In case of non-relocatable image device-tree blob should already be
preloaded into memory as a part of Barebox binary upload, so there is
no need to 'memcpy' it again

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/start.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index e037d91..7489014 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -179,8 +179,17 @@ __noreturn void barebox_non_pbl_start(unsigned
long membase,
  const char *name;

  if (blob_is_fdt(boarddata)) {
- totalsize = get_unaligned_be32(boarddata + 4);
- name = "DTB";
+ if (!IS_ENABLED(CONFIG_RELOCATABLE)
+    && !IS_ENABLED(CONFIG_PBL_IMAGE)) {
+ /*
+  If Barebox is not relocatable
+  there's no need to move data around
+ */
+ barebox_boarddata = boarddata;
+ } else {
+ totalsize = get_unaligned_be32(boarddata + 4);
+ name = "DTB";
+ }
  } else if (blob_is_compressed_fdt(boarddata)) {
  struct barebox_arm_boarddata_compressed_dtb *bd = boarddata;
  totalsize = bd->datalen + sizeof(*bd);
-- 
2.5.5

Hope this helps.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
