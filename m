Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f220.google.com ([209.85.219.220])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NMgqY-0003jf-LO
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 11:54:47 +0000
Received: by ewy20 with SMTP id 20so2045047ewy.20
	for <barebox@lists.infradead.org>; Mon, 21 Dec 2009 03:54:40 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <alpine.LFD.2.00.0912210615350.13305@localhost>
	<20091221113052.GG15126@pengutronix.de>
	<87hbrkzh9w.fsf@macbook.be.48ers.dk>
	<alpine.LFD.2.00.0912210643010.14007@localhost>
Date: Mon, 21 Dec 2009 12:54:38 +0100
In-Reply-To: <alpine.LFD.2.00.0912210643010.14007@localhost> (Robert
	P. J. Day's message of "Mon, 21 Dec 2009 06:47:48 -0500 (EST)")
Message-ID: <87d428zgn5.fsf@macbook.be.48ers.dk>
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
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

>>>>> "Robert" == Robert P J Day <rpjday@crashcourse.ca> writes:

Hi,

 >> I could see basic I2C access being useful for debugging (of
 >> non-eeprom devices).

 Robert>   i was imagining the same thing, but since there's no such
 Robert> support at the moment, there's little value in leaving that
 Robert> config variable there.

Agreed.

 Robert>   personally, i'd rather that didn't happen, just because it's
 Robert> easier to track paches if they're logically complete and
 Robert> coherent.  in short, when the time comes to add an "i2c"
 Robert> command, we can put everything back in in one patch.  sound
 Robert> reasonable?

Sure.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
