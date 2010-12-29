Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out8.bezeqint.net ([192.115.188.215])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PY32z-0005Mp-W8
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 20:55:03 +0000
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Wed, 29 Dec 2010 22:51:11 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68BF775746@SBS2008.wellsense.local>
References: <39A4B204C321D34DA3490E3B119D5A6C68BF775745@SBS2008.wellsense.local>,
	<4D1B9E92.2010403@eukrea.com>
In-Reply-To: <4D1B9E92.2010403@eukrea.com>
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
To: =?iso-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Eric,

Thanks for the quick response, what I would like to know is where is the ac=
tual entry point to the code,
i.e. the "main()" function...
I'm asking this because when I try to boot barebox on my board with the dif=
ferent NAND I don't even get a prompt on
the serial line so I figured the image is not read properly.

Thanks,

Boaz.
________________________________________
From: barebox-bounces@lists.infradead.org [barebox-bounces@lists.infradead.=
org] On Behalf Of Eric B=E9nard [eric@eukrea.com]
Sent: Wednesday, December 29, 2010 10:48 PM
To: barebox@lists.infradead.org
Subject: Re: 4096 page NAND boot support on iMX35 PDK board

Hi Boaz,

On 29/12/2010 21:35, Boaz Ben-David wrote:
> I just started using barebox on the iMX35 PDK and I have a bit of a probl=
em.
> My actual board is based on the PDK but with a slight change: the NAND ch=
ip is of newer generation and
> has 4k page and 218 oob area.
> I need to add support to boot from 4k pages in barebox and I can't seem t=
o find any documentation on how to do that.
> Can anyone point me in the right direction as to where to find this in th=
e barebox code?
>
check in drivers/mtd/nand/nand_imx.c

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
