Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from www.webware-experts.de ([80.78.166.106])
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8w2R-0002sG-Q9
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 16:31:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by www.webware-experts.de (Postfix) with ESMTP id 988C61B630A0
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 18:31:35 +0200 (CEST)
Received: from www.webware-experts.de ([127.0.0.1])
 by localhost (webwarexs.private [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xjr13Ix2mvI5 for <barebox@lists.infradead.org>;
 Tue,  4 Sep 2012 18:31:35 +0200 (CEST)
Received: from [192.168.3.131] (p57bb9164.dip0.t-ipconnect.de [87.187.145.100])
 by www.webware-experts.de (Postfix) with ESMTPSA id 44B341B63095
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 18:31:35 +0200 (CEST)
Message-ID: <50462CE6.10607@webware-experts.de>
Date: Tue, 04 Sep 2012 18:31:34 +0200
From: Norbert Roos <nroos@webware-experts.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: MLO doesn't work, rest is ok
To: barebox@lists.infradead.org

Hello,

I just wanted to try the freshly generated MLO and barebox.bin on my 
Phytec PCM049 board (OMAP4 based). Copied both files to the FAT 
partition on the SD card.

Unfortunately it doesn't boot, after trying to boot from SD card the ROM 
boot loader oviously skips to booting from UART.

When i replace the MLO with a different one (downloaded a compiled one), 
my generated barebox.bin gets loaded and everything's fine.

Is there a simple way for debugging it? It seems like the MLO does not 
get executed, as the ROM boot skips to UART boot...

bye
Norbert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
