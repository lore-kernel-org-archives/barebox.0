Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcpFv-0006hq-BS
 for barebox@lists.infradead.org; Sun, 24 May 2020 11:57:29 +0000
Received: from vsmx004.vodafonemail.xion.oxcs.net (unknown [192.168.75.198])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTP id 00944F3511A
 for <barebox@lists.infradead.org>; Sun, 24 May 2020 11:57:14 +0000 (UTC)
Received: from [192.168.178.23] (unknown [95.156.214.119])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTPA id B69C619AE72
 for <barebox@lists.infradead.org>; Sun, 24 May 2020 11:57:10 +0000 (UTC)
From: Giorgio <giorgio.nicole@arcor.de>
Message-ID: <69ca4999-4cf0-f20a-5d7a-93e470338bf4@arcor.de>
Date: Sun, 24 May 2020 13:57:08 +0200
MIME-Version: 1.0
Content-Language: en-US
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
Subject: configure the mac address of an eth device
To: Barebox List <barebox@lists.infradead.org>

Hi,

I'm working with an arm som with an imx7d soc on it.
The som also has an eeprom with some module specific manufacturer parameters
like two MAC address, for eth0 and eth1, a module description string or a module
serial number.
I've now added some code to my board.c to extract the strings from the eeprom and now
I need to actually configure the MAC addresses from them, to avoid barebox choose
random ones when it needs the eth's.

What is the proper way to do this ?

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
