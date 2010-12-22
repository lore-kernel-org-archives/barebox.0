Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVTvh-0004ts-MT
	for barebox@lists.infradead.org; Wed, 22 Dec 2010 19:00:56 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3vd2ocax2.fsf@intrepid.localdomain>
	<20101222005829.GE19266@game.jcrosoft.org>
Date: Wed, 22 Dec 2010 20:00:41 +0100
In-Reply-To: <20101222005829.GE19266@game.jcrosoft.org> (Jean-Christophe
	PLAGNIOL-VILLARD's message of "Wed, 22 Dec 2010 01:58:29 +0100")
Message-ID: <m3mxnx63ae.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 5] Fix error handling with malloc,
	memalign etc. Memalign() can't fail now.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

>> --- a/drivers/clk/clkdev.c
>> +++ b/drivers/clk/clkdev.c
> please do not modify it I want to keep it as in the kernel

As you wish.

What's the rationale BTW?
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
