Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from pfepb.post.tele.dk ([195.41.46.236])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OjztQ-0000gk-HL
	for barebox@lists.infradead.org; Fri, 13 Aug 2010 19:26:17 +0000
Date: Fri, 13 Aug 2010 21:26:12 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20100813192612.GA8351@merkur.ravnborg.org>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100808064846.GA31364@merkur.ravnborg.org>
	<20100808090612.GM24069@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100808090612.GM24069@game.jcrosoft.org>
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
Subject: Re: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

> infact yes if the project name could be configurable it will avoid to modify
> it and we could use it as is
> 
> I've notice 3 names
> 
> kernel,
> Kernel,
> Linux Kernel
> 
> if instead of hard coding it we could use a symbol to configure it it will
> make it integrable as is
> 
> one other think it will be good to avoid KERNEL something in the env or the
> default symbol and use a more generic one as for KERNELVERSION use
> RELEASEVERSION as example

The solution I have in mind is to try to add the relevant
information to the Kconfig files.

Today the title is hardcoded in the frontends (menuconfig, nconfig etc).
We could instead pick this up from the mainmenu entry.

So we in a Kconfig file could have:

mainmenu "My application configuration - version $VERSION"

config VERSION
	string
	option env=VERSION


The text in mainmenu will have all references to $SOMETHING
expanded to the string representation of that symbol.

And we can use existing functionality to pick up environment variables.

The frontends needs to be adapted as well as the kconfig backend.

But doing the above I guess we have 'fixed' almost all kernel references.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
