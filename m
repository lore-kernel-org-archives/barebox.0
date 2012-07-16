Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqZqZ-0004wq-E5
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 01:11:41 +0000
Received: by pbbrq13 with SMTP id rq13so10398101pbb.36
 for <barebox@lists.infradead.org>; Sun, 15 Jul 2012 18:10:08 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 16 Jul 2012 11:04:54 +1000
Message-Id: <1342400699-6753-1-git-send-email-marc@cpdesign.com.au>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Various patches for imx35, fec, at24 driver and misc
To: barebox@lists.infradead.org

Hi,

I've been meaning to submit these for quite a while.

Patch 1 allows setting eth MAC address from alternate source, eg, eeprom
Patch 2 & 3 correct clock divider for mmc
Patch 4 adds an at24 eeprom driver alongside existing at25 driver.
Patch 5 adds a misc driver for a digital potentiometer.

Patches were generated against next.

Cheers,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
