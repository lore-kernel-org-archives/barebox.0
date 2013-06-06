Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x233.google.com ([2a00:1450:4013:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkeJn-0007BL-Ku
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 17:49:50 +0000
Received: by mail-ea0-f179.google.com with SMTP id b15so1709864eae.38
 for <barebox@lists.infradead.org>; Thu, 06 Jun 2013 10:49:24 -0700 (PDT)
Date: Thu, 6 Jun 2013 19:52:25 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130606175223.GA2892@x61s.8.8.8.8>
References: <1370301232-12962-1-git-send-email-alex.aring@gmail.com>
 <20130606115245.a8add6e7ee99b4354fd9df84@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130606115245.a8add6e7ee99b4354fd9df84@gmail.com>
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
Subject: Re: [PATCH/RFC 0/5] Another try for a new memtest implementation
To: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Thu, Jun 06, 2013 at 11:52:45AM +0400, antonynpavlov@gmail.com wrote:
> On Tue,  4 Jun 2013 01:13:47 +0200
> Alexander Aring <alex.aring@gmail.com> wrote:
> 
> > Hi,
> > 
> > this is a new try to get a new memtest implementation into barebox.
> > 
> 
> I have got the new memtest command from the next branch.
> 
> Here is my MIPS qemu-malta build log:
> 
>   CC      commands/memtest.o
> commands/memtest.c: In function `alloc_memtest_region':
> commands/memtest.c:39: warning: implicit declaration of function `xzalloc'
> commands/memtest.c:39: warning: assignment makes pointer from integer without a cast

thanks for send this notice. I know why this happend.

We get an include from architecure specific header file "asm/mmu.h" and
some mmu.h in other architecure don't include "inside of arch specific
asm/mmu.h" headers like "malloc.h", "errno.h".

I simple forgot to handle this.

I will send a patch "for-next" to add these header files to memtest.

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
