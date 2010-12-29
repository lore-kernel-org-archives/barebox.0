Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PY36b-0005RT-8x
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 20:58:45 +0000
Message-ID: <4D1BA102.9030509@eukrea.com>
Date: Wed, 29 Dec 2010 21:58:42 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <39A4B204C321D34DA3490E3B119D5A6C68BF775745@SBS2008.wellsense.local>,
	<4D1B9E92.2010403@eukrea.com>
	<39A4B204C321D34DA3490E3B119D5A6C68BF775746@SBS2008.wellsense.local>
In-Reply-To: <39A4B204C321D34DA3490E3B119D5A6C68BF775746@SBS2008.wellsense.local>
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

On 29/12/2010 21:51, Boaz Ben-David wrote:
> Thanks for the quick response, what I would like to know is where is the actual entry point to the code,
> i.e. the "main()" function...
> I'm asking this because when I try to boot barebox on my board with the different NAND I don't even get a prompt on
> the serial line so I figured the image is not read properly.
>
check in this file, the imx_nand_load_image function where only 512 & 2k nand 
are handled.

Are you using internal or external boot ?

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
