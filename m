Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PVfLP-0007Bh-6q
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 07:12:12 +0000
Date: Thu, 23 Dec 2010 08:07:07 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101223070707.GK19266@game.jcrosoft.org>
References: <201012231103.31335.marc@cpdesign.com.au>
	<20101223061806.GA12874@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101223061806.GA12874@jasper.tkos.co.il>
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
Subject: Re: Determining barebox version from linux
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On 08:18 Thu 23 Dec     , Baruch Siach wrote:
> Hi Marc,
> 
> On Thu, Dec 23, 2010 at 11:03:31AM +1100, Marc Reilly wrote:
> > I want to be able to determine what version of barebox I have on my NOR 
> > flash, after booting into linux.
> 
> [snip]
> 
> > Does anybody else accomplish this in a better way? (I don't want to pass the 
> > barebox version as an arg when booting the kernel - I'd rather it be more 
> > "standalone").
> 
> I set the board revision number, using armlinux_set_revision(), to pass the 
> version of the bootloader to the kernel, and then extract it from the 
> 'Revision' field in /proc/cpuinfo. This solution is ARM specific, though.
It will be better to have a std way as you mqy ise the system_rev for other
stuff as example on some at91

I sync we could generate a /etc/version in the env and then export it in linux
via the fs

I think we could do like this

in barebox itself we keep a default read only fs (default env) that we merge
the same way as a unionfs in barebox to avoid duplication and allow non
modifable file with the rw env

and we will do it in linux also

so linux can get the data from barebox and modify it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
