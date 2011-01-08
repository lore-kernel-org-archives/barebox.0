Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PbdFH-0003zG-Jw
	for barebox@lists.infradead.org; Sat, 08 Jan 2011 18:10:32 +0000
Date: Sat, 8 Jan 2011 19:10:19 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110108181019.GC11726@game.jcrosoft.org>
References: <m38vyym6k9.fsf@intrepid.localdomain>
	<m3vd22kq8q.fsf@intrepid.localdomain>
	<20110106233651.GB944@game.jcrosoft.org>
	<m3ei8nwpz2.fsf@intrepid.localdomain>
	<20110108135522.GG12078@pengutronix.de>
	<m3mxnbuwlp.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3mxnbuwlp.fsf@intrepid.localdomain>
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
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

On 18:35 Sat 08 Jan     , Krzysztof Halasa wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> >> This forces anyone to display with tabs=8 (vide the discussions on
> >> lkml). Obviously one can decide to use tabs everywhere, I just want
> >> to see such decision has been taken.
> >
> > Have there been discussions? Do you have a pointer?
> 
> It's been beaten to death, several times, along with the 80-column limit
> (lifted some time ago). I think googling for "site:lkml.org tabs
> alignment" should show relevant threads. My personal opinion is that
> while we can easily use (and enforce) tabs for syntactic indentation,
> other things should be left unruled.
> IMHO the ideal situation is using spaces for anything other than
> syntactic indentation, since it allows consistent viewing with any
> tab length. Unfortunately, most of the editor programs are not there yet
> (I'm told emacs can be told to do the "right thing" automatically).
I do prefer tab personnaly
> 
> > You could use a cramfs but it adds quite some binary size to the
> > image. Is it even possible to share the firmware with Linux? I guess
> > Linux does a request_firmware which either expects the firmware to be
> > compiled in or under /lib/firmware.
> 
> Yes, the firmware must be in /lib/firmware/NPE-[ABC], but we could get
> it, link etc. from cramfs. Even with a special tool reading cramfs and
> writing files in /lib/firmware.
> 
> At present we simply have another copy of microcode in Linux image.
a simple link will be enough so the cramfs is the best solution, I think
so no data duplication and it will be more easy to update and maintain

And we do not have to known the size of the firmware in barebox just the fs
location so more easy to update barebox

I'm working a the fs support for the env with the idea to have a ro part
but I need more time to finish it. So for now on it the best solution.

for the size increasement it's impact is cover by the non data duplication
and will be reduce againt with the envfs

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
