Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOCTa-0007Qe-A9
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 20:43:39 +0000
Date: Thu, 13 Mar 2014 21:43:07 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20140313214307.54dbdad8@e6520eb>
In-Reply-To: <53211233.5070806@kosagi.com>
References: <53211233.5070806@kosagi.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Porting barebox to Novena: misc questions
To: Sean Cross <xobs@kosagi.com>
Cc: barebox@lists.infradead.org

Hi,

Le Thu, 13 Mar 2014 10:04:35 +0800,
Sean Cross <xobs@kosagi.com> a =E9crit :
> I've finally managed to get U-Boot's SPL to configure DDR3 and load
> barebox off of a FAT partition on an i.MX6DL.  I also have a barebox
> build with most features turned on, and I'm running into a number of
> problems.  barebox is able to load a zImage off of the FAT partition,
> set up ATAGs, and jump to it.  So I have the basics done.  But there are
> lots of little things that aren't working.
> =

> When I boot without an Ethernet cable plugged in, the "timeout" command
> takes a very long time to complete.  It generally freezes at "Hit any
> key to stop autoboot:  3" and tends to ignore input for around ten
> seconds.  How can I prevent this from happening, short of compiling out
> FEC support?
> =

that's very similar to what I reported here :
http://lists.infradead.org/pipermail/barebox/2014-February/018005.html

I didn't yet had time to investigate more based on Sascha's answer but
that's on my todo list.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
