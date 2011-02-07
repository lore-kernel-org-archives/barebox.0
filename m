Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PmQiO-0007oi-6o
	for barebox@lists.infradead.org; Mon, 07 Feb 2011 13:01:13 +0000
Date: Mon, 7 Feb 2011 15:00:55 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110207130054.GG2586@jasper.tkos.co.il>
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F854@SBS2008.wellsense.local>
	<20110206143440.GA26377@tarshish>
	<AANLkTimsb2yaVC6Jun75xLZvkkNVAoKjovdVe3bGna7n@mail.gmail.com>
	<39A4B204C321D34DA3490E3B119D5A6C68C006F85C@SBS2008.wellsense.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39A4B204C321D34DA3490E3B119D5A6C68C006F85C@SBS2008.wellsense.local>
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
To: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Boaz, Belisko,

On Mon, Feb 07, 2011 at 02:52:21PM +0200, Boaz Ben-David wrote:
> I think that would be nice.

Patches are very much welcome at busybox@busybox.net.

baruch

> On Sun, 2011-02-06 at 17:36 +0100, Belisko Marek wrote:
> > On Sun, Feb 6, 2011 at 3:34 PM, Baruch Siach <baruch@tkos.co.il> wrote:
> > > Hi Boaz,
> > > On Sun, Feb 06, 2011 at 04:06:56PM +0200, Boaz Ben-David wrote:
> > >> Is there a way to change values in the environment used by barebox
> > >> after booting? e.g. already in the linux user space of device booted?
> > >
> > > Use the bareboxenv utility. See scripts/bareboxenv.c.
> > Shouldn't make sense add this utility to busybox?>
> > > baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
