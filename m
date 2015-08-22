Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZTFDB-00065q-QI
 for barebox@lists.infradead.org; Sat, 22 Aug 2015 20:16:23 +0000
Date: Sat, 22 Aug 2015 23:15:49 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20150822201549.GA8919@tarshish>
References: <CABK+bQbSy874fLMu-M3Q9Wc8-r8YEus2NG9JC2s_uw47Rn80eA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABK+bQbSy874fLMu-M3Q9Wc8-r8YEus2NG9JC2s_uw47Rn80eA@mail.gmail.com>
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
Subject: Re: partitions (your discussion at http://lists.infradead.org)
To: =?iso-8859-1?Q?Zolt=E1n_Seb=F6k?= <zoli.s@gmx.de>
Cc: barebox@lists.infradead.org

Hi Zoli,

On Fri, Aug 21, 2015 at 02:32:31PM +0200, Zolt=E1n Seb=F6k wrote:
> My issue is a bit different than this, but I don't know who to contact
> instead. However, the same thing is, that I get this error message...
> =

> stat /dev/nand0.xload.bb: No such file or directory
> =

> ...when tying to erase the MLO partition (nand0.xload.bb) of the NAND
> flash. This is from *inside a script, using this line:*
> =

> cp /boot/swm/MLO /dev/nand0.xload.bb
> =

> This is the first step my script does after mounting the SD card. It's
> purpose is a complete NAND flash update task.
> =

> Maybe important: The script that I use for the flashing isn't starting
> directly via /env/init. Instead of that it sits on the SD card's FAT
> partition and is being invoked by another script which is located in
> /env/init.
> =

> When I alter my script to your solution...
> =

> cp /boot/swm/MLO /dev/nand0.xload
> =

> ...it drops the same error. My script has error checking, so it stops at
> this point.
> =

> Same on all other partitions:
> cp /boot/swm/barebox.bin /dev/nand0.barebox.bb
> cp /boot/swm/linuximage /dev/nand0.kernel.bb
> =

> When I invoke my original flash script manually inside barebox, everything
> goes fine.
> =

> So, what's the matter with barebox?
> =

> I am new to linux especially learnt about barebox just a few days ago, so
> please explain in details, what to do to get this working from inside a
> script.

Make sure that the 'addpart' command runs before any other command that =

attempts to access /dev/nand0.*.bb.

baruch

-- =

     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=3D}------------------------------------------------ooO--U--Ooo------------=
{=3D
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
