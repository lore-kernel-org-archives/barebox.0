Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YBJk9-0007pi-70
 for barebox@lists.infradead.org; Wed, 14 Jan 2015 08:56:02 +0000
Date: Wed, 14 Jan 2015 09:55:32 +0100 (CET)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Message-ID: <805818852.49418.1421225733074.JavaMail.open-xchange@oxbaltgw09.schlund.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Boot speed on 600MHz AM3354
To: barebox@lists.infradead.org, andy.pont@sdcsystems.com

Dear Andy,
we have another custom hardware platform that uses a 800MHz TI AM3359. Currently
we store only barebox-MLO and the barebox itself in SPI NOR. The kernel is
loaded over USB.

When I checked the SPI bus during boot, I found that the ROM Code loads the
first part of the barebox in chunks of 4 byte with a break of 1.7us between each
4-byte-packet, while the first part of the barebox (called "barebox_MLO") loads
the second part "byte by byte" with a break of 500ns between the bytes. Adding
the transfer time of 320ns per byte will result in a transfer rate of 1000/820 =
1,2MByte/s.
This means that, if we would ever boot our 2,7MByte kernel from the SPI NOR, it
would take at least 2.3 seconds to load it from the flash into the RAM.

I don't have so much experience with U-Boot, but I'd expect similar figures
there.

Kind regards,
 Rolf

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
