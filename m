Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OevbK-0002tC-9e
	for barebox@lists.infradead.org; Fri, 30 Jul 2010 19:50:39 +0000
Received: by wyb32 with SMTP id 32so1724925wyb.36
	for <barebox@lists.infradead.org>; Fri, 30 Jul 2010 12:50:36 -0700 (PDT)
Message-ID: <4C532D05.7020407@dawes.za.net>
Date: Fri, 30 Jul 2010 21:50:29 +0200
From: Rogan Dawes <rogan@dawes.za.net>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Porting to Marvell 88F5182?
To: barebox@lists.infradead.org

Hi folks,

I am trying to get a decent boot loader running on my DLink DNS323. It 
was shipped with a severely crippled version of U-Boot, forked from 
U-Boot 1.1.1, and heavily bastardized by Marvell.

Recently, Albert Aribaud has added support for this chipset in U-Boot 
master for his LaCie ED MiniV2, which is based on the same SoC, and I am 
now trying to get my DLink DNS323 to work as well.

I have managed to get just about everything to work, except for the 
flash part, a Spansion S29GL064M90TFIR4 device. Unfortunately, there 
seems to be some strange connections going on, and the standard U-Boot 
CFI code does not recognise it.

I see that there has been a lot of changes to the BareBox CFI code since 
it was forked from U-Boot 1.2.0, and I was wondering if maybe that code 
would be more successful.

So, the question then:

Given a working board definition in U-Boot master for an ARM926EJ-S 
based Soc, how difficult is it to port this to current BareBox master?

Thanks!

Rogan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
