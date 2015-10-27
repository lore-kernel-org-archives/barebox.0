Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22a.google.com ([2a00:1450:400c:c09::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zr7X5-0004iS-Ku
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 16:55:40 +0000
Received: by wmff134 with SMTP id f134so1114988wmf.1
 for <barebox@lists.infradead.org>; Tue, 27 Oct 2015 09:55:14 -0700 (PDT)
Date: Tue, 27 Oct 2015 17:55:04 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20151027165459.GA4592@omega>
References: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: memtest updates
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Oct 27, 2015 at 09:29:53AM +0100, Sascha Hauer wrote:
> This series has some updates for the memory test. The output and the
> code are made more compact and some additional options are added. Also
> the remap_range function is reworked.
> 

I currently try to build next with memtest, I got the following issue:

commands/memtest.c: In function 'do_test_one_area':
commands/memtest.c:50:2: error: implicit declaration of function 'mem_test_moving_inversions_pattern' [-Werror=implicit-function-declaration]
  ret = mem_test_moving_inversions_pattern(r->r->start, r->r->end, 0xdeadbeef);

after running grep I realized and there is no
"mem_test_moving_inversions_pattern" function. :-(

Then:

after cutting some words from this function and running grep again, then
I found a "mem_test_moving_inversions" function. :-)

It seems it's a different function and you passed a "0xdeadbeef" there,
otherwise the function fits.

What means 0xdeadbeef here?

Anyway I applied:

diff --git a/commands/memtest.c b/commands/memtest.c
index 88656df..d784a5c 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -47,7 +47,7 @@ static int do_test_one_area(struct mem_test_resource *r, int bus_only,
        if (bus_only)
                return 0;
 
-       ret = mem_test_moving_inversions_pattern(r->r->start, r->r->end, 0xdeadbeef);
+       ret = mem_test_moving_inversions(r->r->start, r->r->end);
        if (ret < 0)
                return ret;
        printf("done.\n\n");


and it seems to solve this compiling issue.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
