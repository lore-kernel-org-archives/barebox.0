Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by bombadil.infradead.org with smtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nu4JK-0007Fd-8v
	for barebox@lists.infradead.org; Tue, 23 Mar 2010 13:38:26 +0000
Message-ID: <4BA8C44A.1080807@eukrea.com>
Date: Tue, 23 Mar 2010 14:38:18 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <20100323133217.GA26177@darwin>
In-Reply-To: <20100323133217.GA26177@darwin>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox working on freescale-mx25-3-stack?
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Matthias,

Le 23/03/2010 14:32, Matthias Kaehlcke a =E9crit :
> i'm trying to run barebox on a Freescale i.MX25 3-Stack board. for
> this purpose i built barebox with the freescale-mx25-3-stack
> defconfig, using the toolchain provided by the Freescale BSP (i also
> tried it with a custom one). i then dumped the barebox.bin on a MMC
> card, plugged the card into the socket of the board and switched the
> board on, but nothing happened :(
>
> booting u-boot or redboot from MMC succeeds, so the settings of SW21
> and SW22 shouldn't be the problem
>
> is barebox supposed to work on this board or is the port still in
> preliminary state?
>
you can check the patch I sent last friday, it works fine on our i.MX25 =

board for NAND boot (MMC boot not tested yet).
I'll post an updated version of the patch in a few days as per Sascha's =

comments + a few tuning in the env.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
