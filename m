Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out4.bezeqint.net ([192.115.188.213])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pm62Y-0000TP-S1
	for barebox@lists.infradead.org; Sun, 06 Feb 2011 14:56:39 +0000
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Sun, 6 Feb 2011 16:56:33 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68C006F856@SBS2008.wellsense.local>
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F854@SBS2008.wellsense.local>
	<20110206143440.GA26377@tarshish>
In-Reply-To: <20110206143440.GA26377@tarshish>
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
To: "baruch@tkos.co.il" <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Nevermind, simple enough...

just arm-none-linux-gnueabi-gcc bareboxenv.c -o bareboxenv

Thanks.

On Sun, 2011-02-06 at 16:34 +0200, Baruch Siach wrote:
> Hi Boaz,
> 
> On Sun, Feb 06, 2011 at 04:06:56PM +0200, Boaz Ben-David wrote:
> > Is there a way to change values in the environment used by barebox
> > after booting? e.g. already in the linux user space of device booted?
> 
> Use the bareboxenv utility. See scripts/bareboxenv.c.
> 
> baruch
> 
> -- 
>                                                      ~. .~   Tk Open Systems
> =}------------------------------------------------ooO--U--Ooo------------{=
>    - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
