Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YIjWV-0001Xs-1t
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 19:52:35 +0000
Date: Tue, 3 Feb 2015 20:52:12 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150203195212.GG10842@pengutronix.de>
References: <29A2697B0516A946B1023D5E798DFCF67BAB6E85@mail-ying>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29A2697B0516A946B1023D5E798DFCF67BAB6E85@mail-ying>
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
Subject: Re: saveenv & erase with bad blocks present
To: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

On Tue, Feb 03, 2015 at 04:38:42PM +0000, Boulais, Marc-Andre wrote:
> I have flashed Barebox-2015.02.0 on my omap4 setup (using the Barebox
> update command) and I am now trying to modify the environment from the
> Barebox prompt. I have modified the env/config file and I would like
> to save my changes to NAND. =

> =

> For this task, I call the "saveenv" command and I get this result:
> =

> barebox@Phytec phyCORE-OMAP4460:/ saveenv
> saving environment
> saveenv: No space left on device
> =

> The "devinfo" command indicates to me that the /dev/nand0.bareboxenv part=
ition is 128 Kb. =

> Just to be sure, I erase it and get the following error:
What is the block size of your nand device? If your partition only
consists of a single block and this one turns bad ...

> barebox@Phytec phyCORE-OMAP4460:/ erase /dev/nand0.bareboxenv.bb
> nand: nand_erase_nand: attempt to erase a bad block at page 0x00000140
> erase: I/O error
I'm not sure why this error is printed, maybe erase must not be given a
.bb partition?

> So I guess I am a bit confused here. =

> 1) Is "saveenv" the right command to save my changes to the environment ?
Yes

> 2) How can I erase a NAND partition that has bad blocks ?
It should be transparent to the user. I'd expect that erase does the
right thing.

> 3) Can bad blocks be marked by software or are they all marked by the man=
ufacturer ?
The initial set of bad blocks are (obviously) marked by the
manufacturer. I don't know if barebox automatically marks blocks as bad,
but Linux does for sure.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
