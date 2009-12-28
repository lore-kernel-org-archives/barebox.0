Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NPLXp-0004bu-LU
	for barebox@lists.infradead.org; Mon, 28 Dec 2009 19:46:23 +0000
Date: Mon, 28 Dec 2009 20:43:11 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20091228194311.GA22533@pengutronix.de>
References: <4B38F36A.6080305@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4B38F36A.6080305@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: i.MX25 NAND status
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Eric,

On Mon, Dec 28, 2009 at 07:05:30PM +0100, Eric B=E9nard wrote:
> What is the status of current barebox on i.MX25 using NAND boot ?

We have it running from NAND on a custom board here, but I assume the
mainline might not have all necessary patches. As we went to the custom
hardware relatively early, nobody took the time to polish the PDK port.

However, most of our staff is on holiday right now, so we can check next
week.

Robert
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
