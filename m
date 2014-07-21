Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from alcapone.vm.bytemark.co.uk ([89.16.173.107])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9GEV-00030C-2c
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 16:14:36 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by alcapone.vm.bytemark.co.uk (Postfix) with ESMTP id DCADA1645A5
 for <barebox@lists.infradead.org>; Mon, 21 Jul 2014 17:13:40 +0100 (BST)
Received: from alcapone.vm.bytemark.co.uk ([127.0.0.1])
 by localhost (alcapone.vm.bytemark.co.uk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iFmwe8xdfV87 for <barebox@lists.infradead.org>;
 Mon, 21 Jul 2014 17:13:38 +0100 (BST)
Received: from mail.sadel.it (2-228-226-244.ip193.fastwebnet.it
 [2.228.226.244])
 by alcapone.vm.bytemark.co.uk (Postfix) with ESMTP id B2143164181
 for <barebox@lists.infradead.org>; Mon, 21 Jul 2014 17:13:34 +0100 (BST)
Received: from ASSP.nospam (localhost [127.0.0.1])
 by mail.sadel.it (Postfix) with ESMTPA id 8C24E9D7AB
 for <barebox@lists.infradead.org>; Mon, 21 Jul 2014 18:13:25 +0200 (CEST)
From: Matteo Fortini <matteo.fortini@gmail.com>
Date: Mon, 21 Jul 2014 18:13:25 +0200
Message-Id: <assp.0279be7d12.1405959207-21839-1-git-send-email-matteo.fortini@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH V3] sama5d3x: fix HSMC MODE register offset and add TIMINGS
 register
To: barebox@lists.infradead.org

As we discussed on the list, I used a single struct and two different config functions

[PATCH 1/2] sama5d3x: fix HSMC MODE register offset and add TIMINGS
[PATCH 2/2] sama5d3x: HSMC NAND initialize TIMINGS and import values

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
