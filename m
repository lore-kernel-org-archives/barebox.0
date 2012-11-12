Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.gw-instruments.de ([82.144.60.34]
 helo=redbean.intranet.gw-instruments.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TXsBi-0001kt-Td
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 11:28:23 +0000
Date: Mon, 12 Nov 2012 12:22:33 +0100 (CET)
From: Peter Wippich <pewi@gw-instruments.de>
In-Reply-To: <20121112083339.GQ10369@pengutronix.de>
Message-ID: <alpine.LSU.2.00.1211121220380.14365@redbean.intranet.gw-instruments.de>
References: <alpine.LSU.2.00.1211061440560.27068@redbean.intranet.gw-instruments.de>
 <20121112083339.GQ10369@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: TX53: Not Bootable from next tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, g@pengutronix.de




On Mon, 12 Nov 2012, Sascha Hauer wrote:

> On Tue, Nov 06, 2012 at 02:49:06PM +0100, Peter Wippich wrote:
>>
>> Hi,
>>
>> got the same problem here. Double checked Board Version (8030) and
>> that I have the right binary (compressed with flash header). After
>> flashing and reset nothing happens....
>
> I'm back in the office now and realized that we have the 1011
> revision in our remotelab. That at least explains why I can't reproduce
> this issue. Unfortunately I can't find the 8030 revision anywhere in the
> office, I'll wait for my collegue.
> In the meantime, could you try removing the call to
> imx53_init_lowlevel() and try booting 2nd stage (from U-Boot or
> redboot)?
>
> Sascha


Hi Sascha,

bad enough my test board is out for some customer tests. I'll try a second 
stage boot as soon as it is back.

Best regards,

Peter


>
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>


|       Peter Wippich                   Voice: +49 30 46776411          |
|       G&W Instruments GmbH            fax:   +49 30 46776419          |
|       Gustav-Meyer-Allee 25, Geb. 12  Email: pewi@gw-instruments.de   |
|       D-13355 Berlin  / Germany                                       |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
