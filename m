Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pm5hk-0000Gu-S2
	for barebox@lists.infradead.org; Sun, 06 Feb 2011 14:35:10 +0000
Date: Sun, 6 Feb 2011 16:34:41 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110206143440.GA26377@tarshish>
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F854@SBS2008.wellsense.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39A4B204C321D34DA3490E3B119D5A6C68C006F854@SBS2008.wellsense.local>
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

Hi Boaz,

On Sun, Feb 06, 2011 at 04:06:56PM +0200, Boaz Ben-David wrote:
> Is there a way to change values in the environment used by barebox
> after booting? e.g. already in the linux user space of device booted?

Use the bareboxenv utility. See scripts/bareboxenv.c.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
