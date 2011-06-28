Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from b-pb-sasl-quonix.pobox.com ([208.72.237.35] helo=smtp.pobox.com)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qbb4N-00043o-E0
	for barebox@lists.infradead.org; Tue, 28 Jun 2011 16:23:24 +0000
Message-ID: <4E09FFF6.8020603@pobox.com>
Date: Wed, 29 Jun 2011 01:23:18 +0900
From: Shinya Kuribayashi <skuribay@pobox.com>
MIME-Version: 1.0
References: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
	<1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
	<20110628051134.GN17355@game.jcrosoft.org>
	<BANLkTim9Dx3uuE-3v33PdmpSpv9K30zhcA@mail.gmail.com>
	<20110628132907.GP17355@game.jcrosoft.org>
In-Reply-To: <20110628132907.GP17355@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/2] Add MIPS arch support to barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Thanks Jean for bringing up old stuff :-), and nice to see the first
(workable) MIPS port of barebox this time, Antony.

>> Is it runnable at all?

Not at all, unfortunately.

>> I think, that Shinya's concepts can be used in the future, but they
>> are very complex for initial mips support.
>>
>> IMHO, the Shinya's code is redundant (>  200K ) --- initial support
>> must be as small as possible.

I didn't care about code size, complexity, workable or not (ok, this is
important) when I was working on it.  What did care about is its boot
design.Having a glance at your head.S, compute_offset part looks good.
That's a part of what I have in mind, and implemented as ADR macro in
my prototype.

I'll write a lot more some other day.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
