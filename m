Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.icid.cu ([200.55.133.90])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOBLX-0004Uh-HT
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 19:31:15 +0000
Received: from icid.cu ([10.10.0.3])
 by mail.icid.cu (8.13.8/8.13.8) with ESMTP id s2DJBQMi028908
 for <barebox@lists.infradead.org>; Thu, 13 Mar 2014 15:11:26 -0400
Received: from [10.10.8.78] by icid.cu
 (Cipher TLSv1:RC4-MD5:128) (MDaemon PRO v9.6.1)
 with ESMTP id md50007095224.msg
 for <barebox@lists.infradead.org>; Thu, 13 Mar 2014 13:45:37 -0500
Message-ID: <532207C7.9020206@icid.cu>
Date: Thu, 13 Mar 2014 15:32:23 -0400
From: raespi <raespi@icid.cu>
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
Subject: problem booting with Micron MT29F8G08ABABAWP ...
To: barebox@lists.infradead.org

Hi ... I'm using barebox 2014.02.0 to boot with a clone of the mini2440 
board using the MT29F8G08ABABAWP NAND.

I'm getting the following error:

barebox 2014.02.0 #1 Thu Mar 13 15:28:57 CDT 2014

Board: <NULL>
nand: ONFI param page 0 valid
nand: ONFI flash detected
nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0x38 (Micron 
MT29F8G08ABABAWP), 1024
nand: No oob scheme defined for oobsize 224
BUG: failure at drivers/mtd/nand/nand_base.c:3357/nand_scan_tail()!
BUG!
no stack data available
DIVN_UPLL0
MPLLVal [M:61h,P:1h,S:2h]
CLKDIVN:7h

After this poing the board gets resetted back to the original point.  I 
can never get to the barebox prompt.

Any ideas on how to fix this ??

Thanks in advance ...


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
