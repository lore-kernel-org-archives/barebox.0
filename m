Delivery-date: Thu, 01 Jun 2023 09:37:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4crs-005UY3-0K
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 09:37:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4crp-0003RI-LI
	for lore@pengutronix.de; Thu, 01 Jun 2023 09:37:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UAoiAM/RtmMvk/SS9K5P/cZUzLO/ZT9iTnbd2REbjLw=; b=W5vxToIyJadc+m6EnOplfsyV1t
	PdwpYBNja1cYSstAw6/DEeUXltr1gqWv7v3W6izWidnldec/nHflHmKs2p1qKM3ZmiNOsdbVqdRwa
	roYH9NMUvjJdqeSYUjWqUm84PnGj82V7OlFhqK410hvAGYXMyGetegjx9aH8O1sYwMeYDkRG449/n
	0u5IFJN18vzy489O5Mgmi0qhgnyLP1nog6yYT7GRWfkKhYxSsktLHOQL+h+DVopALgLoqGQBG/8BC
	3o4pvf/ptqjk6yCazlnnTZNasuydDwmnI07O696f0CP8e+JjqCNNnFO8YlQze03EjSjCjHX16TUW3
	2kvLGsvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cqt-002Nk3-1k;
	Thu, 01 Jun 2023 07:36:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cqo-002NjY-1Y
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 07:36:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cqn-0003HN-86; Thu, 01 Jun 2023 09:36:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cqn-0002Cj-1E; Thu, 01 Jun 2023 09:36:01 +0200
Date: Thu, 1 Jun 2023 09:36:01 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230601073601.GH18491@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-11-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-11-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_003602_540383_8B34AAF7 
X-CRM114-Status: GOOD (  18.57  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/18] cdev: have devfs_add_partition return existing
 identical partition, not NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 31, 2023 at 04:59:19PM +0200, Ahmad Fatoum wrote:
> Starting with commit 7f9f45b9bfef ("devfs: Do not create overlapping
> partitions"), any overlapping is disallowed. Overlapping can be useful
> though to bridge the gap between partition described in DT and via
> on-disk partition tables. Let's handle the case of identical partitions
> specially and have it neither be an error or a duplicate partition, but
> instead just return the existing partition. This existing partition will
> be given a device tree node and thus enabling schemes like:
> 
>   &{/state} {
>   	backend = <&state_part>;
>   };
> 
>   &mmc1 {
>          partitions {
>                  compatible = "fixed-partitions";
>                  #address-cells = <2>;
>                  #size-cells = <2>;
> 
>                  state_part: partition@5300000 {
>                          label = "barebox-state";
> 			 /* will be folded with overlapping GPT partition if found */
>                          reg = <0x0 0x5300000 0x0 0x100000>;
>                  };
>          };
>   };

You introduced the DEVFS_PARTITION_FROM_OF earlier this series.
Depending on the order the code runs you end up with either the
partition from the partition table or the one created from OF with
DEVFS_PARTITION_FROM_OF. I am not sure about the implications of
this inconsistency. Can it lead to problems later?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


