Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [212.27.42.4] (helo=smtp4-g21.free.fr)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NPZv1-0008Oo-OC
	for barebox@lists.infradead.org; Tue, 29 Dec 2009 11:07:20 +0000
Message-ID: <4B39E2B8.7010401@eukrea.com>
Date: Tue, 29 Dec 2009 12:06:32 +0100
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <4B38F36A.6080305@eukrea.com>
	<20091228194311.GA22533@pengutronix.de>
In-Reply-To: <20091228194311.GA22533@pengutronix.de>
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
Subject: Re: i.MX25 NAND status
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Robert,

Robert Schwebel a =E9crit :
> On Mon, Dec 28, 2009 at 07:05:30PM +0100, Eric B=E9nard wrote:
>> What is the status of current barebox on i.MX25 using NAND boot ?
> =

> We have it running from NAND on a custom board here, but I assume the
> mainline might not have all necessary patches. As we went to the custom
> hardware relatively early, nobody took the time to polish the PDK port.
> =

> However, most of our staff is on holiday right now, so we can check next
> week.
> =

OK, I managed to get the MX25 NAND boot working using the =

CONFIG_ARCH_IMX_INTERNAL_BOOT option (with the proper DCD table for my =

board low level init).
I'll clean our board support and send it to the list in January (at =

least I hope so ;-).

Thanks,
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
