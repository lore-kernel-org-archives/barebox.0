Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOrj8-00065Y-RW
 for barebox@lists.infradead.org; Wed, 25 Sep 2013 16:14:15 +0000
Received: by mail-wi0-f172.google.com with SMTP id hn9so5702640wib.5
 for <barebox@lists.infradead.org>; Wed, 25 Sep 2013 09:13:47 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 25 Sep 2013 11:13:47 -0500
Message-ID: <CAO-21LPRAQ_xwi4Pup4uaPKv-ZSxDxt_7OsCjAmPfkeX6p8+_g@mail.gmail.com>
From: "Allen Kennedy Jr." <allen@kennedystuff.com>
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
Subject: how to copy barebox to flash?
To: barebox@lists.infradead.org

All,
  How do I copy barebox to flash?
I have a flash device setup:
     `---- imx_nand
          `---- nand0
               `---- 0x00000000-0x0fffffff: /dev/nand0
               `---- 0x00000000-0x0001ffff: /dev/bootstrapper
               `---- 0x00020000-0x0005ffff: /dev/barebox
               `---- 0x00060000-0x0009ffff: /dev/env_raw
               `---- 0x00100000-0x005fffff: /dev/kernel

I used JTAG to load barebox into memory at 0xa0000000

I just can't figure out how to copy it to flash... There is no DD command...
I tried this:
cp 0xa0000000 /dev/barebox 0x4000
got :
cp: target `0x4000' is not a directory

Seems barebox changed what 'cp' is from the old u-boot way.
and the nand command only does bad block handling...

barebox-update seems to be a candidate, but the docs don't make sense
on how to use.
Also I was thinking something like md > /dev/nand, but the output of
MD is user readable.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
