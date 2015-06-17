Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z56B3-0003l1-Fx
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 05:46:22 +0000
Date: Wed, 17 Jun 2015 07:45:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150617054557.GW6325@pengutronix.de>
References: <1434005650-28131-1-git-send-email-s.hauer@pengutronix.de>
 <1434005650-28131-2-git-send-email-s.hauer@pengutronix.de>
 <87bngli13j.fsf@dell.be.48ers.dk>
 <20150615051202.GJ6325@pengutronix.de>
 <87h9q9mob7.fsf@dell.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h9q9mob7.fsf@dell.be.48ers.dk>
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
Subject: Re: [PATCH 1/4] Add Reliable Asynchronous Transfer Protocol
To: Peter Korsgaard <peter@korsgaard.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jun 15, 2015 at 09:19:08AM +0200, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> Hi,
> 
> >> > +	crc_expect = cyg_crc16(data, len);
>  >> 
>  >> Why crc16? RFC916 states that the checksum is the inverted 1s complement
>  >> 16bit sum, E.G. like TCP/UDP/IP header checksums:
> 
>  > Indeed CRC16 is not correct here according to RFC916. We can implement
>  > the original checksum algorithm, I'm not sure if that's a good idea
>  > though. Plain checksumming does not detect lost 0 characters.
> 
> True, but missing/extra 0 characters would normally get caught by the
> length mismatch, so I'm not sure it is a real problem.

You're probably right. We'll change it to the checksum algorithm
according to RFC916.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
