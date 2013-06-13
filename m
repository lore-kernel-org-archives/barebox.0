Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22b.google.com ([2a00:1450:4008:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Un3zR-0007Lu-RF
 for barebox@lists.infradead.org; Thu, 13 Jun 2013 09:38:47 +0000
Received: by mail-bk0-f43.google.com with SMTP id jm2so3783046bkc.2
 for <barebox@lists.infradead.org>; Thu, 13 Jun 2013 02:38:23 -0700 (PDT)
Message-ID: <51B9930B.8080609@gmail.com>
Date: Thu, 13 Jun 2013 11:38:19 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130519073403.GY32299@pengutronix.de> <51B6EED2.3010707@gmail.com>
 <20130613092557.GC32299@pengutronix.de>
In-Reply-To: <20130613092557.GC32299@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] of: add ranges address translation for default bus
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 06/13/13 11:25, Sascha Hauer wrote:
> On Tue, Jun 11, 2013 at 11:33:06AM +0200, Sebastian Hesselbarth wrote:
>> I started merging already, and from what I can see we should just remove
>> the spinlocks and OF_DYNAMIC stuff (but leave of_node_get/_put as stubs)
>
> Sounds like a plan. Functions existing both in barebox and Linux should
> behave the same way. However, if Linux turns out to do something silly
> or (for our usecase) too bloated, we shouldn't do the same just because
> Linux does it.
>
> I want to keep the Linux list usage in the devicetree, so they won't be
> really in sync.

Ok, I started converting and doing it in a clean way is kind of tricky.

First of all, allyesconfig doesn't build - so it is hard to find and
re-build all users of current of_* functions.

If you want to stick with list usage, it will end up with converting
instead of just move current functions out of the way, import Linux
OF, and switch users to that functions.

I will have a look at it, find users/abusers of current API and see
how much we can merge.

You also want to stick with of_set_* and friends within base.c or
move them out to some other source file where all set/modify functions
will sit in?

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
