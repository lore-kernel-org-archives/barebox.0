Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ok8e6-0007JO-7k
	for barebox@lists.infradead.org; Sat, 14 Aug 2010 04:47:05 +0000
Date: Sat, 14 Aug 2010 06:35:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100814043516.GB24191@game.jcrosoft.org>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100808064846.GA31364@merkur.ravnborg.org>
	<20100808090612.GM24069@game.jcrosoft.org>
	<20100813192612.GA8351@merkur.ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100813192612.GA8351@merkur.ravnborg.org>
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

> We could instead pick this up from the mainmenu entry.
> 
> So we in a Kconfig file could have:
> 
> mainmenu "My application configuration - version $VERSION"
> 
> config VERSION
> 	string
> 	option env=VERSION
> 
> 
> The text in mainmenu will have all references to $SOMETHING
> expanded to the string representation of that symbol.
> 
> And we can use existing functionality to pick up environment variables.
> 
> The frontends needs to be adapted as well as the kconfig backend.
> 
> But doing the above I guess we have 'fixed' almost all kernel references.
I like it

and how about the new set/select option I mention also?

because I also take a look in the kernel for ARM as example and it will be
usefull to simplify it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
