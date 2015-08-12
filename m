Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tilbrook.insync.tv ([188.122.33.11] helo=mail.insync.tv)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZPU62-00071w-Uf
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 11:21:27 +0000
Received: from [192.168.1.11] by mail.insync.tv with esmtp (Exim 4.80)
 (envelope-from <dave.kitchen@insync.tv>) id 1ZPU5h-0003A3-A6
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 12:21:05 +0100
Message-ID: <55CB2C1C.4000002@insync.tv>
Date: Wed, 12 Aug 2015 12:21:00 +0100
From: Dave Kitchen <dave.kitchen@insync.tv>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: MTD with non-power-of-2 page size
To: barebox@lists.infradead.org


I have just started to work with barebox on an Atmel at91sam9g45 processor.
The board has an Atmel AT45DB161 dataflash configured as 528-byte page size.
I find that eg saveenv command does not run as the page erase fails with 
EINVAL. On tracing this is fired from the page size and offset 
correction code [mtd/core,c mtd_erase_align()] which uses bit masking to 
align the size and offset. Unfortunately bit-masking does not work with 
non-power-of-2 pages. Has anyone else addressed this problem?

The 'trivial' exercise of replacing the bit masks by modulo [%] operator 
does not succeed as the compiler I am using (gcc!) does not support 
long-long divmod.

Regards
Dave Kitchen
InSync technology Ltd


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
