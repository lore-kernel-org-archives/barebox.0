Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8GMA-0003Up-Ji
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 22:42:39 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <54A98B8F.2040405@free-electrons.com>
 <1511697250.362148406.1420454678099.JavaMail.root@zimbra1-e1.priv.proxad.net>
 <20150105120322.GB4544@pengutronix.de> <874ms555pb.fsf@free.fr>
 <54AAF506.4020501@free-electrons.com>
Date: Mon, 05 Jan 2015 23:42:09 +0100
In-Reply-To: <54AAF506.4020501@free-electrons.com> (Ezequiel Garcia's message
 of "Mon, 05 Jan 2015 17:33:10 -0300")
Message-ID: <87vbkk4zpa.fsf@free.fr>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: add pxa3xx-nand driver
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org

Ezequiel Garcia <ezequiel.garcia@free-electrons.com> writes:

> On 01/05/2015 05:32 PM, Robert Jarzmik wrote:
>> I have an idea here : as barebox is not performance oriented, and as the timings
>> are minimum guaranteed times between signal swaps, let me try to hard encode all
>> timing with their maximum value.
>
> Sounds a good plan to me.

And unfortunately it doesn't work. Too relaxed timings imply "fake" bytes
returned by the flash NAND to the NAND controler.

So I have to keep a table of timings at least.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
