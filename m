Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PbciF-0003NW-In
	for barebox@lists.infradead.org; Sat, 08 Jan 2011 17:36:24 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m38vyym6k9.fsf@intrepid.localdomain>
	<m3vd22kq8q.fsf@intrepid.localdomain>
	<20110106233651.GB944@game.jcrosoft.org>
	<m3ei8nwpz2.fsf@intrepid.localdomain>
	<20110108135522.GG12078@pengutronix.de>
Date: Sat, 08 Jan 2011 18:35:46 +0100
In-Reply-To: <20110108135522.GG12078@pengutronix.de> (Sascha Hauer's message
	of "Sat, 8 Jan 2011 14:55:22 +0100")
Message-ID: <m3mxnbuwlp.fsf@intrepid.localdomain>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> This forces anyone to display with tabs=8 (vide the discussions on
>> lkml). Obviously one can decide to use tabs everywhere, I just want
>> to see such decision has been taken.
>
> Have there been discussions? Do you have a pointer?

It's been beaten to death, several times, along with the 80-column limit
(lifted some time ago). I think googling for "site:lkml.org tabs
alignment" should show relevant threads. My personal opinion is that
while we can easily use (and enforce) tabs for syntactic indentation,
other things should be left unruled.
IMHO the ideal situation is using spaces for anything other than
syntactic indentation, since it allows consistent viewing with any
tab length. Unfortunately, most of the editor programs are not there yet
(I'm told emacs can be told to do the "right thing" automatically).

> You could use a cramfs but it adds quite some binary size to the
> image. Is it even possible to share the firmware with Linux? I guess
> Linux does a request_firmware which either expects the firmware to be
> compiled in or under /lib/firmware.

Yes, the firmware must be in /lib/firmware/NPE-[ABC], but we could get
it, link etc. from cramfs. Even with a special tool reading cramfs and
writing files in /lib/firmware.

At present we simply have another copy of microcode in Linux image.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
