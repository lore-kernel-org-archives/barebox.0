Delivery-date: Mon, 29 Mar 2021 18:52:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQv7z-00068k-Bw
	for lore@lore.pengutronix.de; Mon, 29 Mar 2021 18:52:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQv7y-0004qu-Jj
	for lore@pengutronix.de; Mon, 29 Mar 2021 18:52:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8vJAxXvHMXtngYa9F+10TEmUaC6DEeZffGKxfPOpa48=; b=m0W55rNj5RpB9qdn6vG9UY15C
	8c/nMNYpBO/gZvUWoh/AjWnp0NVEcgOWB1LE90Tu3ooKvwvLbTLh8wZfx4NgjlM3S6qJB7VaCq1tR
	Q66g05SgHJOaDBjjBXnxiZZFrTZ8il6GMMG1IhjxSHVQNIJrZb2KexoMqwoTWlxjpj18YmQmKDe5G
	NlVN0YHzHqLsQCIrfZwNGL73LzbKsd/n5qXcWZV1VJsSIQShDBOkgmTkKm5Ut/IjpGaZEqyxzl8gz
	T583rInqHHwlogrfNdH0oJw0IugTG1+qezY8jdINZXND+Z9duwte2hx9D4nS9RNU6WMd0Qv6eIoSB
	ygulzIz9A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQv5b-000n2P-SG; Mon, 29 Mar 2021 16:50:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQodb-000Yjf-LB
 for barebox@desiato.infradead.org; Mon, 29 Mar 2021 09:56:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=GQEzl7SG1dcJhZns0GYKsMgkSl0NO0deHTXWYUZnV3s=; b=GL0+Oe19mSt7iSj0GCJIEaBSOM
 jeV2JV7NrqBnY26BzDoWG1Pjom09AqNnGPEKSdbt9aZZDOH/lW8gsD/I8UqX7U8z7+tC9hxhIJK4V
 wjEXTOII1QA6Z7PM+DiRQse/m4lUvRdfMsx2Ma2aPhun1lamwaCAc6n6Bbrb2VR6/LBVX0Y5X8VkC
 gjlld8gm+3CDkhWneOXhdykzXUqTy7rI9RMFVQJriS7ZxC1tVqzIIHNK54wHSQ13qnN4JKFdh/LVl
 UK1smBdKqMpOcr7gINiR71uXdYv5WyTuCi+XkhilH2rVScxFDNPGZuT2/hYT2L9XRjOYMXyFNRqpN
 RQVmvPFw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQmcI-001CL9-QZ
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 07:47:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lQmcD-00039D-1h; Mon, 29 Mar 2021 09:47:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lQmcC-0004JO-N1; Mon, 29 Mar 2021 09:47:12 +0200
Date: Mon, 29 Mar 2021 09:47:12 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Message-ID: <20210329074712.GE609@pengutronix.de>
References: <20210324121928.7380-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210324121928.7380-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:47:04 up 39 days, 11:10, 87 users,  load average: 0.84, 0.45, 0.30
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_084722_910048_5CF06181 
X-CRM114-Status: GOOD (  17.18  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] fs: ext4: fix bogus behavior on failure to read
 ext4 block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 24, 2021 at 01:19:28PM +0100, Ahmad Fatoum wrote:
> The conversion of blknr from a signed 32-bit to an unsigned 64-type resulted
> in the check for error to never return true. Fix this.
> 
> Affected configuration would behave incorrectly when served with invalid
> blocks. Instead of aborting and having the filesystem bubble up an error
> code, it would return invalid data. As there is no ext4 write support,
> this wouldn't lead to ext4 data corruption however.
> 
> Reported-by: Bastian Krause <bst@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/ext4/ext4fs.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/ext4/ext4fs.c b/fs/ext4/ext4fs.c
> index 54349aad3f3f..344d423fd9c4 100644
> --- a/fs/ext4/ext4fs.c
> +++ b/fs/ext4/ext4fs.c
> @@ -74,11 +74,11 @@ loff_t ext4fs_read_file(struct ext2fs_node *node, loff_t pos,
>  		loff_t blockend = blocksize;
>  		loff_t skipfirst = 0;
>  
> -		blknr = read_allocated_block(node, i);
> -		if (blknr < 0)
> -			return blknr;
> +		ret = read_allocated_block(node, i);
> +		if (ret < 0)
> +			return ret;
>  
> -		blknr = blknr << log2blocksize;
> +		blknr = ret << log2blocksize;
>  
>  		/* Last block.  */
>  		if (i == blockcnt - 1) {
> -- 
> 2.29.2
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

