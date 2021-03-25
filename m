Delivery-date: Thu, 25 Mar 2021 14:16:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPPqD-00084p-Nb
	for lore@lore.pengutronix.de; Thu, 25 Mar 2021 14:16:01 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPPqC-0005Fp-SF
	for lore@pengutronix.de; Thu, 25 Mar 2021 14:16:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YjjWKMLB7y1nxJVhjleppjzxR0F9srksLNSx1AWqH4g=; b=qcejnQRlGoigyu/PYoJNyg6g6
	NZRtswuuh42T30EVl+IU2vxHmaw0ATG1s5nWw4jVsHxnKxy0CLF7v+UaQA78yYW21s9f3nUwhUXwe
	ANUgCyeQroBp4/QavIW6Pp9q2VcdisbiHSurs7me+PBMFr/M/mzLYaexxZQbx3OCS8AywEZfX5PL6
	slE2oXFETjd3dzLLh7mQOoQERfexr///ZYwuuSySBsvd84Lp+/BY6EOtCnMNb5rq1fMmK6rrmZ/Eg
	xO+RiMSxd0l0OYBx3JrV6ddBH7DMZyxFXhxh461yzcbZdKWve+vQIGfOxst9LvQ9bHYeswPExPJqS
	svnRobFEQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPPpF-001VjG-7x; Thu, 25 Mar 2021 13:15:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPPp5-001ViC-LI
 for barebox@lists.infradead.org; Thu, 25 Mar 2021 13:14:53 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lPPp5-0004p5-1s; Thu, 25 Mar 2021 14:14:51 +0100
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
References: <20210324121928.7380-1-a.fatoum@pengutronix.de>
 <20210325130446.GC609@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <133339fd-ff71-db71-d6e6-d351297ac784@pengutronix.de>
Date: Thu, 25 Mar 2021 14:14:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210325130446.GC609@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_131451_899267_53C0E048 
X-CRM114-Status: GOOD (  21.73  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] fs: ext4: fix bogus behavior on failure to read
 ext4 block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 25.03.21 14:04, Sascha Hauer wrote:
> On Wed, Mar 24, 2021 at 01:19:28PM +0100, Ahmad Fatoum wrote:
>> The conversion of blknr from a signed 32-bit to an unsigned 64-type resulted
>> in the check for error to never return true. Fix this.
>>
>> Affected configuration would behave incorrectly when served with invalid
>> blocks. Instead of aborting and having the filesystem bubble up an error
>> code, it would return invalid data. As there is no ext4 write support,
>> this wouldn't lead to ext4 data corruption however.
>>
>> Reported-by: Bastian Krause <bst@pengutronix.de>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  fs/ext4/ext4fs.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/fs/ext4/ext4fs.c b/fs/ext4/ext4fs.c
>> index 54349aad3f3f..344d423fd9c4 100644
>> --- a/fs/ext4/ext4fs.c
>> +++ b/fs/ext4/ext4fs.c
>> @@ -74,11 +74,11 @@ loff_t ext4fs_read_file(struct ext2fs_node *node, loff_t pos,
>>  		loff_t blockend = blocksize;
>>  		loff_t skipfirst = 0;
>>  
>> -		blknr = read_allocated_block(node, i);
>> -		if (blknr < 0)
>> -			return blknr;
>> +		ret = read_allocated_block(node, i);
>> +		if (ret < 0)
>> +			return ret;
> 
> ret is a 32bit type. What about drives > 2T?

the first if-clause has a 64-bit type coerced to signed long, but the
rest will only return up to 32-bit, so this needs a bit more investigation.

The fix is correct regardless IMO, so it should go into master.
Expanding the type can go into next then.

Cheers,
Ahmad

> 
> Sascha
> 
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

