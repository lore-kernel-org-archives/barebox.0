Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x231.google.com ([2a00:1450:400c:c00::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7OzZ-0001L0-77
 for barebox@lists.infradead.org; Thu, 08 Aug 2013 12:06:57 +0000
Received: by mail-wg0-f49.google.com with SMTP id y10so1666888wgg.28
 for <barebox@lists.infradead.org>; Thu, 08 Aug 2013 05:06:35 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 8 Aug 2013 14:06:35 +0200
Message-ID: <CACbe1ruEr6tyuYpWqmt+meJbRyEfkb7vD5t7fmX7NB0gB64c3Q@mail.gmail.com>
From: Pawel Suchanecki <pawel.suchanecki@gmail.com>
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
Subject: barebox-2013.07/08.0 works from RAM but fails from NAND (Mini2440)
To: barebox@lists.infradead.org

Dear list & developers,

My barebox works (I get barebox prompt and can boot from there) when
loaded to ram by (super)vivi but does not when I flash it to NAND.

Barebox does not output anything to the console. It also fails using
"friendlyarm_mini2440_defconfig". It behaves the same in 2013.07.0 and
2013.08.0.

Please direct me: where can I look for the misconfiguration? What did
I do wrong?

Thanks,
Pawel.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
