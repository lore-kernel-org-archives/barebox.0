Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from alcapone.vm.bytemark.co.uk ([89.16.173.107])
 by casper.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WsqF8-0000La-FV
 for barebox@lists.infradead.org; Fri, 06 Jun 2014 09:15:23 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by alcapone.vm.bytemark.co.uk (Postfix) with ESMTP id 5D391164598
 for <barebox@lists.infradead.org>; Fri,  6 Jun 2014 10:14:34 +0100 (BST)
Received: from alcapone.vm.bytemark.co.uk ([127.0.0.1])
 by localhost (alcapone.vm.bytemark.co.uk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tdJwZoMwWGdo for <barebox@lists.infradead.org>;
 Fri,  6 Jun 2014 10:14:32 +0100 (BST)
Received: from mail.sadel.it (2-228-226-244.ip193.fastwebnet.it
 [2.228.226.244])
 by alcapone.vm.bytemark.co.uk (Postfix) with ESMTP id 2E205164494
 for <barebox@lists.infradead.org>; Fri,  6 Jun 2014 10:14:28 +0100 (BST)
Received: from ASSP.nospam (localhost [127.0.0.1])
 by mail.sadel.it (Postfix) with ESMTPA id 046C99D6AF
 for <barebox@lists.infradead.org>; Fri,  6 Jun 2014 11:14:22 +0200 (CEST)
From: Matteo Fortini <matteo.fortini@gmail.com>
Date: Fri,  6 Jun 2014 11:12:14 +0200
Message-Id: <assp.0234105137.1402045936-18733-1-git-send-email-matteo.fortini@gmail.com>
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
Subject: [PATCH] sama5d3x HSMC NAND: MODE and TIMINGS registers
To: barebox@lists.infradead.org

As stated in section 29.19.35 of SAMA5D3 Series Datasheet,
MODE register has offset 0x10 while at offset 0x0C there is
a TIMINGS register.
This patch series adds the register and configures it for 
sama5d3xek using timings from U-Boot

[PATCH 1/2] sama5d3x: fix HSMC MODE register offset and add TIMINGS
[PATCH 2/2] sama5d3x: HSMC NAND initialize TIMINGS and import values

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
