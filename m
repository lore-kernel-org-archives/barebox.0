Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-112.126.com ([220.181.15.112])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TaMRV-0002Vk-Dc
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 08:11:00 +0000
Date: Mon, 19 Nov 2012 16:18:16 +0800
From: zzs <zzs213@126.com>
Message-ID: <20121119081815.GA8572@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: howto cp to flash
To: barebox <barebox@lists.infradead.org>

After download zbarebox.bin to /, I wrote it to flash

   tftp barebox.bin
   memcpy -b -s./zbarebox.bin -d/dev/nor0.root 0 0

Then I dump both:

# md -s /dev/nor0.root
00000000: ffffffff ffffffff ffffffff ffffffff                ................
00000010: ffffffff ffffffff ffffffff ffffffff                ................
00000020: ffffffff ffffffff ffffffff ffffffff                ................

# md -s ./zbarebox.bin
00000000: ea00000a eafffffe eafffffe eafffffe                ................
00000010: eafffffe 0000016c eafffffe eafffffe                ....l...........
00000020: 65726162 00786f62 23b00000 0002389c                barebox....#.8..

No contents in flash, Why?

Another question:

How can I get file size in script?

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
