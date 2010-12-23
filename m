Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVeVW-0006zO-Ss
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 06:18:35 +0000
Date: Thu, 23 Dec 2010 08:18:06 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20101223061806.GA12874@jasper.tkos.co.il>
References: <201012231103.31335.marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201012231103.31335.marc@cpdesign.com.au>
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
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Thu, Dec 23, 2010 at 11:03:31AM +1100, Marc Reilly wrote:
> I want to be able to determine what version of barebox I have on my NOR 
> flash, after booting into linux.

[snip]

> Does anybody else accomplish this in a better way? (I don't want to pass the 
> barebox version as an arg when booting the kernel - I'd rather it be more 
> "standalone").

I set the board revision number, using armlinux_set_revision(), to pass the 
version of the bootloader to the kernel, and then extract it from the 
'Revision' field in /proc/cpuinfo. This solution is ARM specific, though.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
