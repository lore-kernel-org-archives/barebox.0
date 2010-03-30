Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f218.google.com ([209.85.218.218])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NwYGY-0001Nt-0C
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 10:01:50 +0000
Received: by bwz10 with SMTP id 10so14337387bwz.2
	for <barebox@lists.infradead.org>; Tue, 30 Mar 2010 03:01:44 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
	<1269855383-22716-2-git-send-email-s.hauer@pengutronix.de>
	<8739zjc6ci.fsf@macbook.be.48ers.dk>
	<20100330092024.GI2241@pengutronix.de>
Date: Tue, 30 Mar 2010 12:01:42 +0200
In-Reply-To: <20100330092024.GI2241@pengutronix.de> (Sascha Hauer's message of
	"Tue, 30 Mar 2010 11:20:24 +0200")
Message-ID: <87r5n2b01l.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH 01/12] ARM zImage: do memmap if possible
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

Hi,

 >> Here you're rereading the header as well, instead of everything past
 >> it like the normal case.

 Sascha> Yes, mostly because I was too lazy to calculate the offsets.

You could just have copied it from the line above ;)

 >> Does this give a significant boost? read() from something memmap'able
 >> (like NOR) boils down to a memcpy as well, right?

 Sascha> Hmm, with memmap it's 149ms and with read 156ms in my case. I
 Sascha> think this is because with memmap it goes down to a single
 Sascha> memcpy whereas with read we memcpy in chunks of 4k. I
 Sascha> implemented this out of reflex, but maybe it's really not worth
 Sascha> the added complexity.

I imho don't think it's worth it. One of barebox' big advantages is how
readable and clean the source code is.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
