Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRL8g-0003Xv-QG
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 13:39:41 +0000
Message-ID: <1425044351.2673.6.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 27 Feb 2015 14:39:11 +0100
In-Reply-To: <20150227131436.GA2977@lws-weitzel2@phytec.de>
References: <1425030964-45167-1-git-send-email-j.weitzel@phytec.de>
 <1425037644.2673.2.camel@pengutronix.de>
 <20150227131436.GA2977@lws-weitzel2@phytec.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] net: cpsw: invalidate complete buffer
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 27.02.2015, 14:14 +0100 schrieb Jan Weitzel:
> On Fri, Feb 27, 2015 at 12:47:24PM +0100, Lucas Stach wrote:
> > Am Freitag, den 27.02.2015, 10:56 +0100 schrieb Jan Weitzel:
> > > Without invalidating the complete buffer before giving it to
> > > dma_inv_range, we got strange packets.
> > > 
> > 
> > This is most likely not the correct fix. If this helps then our
> > dma_inv_range functions aren't working properly, which would be really
> > bad. How do those "strange packets" look like?
> > 
> We saw the problem with tftp transfers of a 76 byte image. Debug print in
> tftp_handler
> 
> good:
> tftp_handler: len:76 blocksize:1432 to fifo
> 00000000: 06 08 ba de 7d 27 e1 2c 52 2f cf 77 e0 d3 23 da    ....}'.,R/.w..#.
> 00000010: 62 d4 42 3e 03 20 3a c2 51 aa 51 15 73 be 9e 21    b.B>. :.Q.Q.s..!
> 00000020: 03 ac 78 a9 e3 4f cd 4d 6d ba 93 fe 83 dc fe 82    ..x..O.Mm.......                                                         
> 00000030: bb f8 24 29 6e 6f 53 1c 91 52 4b 77 1b 72 ff a0    ..$)noS..RKw.r..                                                         
> 00000040: 5b 98 1c 20 28 09 0f 4c 93 3c 22 08                [.. (..L.<".     
> 
> bad:
> tftp_handler: len:76 blocksize:1432 to fifo:                                                                                          
> 00000000: 06 08 ba de 7d 27 e1 2c 52 2f cf 77 e0 d3 23 da    ....}'.,R/.w..#.                                                         
> 00000010: 62 d4 6b 73 69 7a 65 00 31 34 33 32 00 b0 1b d1    b.ksize.1432....                                                         
> 00000020: 5b d4 78 a9 e3 4f cd 4d 6d ba 93 fe 83 dc fe 82    [.x..O.Mm.......
> 00000030: bb f8 24 29 6e 6f 53 1c 91 52 4b 77 1b 72 ff a0    ..$)noS..RKw.r..
> 00000040: 5b 98 1c 20 28 09 0f 4c 93 3c 22 08                [.. (..L.<".
> 
> 
> The ethernet package has 122 Bytes and the error in the received file is on
> offset 18. The data "b.ksize.1432" comes also from tftp packets.
> 
This doesn't look like a problem to invalidate the cache, but more like
writeback of old cachelines while the hardware owns the buffer. Can you
try the series "Phasing out direct usage of asm/mmu.h on ARM" and see if
this still happens there? If I'm correct this series should fix this
problem.

I'll send an updated version of this series in the evening, but you
should be able to correct the typo in cpsw.c yourself for testing. :)

Regards,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
