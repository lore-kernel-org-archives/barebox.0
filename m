Delivery-date: Mon, 02 May 2022 18:02:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlYVL-006IN8-8J
	for lore@lore.pengutronix.de; Mon, 02 May 2022 18:02:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlYVI-0004DD-Lf
	for lore@pengutronix.de; Mon, 02 May 2022 18:02:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Adk04XKCIMF33Kim7S+NF8pT1vuWa4c+LKApGnSxEn4=; b=mIFLXqVTQfoACS
	T+V2nl04rNPw0lFZPoJ/8pSLhCMB+fcBHQDVydFBqiGh1vHFY5bkZCRL5xClsqNAQViaNOnQpo+10
	U8u7rVRMu3mp9ultBQmsSxEtUkEb/ZHInU0f6VoKJbzkQ9hNvU9PX3TXXI/Nx+FEtBwe9epDDc7px
	IB015sycxKSJ5UonjkcoThjzvhJ5c5xMcO9PVNs4nLbdDGeDCDbVofanZ8D4bkINHu2J3rfUAcVA8
	qolLAbUTFV0S80VsmhbBTAGkKXnsiRxHdJMGtaM1lxU+BlOqAwDNKX26j/hJE4036WweyvEuD/TQl
	XafjlGIaRf6BwE3L7sPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlYTe-001cH7-NQ; Mon, 02 May 2022 16:00:46 +0000
Received: from lx20.hoststar.hosting ([168.119.41.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlYTS-001c5n-OR
 for barebox@lists.infradead.org; Mon, 02 May 2022 16:00:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=emfend.at; 
 s=mail;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References
 :Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zxSGNdfALfG+IRkZLq7OPcwK/VbXoTWaVImeOznXbVA=; b=VL5biHH+OmvScIzku50yM9MoOx
 QATb6/J3nxhZEi1payGX9CeHejQVkWn4fj5TcQbe59v31zpDt5YOB1euyJC6P0dvB8uePJwH4oJU6
 VBLDm9EYUdf4CYTNHihrjCE9eJEYh2BN5RvM35pdINhgZncmPu0Stlb1gcx2BPq8BZ8Q=;
Received: from 194-208-208-245.tele.net ([194.208.208.245]:57443
 helo=[192.168.100.101])
 by lx20.hoststar.hosting with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 (Exim 4.93)
 (envelope-from <matthias.fend@emfend.at>)
 id 1nlYTM-000ifW-Te; Mon, 02 May 2022 18:00:29 +0200
Message-ID: <9be29417-c0c4-ea84-4f34-8d2c04ddf737@emfend.at>
Date: Mon, 2 May 2022 18:00:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220501182607.38125-1-matthias.fend@emfend.at>
 <20220502140052.GC2021@pengutronix.de>
From: Matthias Fend <matthias.fend@emfend.at>
In-Reply-To: <20220502140052.GC2021@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_090035_179158_415434E9 
X-CRM114-Status: GOOD (  25.73  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] firmware: zynqmp-fpga: do not load PL with ONLY_BIN flag
 unless necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

Am 02.05.2022 um 16:00 schrieb Michael Tretter:
> On Sun, 01 May 2022 20:26:07 +0200, Matthias Fend wrote:
>> Since pmu-fw release 2018.3, the ZYNQMP_FPGA_BIT_ONLY_BIN flag is no
>> longer used. This wasn't a problem for a while, but in newer versions a
>> validation sequence will fail if this flag is set. This means that the PL
>> can no longer be loaded.
>>
>> Do not set the ZYNQMP_FPGA_BIT_ONLY_BIN flag unless absolutely necessary
>> to avoid this problem.
> 
> Thanks for the patch.
> 
>>
>> Signed-off-by: Matthias Fend <matthias.fend@emfend.at>
>> ---
>>   drivers/firmware/zynqmp-fpga.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
>> index 63d7398fd..db34ac2be 100644
>> --- a/drivers/firmware/zynqmp-fpga.c
>> +++ b/drivers/firmware/zynqmp-fpga.c
>> @@ -261,9 +261,10 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
>>   		goto err_free_dma;
>>   	}
>>   
>> -	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
>> +	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) {
>> +		flags &= ~ZYNQMP_FPGA_BIT_ONLY_BIN;
> 
> I would prefer if the flag is initialized as unset and only set, if the
> bitstream does not have headers. This would be a lot clearer, than resetting
> the flag based on a version dependent feature flag with a different name.
> 
> If I understand correctly, the newer versions of the PMUFW don't support
> loading a bitstream without headers at all. Maybe we should have a feature
> flag for bitstreams without headers, but maybe it is enough to just let the
> PMUFW reject the bitstream in these cases.

I don't know if the PMU firmware now somehow support header-less 
bitstreams, but I can tell that it will fail in any case if this bit is set.
So, with recent versions, this bit simply never should be set.

Here is the check that will fail if this bit is set:
https://github.com/Xilinx/embeddedsw/blob/master/lib/sw_services/xilfpga/src/xilfpga.c#L643

Since I can't test the different combinations for old (pre-2018.3) PMU 
firmware, I would suggest leaving the bit set to avoid breaking something.

~Matthias

> 
> Michael
> 
>>   		buf_size = body_length;
>> -	else
>> +	} else
>>   		buf_size = addr + body_length;
>>   
>>   	status = mgr->eemi_ops->fpga_load((u64)addr, buf_size, flags);
>> -- 
>> 2.25.1
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

