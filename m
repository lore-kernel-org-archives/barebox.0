Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFIZ0-0001x3-QJ
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 07:24:27 +0000
Received: by mail-ee0-f43.google.com with SMTP id c41so6816132eek.2
 for <barebox@lists.infradead.org>; Sun, 16 Feb 2014 23:24:02 -0800 (PST)
Date: Mon, 17 Feb 2014 08:23:48 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140217072346.GA25895@omega>
References: <1392525650-5551-1-git-send-email-shc_work@mail.ru>
 <1392525650-5551-6-git-send-email-shc_work@mail.ru>
 <20140217070809.GJ17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140217070809.GJ17250@pengutronix.de>
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
Subject: Re: [PATCH 6/7] lib/math.c: Fix possible crash
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 17, 2014 at 08:08:09AM +0100, Sascha Hauer wrote:
> On Sun, Feb 16, 2014 at 08:40:49AM +0400, Alexander Shiyan wrote:
> > Crash can be caused if xzalloc() for "numstack" fails.
> 
> xzalloc doesn't fail.
> 
Some little offtopic to this issue:

I am falling sometimes in the same trap and then it reminds me "xzalloc
will occur a panic when internal malloc fails". In the world of barebox
we need to think a little bit different than in the world of linux. But
this is actually a behaviour what we don't want, we want to think in
linux way, when you programming barebox.

On the other hand, bootloader is a bootloader and need little code and
this reduce a many error branches of barebox so "xzalloc" is just a
great idea.

I want to mention that, Alexander is not alone. :-)

...maybe some codestyle checkers will detected this as a missing error
handling.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
