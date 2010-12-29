Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out4.bezeqint.net ([192.115.188.213])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PY3Nz-0005bv-Gh
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 21:16:44 +0000
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Wed, 29 Dec 2010 23:15:13 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68BF77574A@SBS2008.wellsense.local>
References: <39A4B204C321D34DA3490E3B119D5A6C68BF775745@SBS2008.wellsense.local>,
	<4D1B9E92.2010403@eukrea.com>
	<39A4B204C321D34DA3490E3B119D5A6C68BF775746@SBS2008.wellsense.local>,
	<4D1BA102.9030509@eukrea.com>
	<39A4B204C321D34DA3490E3B119D5A6C68BF775747@SBS2008.wellsense.local>,
	<4D1BA3B3.1020400@eukrea.com>
In-Reply-To: <4D1BA3B3.1020400@eukrea.com>
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

Ok, thanks a lot for your help I hope it won't be too complicated implement=
ing the support...

Boaz.
________________________________________
From: Eric B=E9nard [eric@eukrea.com]
Sent: Wednesday, December 29, 2010 11:10 PM
To: Boaz Ben-David
Cc: barebox@lists.infradead.org
Subject: Re: 4096 page NAND boot support on iMX35 PDK board

On 29/12/2010 22:05, Boaz Ben-David wrote:
> external

so you have to update this function to your hardware (ie : to add 4k page
support in the nand driver).

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
