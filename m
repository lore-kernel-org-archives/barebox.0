Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OQaiy-0000e1-LN
	for barebox@lists.infradead.org; Mon, 21 Jun 2010 06:43:17 +0000
Received: by wwb34 with SMTP id 34so139808wwb.36
	for <barebox@lists.infradead.org>; Sun, 20 Jun 2010 23:43:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20100621063247.GB12115@pengutronix.de>
References: <AANLkTilzfYtRwI1kdFG0O53fRz9NApQnW0P98dZEK-Yo@mail.gmail.com>
	<20100621063247.GB12115@pengutronix.de>
Date: Mon, 21 Jun 2010 08:43:15 +0200
Message-ID: <AANLkTimItYRXe7D_cBHDCmyVwFQsg7FEoEnsZK_D3N9A@mail.gmail.com>
From: Jose Luis Zabalza <jlz.3008@gmail.com>
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
Subject: Re: Fat32 support
To: barebox@lists.infradead.org

2010/6/21 Sascha Hauer <s.hauer@pengutronix.de>
>
> Hello Jos=E9,
>
> On Mon, Jun 21, 2010 at 06:34:31AM +0200, Jose Luis Zabalza wrote:
> > Hello All.
> >
> > A simple question. Is it posible read a file on fat32 USB memory
> > device from barebox?
>
> No, currently not.
>
> >
> > If not, is it posible write some code to do this? What steps will be ne=
cessary?
> > - port from linux kernel usb-storage support.?
> > - port form linux kernel fat 32 support?
>
> This is surely possible, though you might be better off with the U-Boot
> code as a template for porting. You'll probably also need dos
> partitioning support.
>
> >
> > My final objetive is firmwarize the board from a USB fat32 USB memory
> > device with a new barebox "firmwarize" command because I am surprised
> > that there is not on barebox?
>
> I think you don't need an extra command to do this once all necessary
> code is in place. It's more a matter of a script like 'usb; mount -tfat
> /dev/xxx /mnt; cp /mnt/xy /dev/nor0.kernel;'
> We don't have this at the moment because nobody needed it yet. We mostly
> use networking or dfu (device firmware update) for updating purposes.
> That said patches are very welcome ;)
>
> Sascha
>

Thanks Sascha. But cp command didn't run on NOR flash . unprotect and
erase run ok so I thought cp command is not a good command to write on
NOR flash. I must revise NOR device code when I have time.


Thanks again.




--
Jos=E9 Luis Zabalza
jlz.3008 =A0a t =A0gmail.com
Linux Counter 172551

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
