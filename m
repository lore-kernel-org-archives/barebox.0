Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVjZF-0001oT-8r
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 11:42:46 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3oc8gcae3.fsf@intrepid.localdomain>
	<20101222005722.GD19266@game.jcrosoft.org>
	<20101222124635.GC6017@pengutronix.de>
	<m3bp4d61mp.fsf@intrepid.localdomain>
	<20101223032631.GI19266@game.jcrosoft.org>
Date: Thu, 23 Dec 2010 12:42:33 +0100
In-Reply-To: <20101223032631.GI19266@game.jcrosoft.org> (Jean-Christophe
	PLAGNIOL-VILLARD's message of "Thu, 23 Dec 2010 04:26:31 +0100")
Message-ID: <m3aajwlnpy.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 10] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

> I'm working on a fs support in linux of the barebox env
>
> so linux could get it easly also

If I can put the original copy in RO blocks and use some sort of unionfs
to make it RW, and even better, to export it to Linux easily, then it
may be a way to go for me, too. Meanwhile I have to use what's already
available.

> but I prefer to be able to change my micro code as some of the people who work
> on IXP have acess to it to modify it. So I think its a good option

IOW you (and/or people you know) do have means to change the microcode?
E.g. some documentation, tools (assembler?) or something like that?
Is it something you could make available to me? I'd be interested in
hacking (at least) the NPE-A HSS microcode, though at present, without
any docs, the amount of work needed is prohibitive.

BTW different boards can supply the microcode using different means.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
