Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out8.bezeqint.net ([192.115.188.215])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PwFQo-0000Sf-9T
	for barebox@lists.infradead.org; Sun, 06 Mar 2011 14:59:39 +0000
From: Itai Raab <itai.raab@wellsense-tech.com>
Date: Sun, 6 Mar 2011 16:59:02 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68C0054F52@SBS2008.wellsense.local>
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F893@SBS2008.wellsense.local>
	<201102271050.48537.jbe@pengutronix.de>
	<39A4B204C321D34DA3490E3B119D5A6C68C006F894@SBS2008.wellsense.local>
	<20110228055040.GC2667@jasper.tkos.co.il>
In-Reply-To: <20110228055040.GC2667@jasper.tkos.co.il>
Content-Language: en-US
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
Subject: RE: Fallback environment in barebox
To: Baruch Siach <baruch@tkos.co.il>, Boaz Ben-David <boaz.bd@wellsense-tech.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Udi Ron <udi.ron@wellsense-tech.com>

Hi Baruch,
I tried doing what you explained, but it seems like Barebox startup code didn't load the environment from env1 when env0 was corrupted.

In barebox shell I could find /dev/env1 with all the data, but when the Barebox started I got:
	no valid environment found on /dev/env0. Using default environment

Looking at the startup code (common/startup.c - is this the place?) I don't see any mechanism to load env1 when env0 fails.

Is it the right place to add the support or am I missing something?

Thanks,
Itai	



-----Original Message-----
From: Baruch Siach [mailto:baruch@tkos.co.il] 
Sent: Monday, February 28, 2011 7:51 AM
To: Boaz Ben-David
Cc: jbe@pengutronix.de; barebox@lists.infradead.org; Itai Raab
Subject: Re: Fallback environment in barebox

Hi Boaz,

On Sun, Feb 27, 2011 at 12:09:59PM +0200, Boaz Ben-David wrote:
> Sounds great.
> 
> Is there any documentation on how to "register" environments?

What Juergen meant to say is "register partitions named env0, env1, ...". The 
barebox startup code then automatically picks the first valid environment 
partition.

To register partitions (with bad blocks awareness) use devfs_add_partition() 
and then dev_add_bb_dev(). grep for "env0" under arch/ for many examples.

baruch

> On Sun, 2011-02-27 at 10:50 +0100, Juergen Beisert wrote:
> > Boaz Ben-David wrote:
> > > We want to implement a mechanism in barebox to use two environment
> > > partitions.
> > > i.e. when barebox boots it will go to the first by default and try to
> > > use it. If for some reason it fails
> > > it will boot with the second one.
> > >
> > > What is the best way to implement this in barebox and did anyone do it
> > > already?
> > 
> > AFAIR a mechanism like this is already present in barebox. It tries the first 
> > environment, checks its CRC and if it fails it tries the next, if one exists.
> > Just register env0, env1, .....

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
