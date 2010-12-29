Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PY2wY-0005Hv-Be
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 20:48:23 +0000
Message-ID: <4D1B9E92.2010403@eukrea.com>
Date: Wed, 29 Dec 2010 21:48:18 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <39A4B204C321D34DA3490E3B119D5A6C68BF775745@SBS2008.wellsense.local>
In-Reply-To: <39A4B204C321D34DA3490E3B119D5A6C68BF775745@SBS2008.wellsense.local>
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
To: barebox@lists.infradead.org

Hi Boaz,

On 29/12/2010 21:35, Boaz Ben-David wrote:
> I just started using barebox on the iMX35 PDK and I have a bit of a problem.
> My actual board is based on the PDK but with a slight change: the NAND chip is of newer generation and
> has 4k page and 218 oob area.
> I need to add support to boot from 4k pages in barebox and I can't seem to find any documentation on how to do that.
> Can anyone point me in the right direction as to where to find this in the barebox code?
>
check in drivers/mtd/nand/nand_imx.c

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
