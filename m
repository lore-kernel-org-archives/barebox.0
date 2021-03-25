Delivery-date: Thu, 25 Mar 2021 14:08:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPPio-000849-KN
	for lore@lore.pengutronix.de; Thu, 25 Mar 2021 14:08:22 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPPin-0003tZ-Nv
	for lore@pengutronix.de; Thu, 25 Mar 2021 14:08:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=//YF9l1Q34KxUaA2R/R7vOYXsQZckBJ0xATAK4BBmRc=; b=IRSjyCJd4mTzv0/HNUyPtfkqV
	WZKkrAEZF7x+vum1wCTgEKWt8ahJRVwhERI1bvlbQFpYgjZhXPxA+ehygbcEKdlWvk8FRrJep9Vhj
	L0B3frj/3OxpRj3d/v2STiZKdMIhBnRP1EZ+ki11ixF4w2TaTu7ow7qR/T8/fH4iHe0DQ4o9KNegD
	pSJjyJC1LP/JyRnW4dN8zujaStkrfcP+p57rTC3+CEOeMRjrwg6rBwUMvb/S8CFxczTRXQAp3bpAl
	RUqbo+swZ3BHF3QiO7yOyWHLZmkt9Cm9CcMzdtsxhepxm81AKk67kibDcR5bwRpBcvXGTmuhdwkWV
	Kplwua27w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPPhu-001Tcs-Ru; Thu, 25 Mar 2021 13:07:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPPfL-001Syn-MQ
 for barebox@lists.infradead.org; Thu, 25 Mar 2021 13:06:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lPPfL-00034l-4K; Thu, 25 Mar 2021 14:04:47 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lPPfK-0002OR-Ra; Thu, 25 Mar 2021 14:04:46 +0100
Date: Thu, 25 Mar 2021 14:04:46 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Message-ID: <20210325130446.GC609@pengutronix.de>
References: <20210324121928.7380-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210324121928.7380-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:59:08 up 35 days, 16:23, 95 users,  load average: 0.27, 0.37, 0.39
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_130648_213449_B08F8E46 
X-CRM114-Status: GOOD (  23.85  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
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

ret is a 32bit type. What about drives > 2T?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

