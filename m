Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.morganschaffer.com ([207.115.108.90]
 helo=MSI-01-S01.MSI.Local)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XpLra-0002bb-69
 for barebox@lists.infradead.org; Fri, 14 Nov 2014 18:44:55 +0000
From: "Balasa, Bogdan" <BBalasa@Morganschaffer.com>
Date: Fri, 14 Nov 2014 18:44:30 +0000
Message-ID: <4C598A31AEBE214FB619D7F2DC3BD8AB013B08B107@MSI0E01.MSI.Local>
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
Subject: bareboxenv-target
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I'm using barebox 2014.11.0, kernel 3.14 on phyFlex imx6 and when loading barebox environment from userspace I get a wrong magic:
-------
./bareboxenv-target -l /mnt/bbox /dev/mtd1
envfs: wrong magic
-------
root@imx6q-pbab01:~# cat /proc/mtd
dev:    size   erasesize  name
mtd0: 00400000 00020000 "barebox"
mtd1: 00020000 00020000 "barebox-environment"
mtd2: 00800000 00020000 "kernel"
mtd3: 3f3e0000 00020000 "root"
mtd4: 01000000 00010000 "spi2.0"
-----

I have the barebox environment in NOR flash and I think is good since I can modify it and save it with the barebox menu.


Thank you,
Bogdan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
