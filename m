Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out7.bezeqint.net ([192.115.188.214])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PmQZx-0007ge-4L
	for barebox@lists.infradead.org; Mon, 07 Feb 2011 12:52:30 +0000
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Mon, 7 Feb 2011 14:52:21 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68C006F85C@SBS2008.wellsense.local>
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F854@SBS2008.wellsense.local>
	<20110206143440.GA26377@tarshish>
	<AANLkTimsb2yaVC6Jun75xLZvkkNVAoKjovdVe3bGna7n@mail.gmail.com>
In-Reply-To: <AANLkTimsb2yaVC6Jun75xLZvkkNVAoKjovdVe3bGna7n@mail.gmail.com>
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
Subject: Re: Manipulating boot environment from user-space
To: "marek.belisko@gmail.com" <marek.belisko@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I think that would be nice.

On Sun, 2011-02-06 at 17:36 +0100, Belisko Marek wrote:
> On Sun, Feb 6, 2011 at 3:34 PM, Baruch Siach <baruch@tkos.co.il> wrote:
> > Hi Boaz,
> >
> > On Sun, Feb 06, 2011 at 04:06:56PM +0200, Boaz Ben-David wrote:
> >> Is there a way to change values in the environment used by barebox
> >> after booting? e.g. already in the linux user space of device booted?
> >
> > Use the bareboxenv utility. See scripts/bareboxenv.c.
> Shouldn't make sense add this utility to busybox?>
> > baruch
> >
> > --
> >                                                     ~. .~   Tk Open Systems
> > =}------------------------------------------------ooO--U--Ooo------------{=
> >   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >
> 
> thanks,
> 
> marek
> 
> -- 
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
> 
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> icq: 290551086
> web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
