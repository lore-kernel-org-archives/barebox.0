Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pbu03-0007nF-9t
	for barebox@lists.infradead.org; Sun, 09 Jan 2011 12:03:56 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m38vyym6k9.fsf@intrepid.localdomain>
	<m3vd22kq8q.fsf@intrepid.localdomain>
	<20110106233651.GB944@game.jcrosoft.org>
	<m3ei8nwpz2.fsf@intrepid.localdomain>
	<20110108135522.GG12078@pengutronix.de>
	<m3mxnbuwlp.fsf@intrepid.localdomain>
	<20110108181019.GC11726@game.jcrosoft.org>
Date: Sun, 09 Jan 2011 13:03:18 +0100
In-Reply-To: <20110108181019.GC11726@game.jcrosoft.org> (Jean-Christophe
	PLAGNIOL-VILLARD's message of "Sat, 8 Jan 2011 19:10:19 +0100")
Message-ID: <m38vyup9mh.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 3/3] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

> a simple link will be enough so the cramfs is the best solution, I think
> so no data duplication and it will be more easy to update and maintain
>
> And we do not have to known the size of the firmware in barebox just the fs
> location so more easy to update barebox

Agreed. For this I have to be able to set an env variable (then
read-only) from within the board code. How do I do it? Or should I write
this code myself?

> I'm working a the fs support for the env with the idea to have a ro part
> but I need more time to finish it.

Yeah, though it seems a pure cramfs is better suited to my needs anyway,
microcode isn't variable.

> for the size increasement it's impact is cover by the non data duplication
> and will be reduce againt with the envfs

Not a factor for me.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
