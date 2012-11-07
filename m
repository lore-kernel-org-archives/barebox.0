Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TWFFl-0003Xf-6c
 for barebox@lists.infradead.org; Wed, 07 Nov 2012 23:41:50 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1352276585-20262-1-git-send-email-antonynpavlov@gmail.com>
Date: Thu, 08 Nov 2012 00:41:38 +0100
In-Reply-To: <1352276585-20262-1-git-send-email-antonynpavlov@gmail.com>
 (Antony Pavlov's message of "Wed, 7 Nov 2012 12:23:05 +0400")
Message-ID: <87pq3pt1zh.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] make new y-modem (PATCH v2) work on big-endian CPU
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Antony Pavlov <antonynpavlov@gmail.com> writes:

> apply this commit after that one:
>
>     Author: Robert Jarzmik <robert.jarzmik@free.fr>
>     Date:   Sun Nov 4 18:55:23 2012 +0100
>
>         commands: change Y-Modem implementation
> ---
>  lib/xymodem.c |   13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/lib/xymodem.c b/lib/xymodem.c
> index 1469a9a..0e82ce2 100644
> --- a/lib/xymodem.c
> +++ b/lib/xymodem.c
> @@ -257,8 +257,8 @@ static ssize_t xy_read_block(struct xyz_ctxt *proto, struct xy_block *blk,
>  	uint64_t timeout)
>  {
>  	ssize_t rc, data_len = 0;
> -	unsigned char hdr, seqs[2], crcs[2];
> -	int crc = 0, hdr_found = 0;
> +	unsigned char hdr, seqs[2];
> +	uint16_t crc = 0, hdr_found = 0;
>  	uint64_t start = get_time_ns();
>  
>  	while (!hdr_found) {
> @@ -308,12 +308,13 @@ static ssize_t xy_read_block(struct xyz_ctxt *proto, struct xy_block *blk,
>  
>  	switch (proto->crc_mode) {
>  	case CRC_ADD8:
> -		rc = xy_gets(proto->cdev, proto->fifo, crcs, 1, timeout);
> -		crc = crcs[0];
> +		rc = xy_gets(proto->cdev, proto->fifo,
> +				(unsigned char *)&crc, 1, timeout);
This doesn't look good to me.
In big-endian arch, suppose you read 0xab as the crc.
In that case, won't crc be equal to 0xab00 instead of 0x00ab in this code ? If
that's the case, the previous code was right ...

>  		break;
>  	case CRC_CRC16:
> -		rc = xy_gets(proto->cdev, proto->fifo, crcs, 2, timeout);
> -		crc = be16_to_cpu(*(uint16_t *)crcs);
> +		rc = xy_gets(proto->cdev, proto->fifo,
> +				(unsigned char *)&crc, 2, timeout);
> +		crc = be16_to_cpu(crc);

Does that mean that the code up there doesn't work on big endian ? I'm really
puzzled, as the sender sends in big endian, the xy_gets() receives the bytes
into crcs[2], and the be16_to_cpu() should be a no-op ...

I think that we should do this simpler :
  crc = crcs[0] << 8 + crcs[1]

I'll put that into my github branch for testing.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
