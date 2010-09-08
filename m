Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OtIoJ-0004df-A8
	for barebox@lists.infradead.org; Wed, 08 Sep 2010 11:27:27 +0000
Received: by wwb24 with SMTP id 24so8591414wwb.18
	for <barebox@lists.infradead.org>; Wed, 08 Sep 2010 04:27:25 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 8 Sep 2010 16:57:25 +0530
Message-ID: <AANLkTimF=u+DegrO+d2kvWyae6TWnwwz5Zo=HMwqwhrn@mail.gmail.com>
From: Gaurav Singh <gausinghnsit@gmail.com>
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
Subject: Mentor Inventra USB Contoller driver
To: barebox@lists.infradead.org

Hi all,
Was working on MUSB (Mentor Inventra conroller) gadget driver for
Barebox. Need to support DFU for my test board which has this
controller. Currently trying to figure out how to modify kernel code
which uses interrupts to a polling mode form. Was wondering if
developers have planned this device or not. I would be happy to
contibute once I'm done :)

Cheers
Gaurav Singh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
