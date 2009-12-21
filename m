Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ey-out-1920.google.com ([74.125.78.150])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NMgdM-0007ir-R6
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 11:41:09 +0000
Received: by ey-out-1920.google.com with SMTP id 4so50936eyg.26
	for <barebox@lists.infradead.org>; Mon, 21 Dec 2009 03:41:02 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <alpine.LFD.2.00.0912210615350.13305@localhost>
	<20091221113052.GG15126@pengutronix.de>
Date: Mon, 21 Dec 2009 12:40:59 +0100
In-Reply-To: <20091221113052.GG15126@pengutronix.de> (Sascha Hauer's message
	of "Mon, 21 Dec 2009 12:30:52 +0100")
Message-ID: <87hbrkzh9w.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH] commands: Remove reference to non-existent CONFIG_CMD_I2C.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

 Sascha> Ok, applied.

 Sascha> Is a i2c command really useful? For I2C eeproms you would
 Sascha> create an epprom driver which creates a file under /dev/ which
 Sascha> you can then access using the usual mm/mw commands.  Maybe an
 Sascha> i2c command could be useful to register a new device on an I2C
 Sascha> bus.

I could see basic I2C access being useful for debugging (of non-eeprom devices).

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
