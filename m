Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo5.mail-out.ovh.net ([46.105.40.108]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWC0O-00005H-PR
 for barebox@lists.infradead.org; Mon, 22 Sep 2014 22:22:49 +0000
Received: from mail243.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 103A5FFA381
 for <barebox@lists.infradead.org>; Tue, 23 Sep 2014 00:22:23 +0200 (CEST)
Date: Tue, 23 Sep 2014 00:22:15 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20140923002215.06ad3304@e6520eb>
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
Subject: imx-image & i.MX35
To: barebox@lists.infradead.org

Hi,

I didn't manage to get an image to boot on i.MX35 (internal boot on
NAND) with current imx-image and 2014.09.0.

From the i.MX35 user manual :
Since MLC NAND Flash devices do not guarantee error-free boot blocks,
the i.MX35 boot code requires that the first 4 Kbytes of boot code be
duplicated in a subsequent block to serve as a second copy option.

Actually imx-image puts the image at 4k but it seems that the i.MX35
bootrom copies only from 8k as it expects that there is a copy of the
first 0-4k in 4k-8k (and is supposed to use this copy if there is an
ECC error in the first 4k) as we can see in the following lines :

barebox@Eukrea CPUIMX35:/  md -s /dev/nand0 0x0   
00000000: ea0003fe eafffffe eafffffe eafffffe                ................
00000010: eafffffe eafffffe eafffffe eafffffe                ................
00000020: 65726162 00786f62 00000000 00000000
barebox.........

=-> header is @ 0 in flash

barebox@Eukrea CPUIMX35:/  md -s /dev/nand0 0x1000
00001000: 56341200 00000000 0001eda1 00000000                ..4V............
00001010: 00000000 00000000 00000000
00000000                ................

=-> so we have data @ 0x1000 in flash

barebox@Eukrea CPUIMX35:/  md 0x87f00000
87f00000: 00000000 00000000 00000000 00000000                ................
87f00010: 00000000 00000000 00000000
00000000                ................

=-> but we don't find this data in RAM

barebox@Eukrea CPUIMX35:/  md -s /dev/nand0 0x2000
00002000: ea000012 eafffffe eafffffe eafffffe                ................
00002010: eafffffe eafffffe eafffffe eafffffe                ................
00002020: 65726162 00786f62 00000000 00034272
barebox.....rB..

=-> so we have the image @ 0x2000 in flash

barebox@Eukrea CPUIMX35:/  md 0x87f01000          
87f01000: ea000871 eafffffe eafffffe eafffffe                q...............
87f01010: eafffffe eafffffe eafffffe eafffffe                ................
87f01020: 65726162 00786f62 87f02000 0003b520                barebox.. .. ...

=-> and we find it in RAM

This patch fix the problem, how should this be hanled in imx-image ?

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 3a25c09..f908069 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -761,7 +761,7 @@ int main(int argc, char *argv[])
                exit(1);
        }
 
-       ret = xwrite(outfd, buf, 4096);
+       ret = xwrite(outfd, buf, 8192);
        if (ret < 0) {
                perror("write");
                exit(1);
@@ -774,7 +774,7 @@ int main(int argc, char *argv[])
        }
 
        while (image_size) {
-               int now = image_size < 4096 ? image_size : 4096;
+               int now = image_size < 8192 ? image_size : 8192;
 
                ret = xread(infd, buf, now);
                if (ret) {

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
