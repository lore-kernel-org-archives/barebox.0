Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from h51baff8c.k3918.sta.perspektivbredband.net ([81.186.255.140]
	helo=fg-dc1.flatfrog.local)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PG6Sn-0001Bb-5f
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 08:55:29 +0000
Message-ID: <4CDA5DF9.7050906@flatfrog.com>
Date: Wed, 10 Nov 2010 09:55:21 +0100
From: Orjan Friberg <of@flatfrog.com>
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
Subject: BeagleBoard sdrc init writes reserved values
To: barebox@lists.infradead.org

In sdrc_init in board-beagle.c both

         writel(0x1A, SDRC_REG(SYSCONFIG));

and

         writel(0x18, SDRC_REG(SYSCONFIG));

sets bits 4:3 in the IDLEMODE field.  The OMAP3 TRM (spruf98k) defines 
0x2 as the only valid value for this field, all others being marked as 
"reserved - do not use".  board-omap3evm.c does the same thing, 
board-sdp343x.c does not.

Anyone knows where these settings come from?  Derived from an older 
version of the TRM?  (I'm thinking there may have been a feature that 
was discovered to be unreliable or not working as intended so it was 
removed from the docs.)

Thanks,
Orjan


-- 
Orjan Friberg
FlatFrog Laboratories AB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
