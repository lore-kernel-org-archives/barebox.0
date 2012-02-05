Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ru3Rq-0002mK-Qu
 for barebox@lists.infradead.org; Sun, 05 Feb 2012 14:52:12 +0000
Received: from eb-e6520 (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id A02D2A61D3
 for <barebox@lists.infradead.org>; Sun,  5 Feb 2012 15:52:02 +0100 (CET)
Date: Sun, 5 Feb 2012 15:52:01 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120205155201.4086003e@eb-e6520>
In-Reply-To: <alpine.DEB.2.02.1202050635190.30340@oneiric>
References: <alpine.DEB.2.02.1202050635190.30340@oneiric>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: how do i add the defn for the beagle xM to barebox?
To: barebox@lists.infradead.org

Hi Robert,

Le Sun, 5 Feb 2012 06:52:28 -0500 (EST),
"Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
>   thoughts?  i'd actually like to make the tweaks one at a time so
> that the git log shows clearly how the two boards differ one feature
> at a time.

By sensing a few GPIO, you can easily check which board you are running
barebox on and thus have ony binary which supports all beagleboards
(as already done in u-boot).

Check around line 108 in u-boot's beagle support for the details : =

http://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3Dboard/ti/beagle/beagle.c;h=
=3D5c04b34e1ab0140aca93e7752c8672ce7aebc0b9;hb=3DHEAD

So in the end you can register the nand support only if you run on a
board which has a NAND flash and have one defconfig for all
beagleboards (some tweaks in the clock settings may be nedded -
especially for USB IIRC - as beagle XM is built around a DM3730 which
can run at 1GHz when older beagles had older OMAP3530 limited to
720MHz).

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
