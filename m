Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from susu.bendor.com.au ([203.16.199.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ps5u6-0006FG-KM
	for barebox@lists.infradead.org; Wed, 23 Feb 2011 04:00:43 +0000
Received: from localhost (localhost [127.0.0.1])
	by susu.bendor.com.au (Postfix) with ESMTP id 68F097A8
	for <barebox@lists.infradead.org>; Wed, 23 Feb 2011 15:00:37 +1100 (EST)
Date: Wed, 23 Feb 2011 15:00:37 +1100 (EST)
From: <zoltan@bendor.com.au>
In-Reply-To: <1298409650-28408-3-git-send-email-jbe@pengutronix.de>
Message-ID: <Pine.LNX.4.31.1102231440230.20973-100000@susu.bendor.com.au>
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
Subject: Re: [PATCH 2/2] mini2440: Consider correct NAND page size for boot.
To: barebox@lists.infradead.org

On Tue, 22 Feb 2011, Juergen Beisert wrote:

> From: Juergen Beisert <juergen@kreuzholzen.de>
>
> When booting from NAND, its important to know the correct page size.

Isn't that info available as soon as SteppingStone sucked in the first 4K
into the internal SRAM?

As far as I can follow the s3c2440 manual, bit 0 and the read-only bits 1
to 3 of the NFCONF register convey that information and these bits are set
by sampling a few GPIO (NCON and GPG13-GPG15) pins at reset. Supposedly
these pins are pulled up/low during reset so that SteppingStone itself can
read the boot code from the NAND.

What am I missing?

Zoltan


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
