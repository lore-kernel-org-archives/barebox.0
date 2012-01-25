Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from oproxy4.bluehost.com ([2605:dc00:100:2::a4]
 helo=oproxy4-pub.bluehost.com)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rq9vk-00078K-Nq
 for barebox@lists.infradead.org; Wed, 25 Jan 2012 20:58:58 +0000
Received: from 173-161-179-205-philadelphia.hfc.comcastbusiness.net
 ([173.161.179.205] helo=[10.10.48.173])
 by host200.hostmonster.com with esmtpa (Exim 4.76)
 (envelope-from <dhlii@dlasys.net>) id 1Rq9vi-0004iI-Fm
 for barebox@lists.infradead.org; Wed, 25 Jan 2012 13:58:54 -0700
From: "David Lynch Jr." <dhlii@dlasys.net>
Date: Wed, 25 Jan 2012 15:58:53 -0500
Message-ID: <1327525133.19793.23.camel@hp-dhlii>
Mime-Version: 1.0
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
Subject: i.MX53 QSB
To: barebox@lists.infradead.org

I can build a barebox.bin for the i.MX53 QSB. 

If I am booting from the SD card how do I get it onto the card

dd if=barebox.bin of=/dev/sdc bs=512 seek=2 ??



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
