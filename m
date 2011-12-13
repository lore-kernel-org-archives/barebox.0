Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaPt3-0004Le-8H
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 10:47:07 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
 <20111213092147.GC27267@pengutronix.de>
Date: Tue, 13 Dec 2011 11:46:55 +0100
In-Reply-To: <20111213092147.GC27267@pengutronix.de> (Sascha Hauer's message
 of "Tue, 13 Dec 2011 10:21:47 +0100")
Message-ID: <87zkewycio.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] drivers/mtd: add a core
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> So if no protests from other side come we can:
>
> - git mv drivers/mtd/nand/nand.c drivers/mtd/core.c
> - replace the oob device with the data+oob device
> - apply whatever other fixes you need
Sure, that would be great.
If no one complains in the next 5 days, I'll provide a V2 of the patch doing it
your way :
 - patch1: move nand.c into core.c
 - patch2: convert all existing nand devices to core.c (ie. add_mtd_device)
   *Warning* The device will be named "/dev/mtd<N>" and not "/dev/nand<N>". This
   can break things, especially if legacy board code relies on the "nand" device
   naming. Solutions:
     (a) Add a parameter to add_mtd_device: add_mtd_device(struct mtd_info *mtd,
     char *basename)
         => if basename == NULL, then use "mtd"
         => if basename != NULL, use basename for device name
     (b) Create a specialized add_nand_device()
     (c) Convert all legacy boards from "nand" to "mtd"
 - patch3: amend core.c to bring in the device+oob function

Does it look good to you ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
