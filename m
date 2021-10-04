Delivery-date: Mon, 04 Oct 2021 13:02:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXLjN-0005LS-RX
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 13:02:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXLjM-0006pz-Tf
	for lore@pengutronix.de; Mon, 04 Oct 2021 13:02:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sS+kRydI2QBjinkjWzUxViuhPRzWb6jFAIoarhvOtRM=; b=n74QJJVAMGveGwXTskdad93bxn
	zEqU4c7kkDSX+7aBFKG1wUupHJBx+18PWBLDMyvi8hUww+q9oK13HpfkfS6nBWRBt6LrxvSNhydwM
	vP+FfH5P/blynqz/Wr1K28JLZ6PHw9/MpD+VfQB6HFJqjzHzFvdZpNz+N0gWojdn10666G64rkS9P
	LQQBMdscmZ7digvzePwicBmC5hmpBcNDAO0Tt8bnABSrONqnxoQdQjCrMyufMUDRMpv5+IgFdHwuj
	PFUeWDGBRIYA+ADYcl6sF5ZSvX00cDG14cNqDNTL9jjJwVWoUvkrm3dBX2kHW/umXUaIaWpSpsVTv
	W6MkfcDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXLi3-0062qe-Rw; Mon, 04 Oct 2021 11:00:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXLhp-0062lM-96
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:00:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mXLhj-0006QQ-EI; Mon, 04 Oct 2021 13:00:19 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, ukl@pengutronix.de,
 rcz@pengutronix.de
References: <20210830115156.21907-1-a.fatoum@pengutronix.de>
 <20210830115156.21907-2-a.fatoum@pengutronix.de>
 <20211004105605.GU28453@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <959faefc-afa0-241e-6124-034aa9071df6@pengutronix.de>
Date: Mon, 4 Oct 2021 13:00:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211004105605.GU28453@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_040025_370670_C7572636 
X-CRM114-Status: GOOD (  26.22  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/3] mci: imx-esdhc-pbl: support eMMC boot partitions
 on i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 04.10.21 12:56, Sascha Hauer wrote:
> On Mon, Aug 30, 2021 at 01:51:55PM +0200, Ahmad Fatoum wrote:
>> The i.MX header for SD/MMC starts at an offset to allow for a partition
>> table at offset 0. i.MX8MN/P bootrom did away with the offset for eMMC
>> boot partitions, which usually lack on-disk partition tables, but kept a
>> 32-byte offset for SD and eMMC user partitions.
>>
>> The i.MX8MN/P also introduced a ROM API that allows chainloading from
>> boot medium by calling back into ROM. This likely handles that
>> difference for us, but as we don't support it yet and we already have
>> the PBL eSDHC driver, teach it to detect whether boot is from eMMC boot
>> partition or not and use the appropriate offset.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> v1 -> v2:
>>   - new patch. Without, barebox can be written, but not booted.
>>     Tested on i.MX8MN.
>> ---
>>  drivers/mci/imx-esdhc-pbl.c | 39 ++++++++++++++++++++++++++++++++++++-
>>  1 file changed, 38 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
>> index e649eb8bbafb..66df4f6dfc74 100644
>> --- a/drivers/mci/imx-esdhc-pbl.c
>> +++ b/drivers/mci/imx-esdhc-pbl.c
>> @@ -25,6 +25,40 @@
>>  
>>  #define esdhc_send_cmd	__esdhc_send_cmd
>>  
>> +static u8 ext_csd[512] __aligned(64);
>> +
>> +static int esdhc_send_ext_csd(struct fsl_esdhc_host *host)
>> +{
>> +	struct mci_cmd cmd;
>> +	struct mci_data data;
>> +
>> +	cmd.cmdidx = MMC_CMD_SEND_EXT_CSD;
>> +	cmd.cmdarg = 0;
>> +	cmd.resp_type = MMC_RSP_R1;
>> +
>> +	data.dest = ext_csd;
>> +	data.blocks = 1;
>> +	data.blocksize = sizeof(ext_csd);
>> +	data.flags = MMC_DATA_READ;
>> +
>> +	return esdhc_send_cmd(host, &cmd, &data);
>> +}
> 
> Is this operation valid for SD cards as well? If not we would first have
> to know if we have a SD or eMMC card.

This has been tested on both SD and eMMC cards.
In SD case, esdhc_send_cmd will fail and esdhc_bootpart_active will
return false. In MMC case, it will succeed and result will be
evaluated.

> 
> Sascha
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

