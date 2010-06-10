Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OMhmQ-0004qd-HT
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 13:26:47 +0000
Message-ID: <4C10E813.5080904@eukrea.com>
Date: Thu, 10 Jun 2010 15:26:43 +0200
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1276155782-6173-1-git-send-email-eric@eukrea.com>
	<20100610114202.GK20799@pengutronix.de>
In-Reply-To: <20100610114202.GK20799@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add support for Eukrea CPUIMX35
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le 10/06/2010 13:42, Sascha Hauer a =E9crit :
> I originally added this to the phyCORE i.MX35 board because we had
> problems running it at 532 MHz. If you do not have it you probably don't
> need it. Though I can keep it if you wish.
>
in fact this may be interesting for configurations where the CPU speed =

can be 400MHz to reduce power consumption. In that case, barebox could =

start at 400MHz and /env/bin/init would set the speed depending on =

/env/config variable. So you can keep it for now.

Thanks,
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
