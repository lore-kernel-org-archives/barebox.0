Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from aa002msb.fastweb.it ([85.18.95.81])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9BS1-0003Ua-0U
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 07:22:22 +0000
Received: from fw.selea.com (89.96.133.2) by aa002msb.fastweb.it (8.5.016.6)
	id 4D381D770657EB6B for barebox@lists.infradead.org;
	Mon, 11 Apr 2011 09:22:17 +0200
Received: from [192.168.100.217] (linux-xsj9.selea.lan [192.168.100.217])
	by fw.selea.com (Postfix) with ESMTP id 33D5533810E
	for <barebox@lists.infradead.org>;
	Mon, 11 Apr 2011 09:22:17 +0200 (CEST)
Message-ID: <4DA2AC28.3050802@selea.com>
Date: Mon, 11 Apr 2011 09:22:16 +0200
From: Omar Pighi <pighi@selea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: imx25 3 stack problem
To: barebox@lists.infradead.org

Hi,

I downloaded the last version of barebox and using the tolchain
downloaded from pengutronix (not the last one).
i compiled with ARCH=arm and CROSS_COMPILER=....
i configured it with make menuconfig
than make
put it on the nand flash using the ATK toolkit.
try to boot (from NAND flash )but nothing happen....
the hardware is working because if i do the same with the u-boot
included with the BSP from freescale it works fine.
reading the mailing list a lot of people is using barebox on imx25 , so
it is my fault.... but what i can check? to fix it?

Thanks
Omar




-- 
Dott. Ing. Omar Pighi
R&D Selea s.r.l.
Via A.Moro 69
46015 Cicognara (MN)
ITALY
tel +39-0375-889091
fax +39-0375-889080
web:www.selea.com


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
