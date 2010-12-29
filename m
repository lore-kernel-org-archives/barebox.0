Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PY3Hi-0005Xy-BK
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 21:10:15 +0000
Message-ID: <4D1BA3B3.1020400@eukrea.com>
Date: Wed, 29 Dec 2010 22:10:11 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <39A4B204C321D34DA3490E3B119D5A6C68BF775745@SBS2008.wellsense.local>,
	<4D1B9E92.2010403@eukrea.com>
	<39A4B204C321D34DA3490E3B119D5A6C68BF775746@SBS2008.wellsense.local>,
	<4D1BA102.9030509@eukrea.com>
	<39A4B204C321D34DA3490E3B119D5A6C68BF775747@SBS2008.wellsense.local>
In-Reply-To: <39A4B204C321D34DA3490E3B119D5A6C68BF775747@SBS2008.wellsense.local>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: 4096 page NAND boot support on iMX35 PDK board
To: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 29/12/2010 22:05, Boaz Ben-David wrote:
> external

so you have to update this function to your hardware (ie : to add 4k page 
support in the nand driver).

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
