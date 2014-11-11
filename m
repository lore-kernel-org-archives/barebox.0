Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.morganschaffer.com ([207.115.108.90]
 helo=MSI-01-S01.MSI.Local)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoIz2-0008TE-VK
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 21:28:17 +0000
From: "Balasa, Bogdan" <BBalasa@Morganschaffer.com>
Date: Tue, 11 Nov 2014 21:27:54 +0000
Message-ID: <4C598A31AEBE214FB619D7F2DC3BD8AB013B08AA97@MSI0E01.MSI.Local>
Content-Language: fr-FR
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
Subject: mtdparts phyFlex
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I am using barebox 2014.11.0 with phyFlex imx6 and when I add in '/env/init/mtdparts-nand'
to specify the size of different partitions:
----------------------------------------------------------------------------------------------
#!/bin/sh

if [ "$1" = menu ]; then
               init-menu-add-entry "$0" "NAND partitions"
               exit
fi

mtdparts="5M(nand0.oftree),10M(nand0.kernel),50M(nand0.root) "
kernelname="gpmi-nand"
mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
---------------------------------------------------------------------------------------------

at next power-up I get an error:

'cannot create nand0.oftree: File exists'

It seems like barebox adds  'nand0.oftree' before is specified by mtdparts-nand?!

Any help is appreciated.

Bogdan


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
