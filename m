Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4g8F-0001Bj-8v
 for barebox@lists.infradead.org; Fri, 04 Dec 2015 02:29:59 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 4 Dec 2015 02:28:40 +0000
Message-ID: <1449196125.26955.13.camel@rtred1test09.kymeta.local>
References: <1449105900.26955.1.camel@rtred1test09.kymeta.local>
In-Reply-To: <1449105900.26955.1.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <3DA14F4B7569D04EA37CF3E7B28C6026@kymetacorp.com>
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
Subject: Re: [PATCH] ARM: Remove kernel booting call for thumb2 mode
To: barebox <barebox@lists.infradead.org>

On Thu, 2015-12-03 at 01:24 +0000, Trent Piepho wrote:
> The asm code to do the actual call into the kernel (or another
> barebox) when compiled in thumb2 mode isn't necessary.  gcc generates
> a perfectly good calling sequence from a normal function pointer call.
> If it didn't, the code in bootstrap_boot() that uses a function
> pointer to jump to the 2nd stage barebox from an xloader wouldn't
> work.

The same commit that originally added this code also added
thumb2_execute(), which is used by the go command in a thumb2 build.

This doesn't seem necessary for the same reason as the code in
start_linux.  THUMB2 selects AEABI, which in turn turns on the aapcs
abi, which requires interworking safe indirect calls.  And again, the
bootstrap code doesn't use a special call sequence so if it didn't work
that would be broken too.

The code for thumb2_execute() is also odd in that it subtracts one from
argc, drops the 1st argv entry, and supplies zero for the first function
argument.  I.e., "go" in arm mode (and all non-arm arches) does this:
	func(argc - 1, &argv[1]);
and in thumb2 mode does this:
	func(0, argc - 2, &argv[2]);

I don't see why one would want this difference.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
