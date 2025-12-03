Delivery-date: Wed, 03 Dec 2025 10:40:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQjLL-007T7y-1c
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 10:40:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQjLK-0001tb-UU
	for lore@pengutronix.de; Wed, 03 Dec 2025 10:40:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AmR0TOrHFjrrpcmzYlVP3m9fkrK79OGQg/pCdd1egxY=; b=lASkNtT840pjKzIEzMVlBupSL0
	i2t4azFdKMRN+pJH6bveEK5IHTafpX0z7bBXq18wDHRaLEyaYMreRBkBQa8uSEX3kw8w4xf/w96Ff
	R0j8Xw1ynt940yp0KXEaCcuz45e39x6lKZEUcNRi298ZIZIvhooBCLwGdtBr6pfuoZwYMOyuVKCUJ
	3dbmCsomb6C+NjxE6IMyePcPywkP3OM++tjXJc8639Fn6ORWiAmw0J7P+lMwPVu+H1GBGr2odxmFi
	qvkoN1KyNyEtFE45am+lSz+2Glk916ueu8Fpu1kNEBNhnCmEIT728FXkHzUi32HJ+Tg2UwO5AUJ7D
	9s+7qspA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQjKu-00000006Olz-2LOD;
	Wed, 03 Dec 2025 09:39:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQjKs-00000006Ole-0KDA
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 09:39:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQjKq-0001lo-EU; Wed, 03 Dec 2025 10:39:44 +0100
Message-ID: <f9929a59-f24e-4996-b826-422e52360ef7@pengutronix.de>
Date: Wed, 3 Dec 2025 10:39:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Fabian Pflug <f.pflug@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20251128150434.3842713-1-f.pflug@pengutronix.de>
 <20251201072452.1829564-1-f.pflug@pengutronix.de>
 <aTAD8x0vakc7ESTx@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aTAD8x0vakc7ESTx@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_013946_124821_C89C0CCA 
X-CRM114-Status: GOOD (  17.53  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v5 0/4] make the root= command line parameter variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/3/25 10:33 AM, Sascha Hauer wrote:
> Hi Fabian,
> 
> Could you next time send a new revision as new thread rather than as a
> reply to the previous revision? That makes it easier to keep track.

I think that's also the reason why

b4 diff '<aTAD8x0vakc7ESTx@pengutronix.de>'

Doesn't work on this series.

Cheers,
Ahmad

> 
> Sascha
> 
> On Mon, Dec 01, 2025 at 08:20:56AM +0100, Fabian Pflug wrote:
>> Changes in v5:
>> Updated documentation for nfs
>> Added documentation about new bootm variable
>> Fixed commit message for last patch
>>
>> Fabian Pflug (4):
>>   block.h: renamed get_rootargs to get_root
>>   fs: split rootargs into root and options
>>   bootm: use new api to get kernel command line params
>>   bootm: introduce bootm.root_param variable
>>
>>  Documentation/filesystems/nfs.rst             | 10 +--
>>  .../migration-guides/migration-master.rst     | 18 ++++++
>>  Documentation/user/security.rst               | 16 +++++
>>  common/block.c                                | 37 ++++++++---
>>  common/bootm.c                                | 37 +++++++----
>>  drivers/mci/mci-core.c                        |  4 +-
>>  fs/9p/vfs_super.c                             |  6 +-
>>  fs/fs.c                                       | 61 ++++++++++---------
>>  fs/nfs.c                                      |  4 +-
>>  fs/squashfs/squashfs.c                        | 13 ++--
>>  fs/ubifs/ubifs.c                              | 12 ++--
>>  include/block.h                               |  7 ++-
>>  include/bootargs.h                            |  2 +
>>  include/bootm.h                               |  1 +
>>  include/fs.h                                  |  7 ++-
>>  15 files changed, 160 insertions(+), 75 deletions(-)
>>  create mode 100644 Documentation/migration-guides/migration-master.rst
>>
>> -- 
>> 2.47.3
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



