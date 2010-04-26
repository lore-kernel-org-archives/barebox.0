Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O6N3Y-0005ZR-FL
	for barebox@lists.infradead.org; Mon, 26 Apr 2010 12:04:58 +0000
Received: by wwb39 with SMTP id 39so808721wwb.36
	for <barebox@lists.infradead.org>; Mon, 26 Apr 2010 05:04:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
References: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
Date: Mon, 26 Apr 2010 14:04:54 +0200
Message-ID: <t2vba216b431004260504y8da1046ep7344b80d269e2564@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: some more patches for -next
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 23, 2010 at 11:03 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi All,
>
> Here are some more patches for -next, some of which deserving some
> testing from others, namely the rewrite of the ARM startup code.
[..]

Sascha,

 the pu branch still builds and boots on a MX25PDK
(freescale_mx25_3stack) with these commits:


barebox 2010.04.0-00144-gc8a1248-dirty (Apr 26 2010 - 13:37:32)

Board: Freescale MX25 3Stack
ehci@ehci0: USB EHCI 1.00
NAND device: Manufacturer ID: 0xec, Chip ID: 0xd5 (Samsung NAND 2GiB 3,3V 8-bit)
Scanning device for bad blocks
Bad eraseblock 0 at 0x00000000
[...]
Bad eraseblock 950 at 0x0ed80000
Bad eraseblock 951 at 0x0edc0000
envfs: wrong magic on /dev/env0
no valid environment found. Using default environment
Malloc space: 0x83b00000 -> 0x83f00000 (size  4 MB)
Stack space : 0x83af8000 -> 0x83b00000 (size 32 kB)
running /env/bin/init...

Hit any key to stop autoboot:  0
phy0: Link is up - 10/Half

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
