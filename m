Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8ENC-0006MC-PG
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 20:35:35 +0000
Message-ID: <54AAF506.4020501@free-electrons.com>
Date: Mon, 05 Jan 2015 17:33:10 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
References: <54A98B8F.2040405@free-electrons.com>	<1511697250.362148406.1420454678099.JavaMail.root@zimbra1-e1.priv.proxad.net>	<20150105120322.GB4544@pengutronix.de>
 <874ms555pb.fsf@free.fr>
In-Reply-To: <874ms555pb.fsf@free.fr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: add pxa3xx-nand driver
To: Robert Jarzmik <robert.jarzmik@free.fr>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 01/05/2015 05:32 PM, Robert Jarzmik wrote:
> I have an idea here : as barebox is not performance oriented, and as the =
timings
> are minimum guaranteed times between signal swaps, let me try to hard enc=
ode all
> timing with their maximum value.

Sounds a good plan to me.
-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
