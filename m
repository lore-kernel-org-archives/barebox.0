Delivery-date: Wed, 07 Jun 2023 10:07:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6oCb-00E4B3-V7
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 10:07:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6oCZ-0000Dc-Id
	for lore@pengutronix.de; Wed, 07 Jun 2023 10:07:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GjYmd4Q1yXieBzmwfyIvBW5ShSXB4Fm8zg7jbCTc7sw=; b=PEMBO90mpvWoRG9R6o73MvJA5T
	YxxJ9wrWpsfNc/fCW+arM2fGSXGINgvqT9i+lYhvED3QBjqTpx6NDoWF/Gfm3rJMZzqet7+i1/Dz7
	uChFDYGpyHbysapSzCbhDx2O9KJKmQ3mqDr6+7k/9Ry1A61ewbuFsAQPrfDbs+PN2xiz+nJE0nBtK
	K+Htapf4+BuqX7N1uQrw0yNNB3Am4w5S/nJdje7i0DeHLfGP/p/xL8L5MVekhIuLYtoP0qQrrjhff
	EiQGWzCItaEciXmS56+qTsCRV0wXOe/XHaRYX00x18/IP5fy+idpmyOSXFTjc66mGkdLlQdX6K9xz
	SsfFodmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6oBE-004rp4-1j;
	Wed, 07 Jun 2023 08:06:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6oBC-004rnL-04
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 08:06:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6oB8-00004v-RX; Wed, 07 Jun 2023 10:06:02 +0200
Message-ID: <99990d80-08ce-d0ff-f438-6da8c73b6e79@pengutronix.de>
Date: Wed, 7 Jun 2023 10:06:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-11-a.fatoum@pengutronix.de>
 <20230601073601.GH18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230601073601.GH18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_010606_067008_6612831B 
X-CRM114-Status: GOOD (  21.54  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/18] cdev: have devfs_add_partition return existing
 identical partition, not NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 01.06.23 09:36, Sascha Hauer wrote:
> On Wed, May 31, 2023 at 04:59:19PM +0200, Ahmad Fatoum wrote:
>> Starting with commit 7f9f45b9bfef ("devfs: Do not create overlapping
>> partitions"), any overlapping is disallowed. Overlapping can be useful
>> though to bridge the gap between partition described in DT and via
>> on-disk partition tables. Let's handle the case of identical partitions
>> specially and have it neither be an error or a duplicate partition, but
>> instead just return the existing partition. This existing partition will
>> be given a device tree node and thus enabling schemes like:
>>
>>   &{/state} {
>>   	backend = <&state_part>;
>>   };
>>
>>   &mmc1 {
>>          partitions {
>>                  compatible = "fixed-partitions";
>>                  #address-cells = <2>;
>>                  #size-cells = <2>;
>>
>>                  state_part: partition@5300000 {
>>                          label = "barebox-state";
>> 			 /* will be folded with overlapping GPT partition if found */
>>                          reg = <0x0 0x5300000 0x0 0x100000>;
>>                  };
>>          };
>>   };
> 
> You introduced the DEVFS_PARTITION_FROM_OF earlier this series.
> Depending on the order the code runs you end up with either the
> partition from the partition table or the one created from OF with
> DEVFS_PARTITION_FROM_OF. I am not sure about the implications of
> this inconsistency. Can it lead to problems later?

Order is always the same: parse_partition_table is called before
of_parse_partitions. The latter is called on the cdev populated
by blockdevice_register at all call site.

Nevertheless, I have tested that you can reorder parse_partition_table
and of_parse_partitions, but there's a slight change in behavior: The first
partition that's registered is the namesake. I have adapted the code
to call devfs_create_link(overlap, partinfo->name); in that case. That way
we will always have all partitions in /dev regardless of order. The only
thing that will change, is which is a real cdev and which is a link.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



