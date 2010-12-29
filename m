Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out1.bezeqint.net ([192.115.188.207])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PY3El-0005V2-37
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 21:07:12 +0000
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Wed, 29 Dec 2010 23:05:26 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68BF775747@SBS2008.wellsense.local>
References: <39A4B204C321D34DA3490E3B119D5A6C68BF775745@SBS2008.wellsense.local>,
	<4D1B9E92.2010403@eukrea.com>
	<39A4B204C321D34DA3490E3B119D5A6C68BF775746@SBS2008.wellsense.local>,
	<4D1BA102.9030509@eukrea.com>
In-Reply-To: <4D1BA102.9030509@eukrea.com>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: 4096 page NAND boot support on iMX35 PDK board
To: =?iso-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

external
________________________________________
From: Eric B=E9nard [eric@eukrea.com]
Sent: Wednesday, December 29, 2010 10:58 PM
To: Boaz Ben-David
Cc: barebox@lists.infradead.org
Subject: Re: 4096 page NAND boot support on iMX35 PDK board

On 29/12/2010 21:51, Boaz Ben-David wrote:
> Thanks for the quick response, what I would like to know is where is the =
actual entry point to the code,
> i.e. the "main()" function...
> I'm asking this because when I try to boot barebox on my board with the d=
ifferent NAND I don't even get a prompt on
> the serial line so I figured the image is not read properly.
>
check in this file, the imx_nand_load_image function where only 512 & 2k na=
nd
are handled.

Are you using internal or external boot ?

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
