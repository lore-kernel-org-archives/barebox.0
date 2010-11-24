Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PLGi0-0006QX-3M
	for barebox@lists.infradead.org; Wed, 24 Nov 2010 14:52:32 +0000
Date: Wed, 24 Nov 2010 15:48:37 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101124144837.GI11909@game.jcrosoft.org>
References: <AANLkTi=JJf6HyktGrsS5gscd3Yf1wc2Ef2Bb8hbrmEqd@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTi=JJf6HyktGrsS5gscd3Yf1wc2Ef2Bb8hbrmEqd@mail.gmail.com>
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
Subject: Re: RFC: change map_base type
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On 13:39 Wed 24 Nov     , Belisko Marek wrote:
> Hi,
> 
> fist sparse patches was accepted but doesn't fix all problems.
> 
> There is still a lot of sparse problems which complain about incorrect type
> in functions read(bwl)/writ(bwl). Over whole codebase to this
> functions are passed
> u_long or u_int types which is not correct.
> 
> e.g. in serial drivers is used for access to registers:
> writeb(0x07, dev->map_base + UFCON);
> 
> In my opinion it make no sense to use:
> writeb(0x07, IOMEM(dev->map_base + UFCON));
> 
> Instead change map_base type in include/driver.h to void __iomem *map_base
> which should fix a lot sparse problems.
> Then only board code when device is initialized use: .map_base =
> IOMEM(0x00000...)
> 
> Make it sense or there is not necessary to touch it or other way?
it's a ressources so it's the right type as in the kernel

the driver need to cast based on it's need

as done in linux

remember with the multi-ressource it's not anymore a base address you pass
but any data

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
