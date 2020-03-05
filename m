Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9wuX-0003RA-37
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 20:16:03 +0000
References: <20200228204823.28415-1-dg@emlix.com>
 <20200228204823.28415-3-dg@emlix.com> <20200305075002.GO3335@pengutronix.de>
From: =?UTF-8?Q?Daniel_Gl=c3=b6ckner?= <dg@emlix.com>
Message-ID: <ca2405ef-b084-c12f-ec4c-806ecd7fd144@emlix.com>
Date: Thu, 5 Mar 2020 21:15:57 +0100
MIME-Version: 1.0
In-Reply-To: <20200305075002.GO3335@pengutronix.de>
Content-Language: de-DE
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] fastboot net: implement fastboot over UDP
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Edmund Henniges <eh@emlix.com>

Am 03/05/20 um 08:50 schrieb Sascha Hauer:
>> +		const char *fastboot_files =3D getenv("nv.fastboot.files");
> =

> Please don't use nv variables directly, always use the corresponding
> global variable.
> =

> For USB fastboot we have a variable global.usbgadget.fastboot_function
> for the same purpose. We should probably use the same variable for both
> fastboot variants and maybe also for DFU. How about moving the variable
> name out of that usbgadget namespace and use something like
> global.update_partitions? There might be better names...

Since there is also the question what to do with global.usbgadget
.fastboot_max_download_size, we could introduce a new namespace for
fastboot and call the variables global.fastboot.update_partitions
and global.fastboot.max_download_size. Although I would prefer
"partitions" to "update_partitions".

> Interestingly this only became a problem with my change, I tested your
> fastboot net patches as-is and it works fluently.

Maybe it works with the fastboot code because the poller is registered
in a very late initcall. Or did it cause problems for you after all
initcalls had run?

> My
> favourite solution would be to move net_poll() inside a poller indeed,
> but I currently have no good idea how to fix this mdio read problem.

How about wrapping the body of mdiobus_read, mdiobus_write, eth_send,
eth_rx, eth_check_open, and maybe even mdiobus_register, eth_register,
and eth_unregister in

net_entered++;
...
net_entered--;

and then immediately returning from net_poll if net_entered !=3D 0 on
entry? That's similar to how poller_call prevents reentrance.


Now that I have shifted the focus to poller_call, how about changing that
function to allow being entered N times (with N configurable since stack
space is limited) to allow fastboot to send keep alive messages and the
watchdog to be serviced? We could add a flag to poller_struct that tells
poller_call to skip this poller when entered again when its function is
already running. The keep alives would then be sent from another poller.

Hm, I think I'll rewrite fastboot_poll to return while waiting for more
download data. Then only the command execution can trigger a watchdog
reset.

Best regards,

  Daniel

-- =

Dipl.-Math. Daniel Gl=F6ckner, emlix GmbH, http://www.emlix.com
Fon +49 551 30664-0, Fax +49 551 30664-11,
Gothaer Platz 3, 37083 G=F6ttingen, Germany
Sitz der Gesellschaft: G=F6ttingen, Amtsgericht G=F6ttingen HR B 3160
Gesch=E4ftsf=FChrung: Heike Jordan, Dr. Uwe Kracke
Ust-IdNr.: DE 205 198 055

emlix - your embedded linux partner

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
