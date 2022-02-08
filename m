Delivery-date: Tue, 08 Feb 2022 09:24:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHLnF-009Az5-CQ
	for lore@lore.pengutronix.de; Tue, 08 Feb 2022 09:24:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHLnD-00086q-6e
	for lore@pengutronix.de; Tue, 08 Feb 2022 09:24:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8BmZyV4YsJsiOixXRdEJgxhWfZ0okkaIdD0SW6gMKnA=; b=tpLIhbJCt61p2LlSANrDfpW35j
	dmXcDb+BUuwPJgxXak8Ek/egUOy3+ZnmlUX4ADPuZryPtlo/P9uufPpwyoYMidZQmWfrnuK4gdU6B
	/m85eDL3CBcLnbJM8bqhX9bRg+GioX6q7hsGk7hbico1B/Doh4QIMm58FT4YHHlXLBdvcQnqYxcvh
	A+9DHwF2+VKHkH5EBCcY5WxrnMja9/qjJHpCicT+N9QYrCow6BaGU2D/J0Dz6tScIuJqnQ/hUYwjK
	g0fR+qGfrFsxGFWlHn6l2loBJoDuUTlUAoaUaUv+sqM85mOb393GqQnbrZ4+4KXT3XHadUhf4IRVd
	V5R4NT3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHLlm-00CvN1-EP; Tue, 08 Feb 2022 08:22:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHLix-00Cu0K-0c
 for barebox@lists.infradead.org; Tue, 08 Feb 2022 08:19:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHLiv-00079w-Oz; Tue, 08 Feb 2022 09:19:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHLiv-0003yd-Ff; Tue, 08 Feb 2022 09:19:41 +0100
Date: Tue, 8 Feb 2022 09:19:41 +0100
To: Holger Assmann <h.assmann@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220208081941.GN18637@pengutronix.de>
References: <20220207173239.772421-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220207173239.772421-1-h.assmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:19:31 up 59 days, 17:05, 81 users,  load average: 0.23, 0.18, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_001943_089310_39B1C01D 
X-CRM114-Status: GOOD (  34.60  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3] fs: jffs2: fix error when reading blocks with offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 07, 2022 at 06:32:39PM +0100, Holger Assmann wrote:
> This bug resulted in a panic when trying to read a file partially with
> an offset, e.g. when starting Linux. In such a case a header is loaded
> by a separate call of jffs2_read(), which then copies only the first n
> bytes out of the respective block.
> When the remaining data of the block is then subsequently going to to be
> read the system deviates in its behaviour from that under Linux by not
> calling jffs2_read_inode_range() in a 4k-alignment, but with an offset.
> 
> jffs2_read_inode_range() originates from the Linux jffs2 driver. When
> being called with an offset it still reads 4096 bytes of data and
> eventually returns fragments of two consecutive blocks. jffs2_read()
> then reads this result whilst again applying the offset, therefore
> returning faulty data.
> 
> We fix that problem by calling jffs2_get_block() without an offset and
> therefore reading the whole block. The offset is then applied when we
> actually perform memcpy with the returned buffer. This fix might also
> increase the performance since the respective block is likely to be
> cached from the previous call.
> 
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

> 
> Changes v1 -> v2:
>  - removed stray spaces
>  - added review acknowledgement
> Changes v2 -> v3:
>  - use actual "JFFS2_BLOCK_SIZE" instead of "4096"
> 
>  fs/jffs2/fs.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
> index a267ec0669..0c57f1d07f 100644
> --- a/fs/jffs2/fs.c
> +++ b/fs/jffs2/fs.c
> @@ -74,6 +74,9 @@ static int jffs2_get_block(struct jffs2_file *jf, unsigned int pos)
>  	struct jffs2_inode_info *f = JFFS2_INODE_INFO(jf->inode);
>  	int ret;
>  
> +	/* pos always has to be 4096 bytes aligned here */
> +	WARN_ON(pos % JFFS2_BLOCK_SIZE != 0);
> +
>  	if (pos != jf->offset) {
>  		ret = jffs2_read_inode_range(c, f, jf->buf, pos,
>  					     JFFS2_BLOCK_SIZE);
> @@ -98,12 +101,13 @@ static int jffs2_read(struct device_d *_dev, FILE *f, void *buf,
>  	/* Read till end of current block */
>  	ofs = f->pos % JFFS2_BLOCK_SIZE;
>  	if (ofs) {
> -		ret = jffs2_get_block(jf, pos);
> +		ret = jffs2_get_block(jf, f->pos - ofs); /* Align down block */
>  		if (ret)
>  			return ret;
>  
>  		now = min(size, JFFS2_BLOCK_SIZE - ofs);
>  
> +		/* Complete block has been read, re-apply ofset now */
>  		memcpy(buf, jf->buf + ofs, now);
>  		size -= now;
>  		pos += now;
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

