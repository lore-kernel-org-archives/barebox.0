Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQm7J-0004Jo-Lr
 for barebox@lists.infradead.org; Sat, 05 May 2012 21:02:14 +0000
Received: by yenr9 with SMTP id r9so1239492yen.36
 for <barebox@lists.infradead.org>; Sat, 05 May 2012 14:02:10 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 5 May 2012 23:02:10 +0200
Message-ID: <CAOQ7t2ZNu14D4Y3nDKxGVSAxp4gR9K-mDuN21fwXfNHwMiZ38w@mail.gmail.com>
From: Carlo Caione <carlo.caione@gmail.com>
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
Subject: barebox, omap3530_beagle_xload and qemu-linaro
To: barebox@lists.infradead.org

Hi,
I was trying to run barebox (omap3530_beagle_xload) under qemu-linaro
(-M beagle). This is what I get:

carlo@belfagor:~/projects/barebox-img$ qemu-system-arm -M beagle
-nographic -sd sd.img
qemu: fatal: Trying to execute code outside RAM or ROM at 0x00014080

R00=4020a5bf R01=4020a5bf R02=4020a5bf R03=4020a5bf
R04=4020ae70 R05=4020a5bf R06=400001d3 R07=ffffffff
R08=00000000 R09=ffffffff R10=00000000 R11=00000002
R12=4020be7c R13=402064b0 R14=40205c8c R15=00014080
PSR=200001db --C- A und32
Aborted (core dumped)

Using the original linaro images (with u-boot inside) everything works
well so I think the problem here is barebox.

Any idea?

Thank you,

--
Carlo

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
