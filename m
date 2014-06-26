Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0Gki-0001w2-GH
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 20:58:41 +0000
Received: from [192.168.2.107] ([79.211.173.179]) by smtp.web.de (mrweb101)
 with ESMTPSA (Nemesis) id 0MhDYL-1XMcxL1J4L-00MNY4 for
 <barebox@lists.infradead.org>; Thu, 26 Jun 2014 22:58:14 +0200
Message-ID: <53AC8965.4020806@web.de>
Date: Thu, 26 Jun 2014 22:58:13 +0200
From: =?ISO-8859-15?Q?Stefan_M=FCller-Klieser?= <stefan.mueller-klieser@web.de>
MIME-Version: 1.0
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
Subject: AM335x NAND
To: barebox@lists.infradead.org

Dear list,

I am working on TI's AM335x SoCs and want to add support for the missing
NAND controller features in the driver. As the NAND interface of the
barebox is not in sync with the kernel, it is difficult for me to decide
which way to go. Is there already work going on to update the barebox
NAND driver? I suppose the barebox nand_omap_gpmc is a port of the
u-boot NAND driver. So, should I port the features from the u-boot
driver into barebox, e.g. ELM and HW BCH16 support, or are there
different plans from the maintainer?

Kind regards, Stefan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
