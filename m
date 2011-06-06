Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.97.mail-out.ovh.net ([87.98.173.128]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QTXrH-0002Sm-TJ
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 11:20:37 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 0333A4A68DB
	for <barebox@lists.infradead.org>;
	Mon,  6 Jun 2011 13:20:54 +0200 (CEST)
Date: Mon, 6 Jun 2011 13:07:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110606110732.GG11298@game.jcrosoft.org>
References: <20110601054500.GA32751@game.jcrosoft.org>
	<1306928926-11086-1-git-send-email-h.feurstein@gmail.com>
	<20110602160400.GG32751@game.jcrosoft.org>
	<BANLkTikRx9gNs7jLkL1+A7WUoLewTp9JhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTikRx9gNs7jLkL1+A7WUoLewTp9JhQ@mail.gmail.com>
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
Subject: Re: [PATCH v2] mci: add Atmel AT91 MCI driver
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On 09:43 Mon 06 Jun     , Hubert Feurstein wrote:
> 2011/6/2 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
> > On 13:48 Wed 01 Jun =A0 =A0 , Hubert Feurstein wrote:
> [snip]
> > I've test it on at91sam9263ek and work fine
> Great, good to hear ;) I'll add also support for at91sam9m10g45ek
> later in an extra commit.
> >
> > please fix the following comments
> > Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >
> [snip]
> >> +/* Multimedia Card Interface */
> >> +struct atmel_mci_platform_data {
> >> +     unsigned bus_width;
> >> +     unsigned host_caps; /* MCI_MODE_* from mci.h */
> >> +     unsigned detect_pin;
> >> +     unsigned wp_pin;
> >> +};
> >we can have 2 slot but you allow only one
> Would it be ok to add the second slot in an extra commit?
ok

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
