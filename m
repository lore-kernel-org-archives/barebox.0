Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S5jML-000318-HZ
 for barebox@lists.infradead.org; Thu, 08 Mar 2012 19:50:46 +0000
Received: by bkcjk13 with SMTP id jk13so900337bkc.36
 for <barebox@lists.infradead.org>; Thu, 08 Mar 2012 11:50:43 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  8 Mar 2012 23:50:26 +0400
Message-Id: <1331236232-32735-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC V2 0/6] barebox PCI support
To: barebox@lists.infradead.org

This patch series introduce PCI support to barebox.

Thanks to Jean-Christophe PLAGNIOL-VILLARD for reviewing and adding
some PCI common code.

The patches are draft. They need a very big future work, so I put on them "RFC"
title instead of "PATCH".

[RFC V2 1/6] PCI: initial commit (draft)
[RFC V2 2/6] MIPS: add file gt64120.h from linux 2.6.39
[RFC V2 3/6] MIPS: add PCI support for GT64120-based malta
[RFC V2 4/6] PCI: add draft lspci command
[RFC V2 5/6] net: add Realtek 8139 Ethernet controller support
[RFC V2 6/6] net: add DEC 21143 (tulip) Ethernet controller support

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
