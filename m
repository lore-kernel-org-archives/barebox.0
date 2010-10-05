Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-out.m-online.net ([212.18.0.9])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P3BiA-0005UZ-CB
	for barebox@lists.infradead.org; Tue, 05 Oct 2010 17:53:59 +0000
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <20101005162019.GK25320@game.jcrosoft.org>
References: <20101005135213.24F871539A0@gemini.denx.de>
	<20101005160042.GI25320@game.jcrosoft.org>
	<20101005162019.GK25320@game.jcrosoft.org>
Date: Tue, 05 Oct 2010 19:53:54 +0200
Message-Id: <20101005175354.E53D21539A0@gemini.denx.de>
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
Subject: Re: Code "borrowed" without attribution to original authors
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Dear Jean-Christophe PLAGNIOL-VILLARD,

In message <20101005162019.GK25320@game.jcrosoft.org> you wrote:
>
> > >  d424ce7  image: factorise image printing contents
> > >  0ceafe1  Replace direct header access with the API routines
> 
> > >  aba80a2  image: rename IH_CPU to IH_ARCH to be more concistant
> > >  7bd7d59  image: factorise string helper
> for the record the two are not borrowed at all from U-Boot but done based on
> barebox

Oh. Interesting statement. Let me check again. 

Your commit:

	commit aba80a2d2d0f1b25185246925577ce2108247dde
	Author: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
	Date:   Thu Sep 23 06:48:42 2010 +0200

	    image: rename IH_CPU to IH_ARCH to be more concistant

So BB used to have IH_CPU and switched to IH_ARCH :

Please compare against this U-Boot commit:

	commit b97a2a0a21f279d66de8a9bdbfe21920968bcb1c
	Author: Marian Balakowicz <m8@semihalf.com>
	Date:   Tue Jan 8 18:14:09 2008 +0100

	    [new uImage] Define a API for image handling operations
	    
	    - Add inline helper macros for basic header processing
	    - Move common non inline code common/image.c
	    - Replace direct header access with the API routines
	    - Rename IH_CPU_* to IH_ARCH_*
	    
	    Signed-off-by: Marian Balakowicz <m8@semihalf.com>

Pay special attention to the "Rename IH_CPU_* to IH_ARCH_*" part.

Not borrowed?  What an extremely unlikely coincidence then!  I think
you should try to explain that.

> and as we all known the uImage format come from U-Boot I just sync it
> recently without commit details as we do for Kconfig we do not trac
> modifications details and we respect the copyright. SO I'll repeat myself
> if Marian copyright is missing We will add it with pleasure.


I recommend you to get a clue about what is needed to properly
attribute code to the people who actually wrote it, instead of
submitting it without any due reference and then even claiming you
developed it yourself.  I guess you are not interested in having a
reputation as a plagiarist?

Despite your ludicrous statement of "not borrowed at all" I still
assume, for now, this was just an accident, and that bringing it to
your attention is all that is needed to settle the matter.  It is
your turn now.


Thanks.

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
The following statement is not true.  The previous statement is true.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
