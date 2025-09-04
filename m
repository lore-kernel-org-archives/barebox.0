Delivery-date: Thu, 04 Sep 2025 12:31:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu7Fv-0080OB-1v
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 12:31:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu7Fu-0000du-EZ
	for lore@pengutronix.de; Thu, 04 Sep 2025 12:31:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OF0NT16JYyICp5lsRBNyxEl6Se/+o32fSuPdT5y1YfU=; b=QQCDzIVHyeLii2X7USj4ZK8GeW
	v/+2xeJhASy/GxsV6yOabmwk63mlnUdR0WJ+ge5GiqbkPTWJNYkwhcSCH8bE9gmC6YmnTPi0uvsHE
	8vJV1imwN3d1EADCmV7i4g63CX4r6Y5nly5wjMm6tnWuRlqjk5DTHKHWFRiTqmVaEGAbxB+d7WY4I
	ACokwHzX4j0UrVmqBsZDoa+/mWIPcTGDmIFAiR2v2PYzKzF826waR5b8Hu6mKt5ycD0StV8Thf79r
	ZQKFI+gBceh2pRa4MsfwnfWTx3mTOw+bABEGlSJ3xuStCh4w2KiSfQBue62pOTf1MQfa8ZwmXnReJ
	xrWfzUtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7FT-0000000AuTY-45mB;
	Thu, 04 Sep 2025 10:31:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu6G6-0000000AYi3-0GvI
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 09:27:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu6G4-0004kf-PQ; Thu, 04 Sep 2025 11:27:56 +0200
Message-ID: <12f6e444-8538-446a-95a2-0558e32323d1@pengutronix.de>
Date: Thu, 4 Sep 2025 11:27:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250903124223.469449-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250903124223.469449-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_022758_115987_0804D65F 
X-CRM114-Status: GOOD (  15.74  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] powerpc: mpc5xxx: declare taskTable as array
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 9/3/25 2:42 PM, Sascha Hauer wrote:
> gcc15 rightfully complains about access outside array bounds in usage of
> taskTable:
> 
> arch/powerpc/mach-mpc5xxx/loadtask.c:37:43: error: array subscript 1 is outside array bounds of 'int[1]' [-Werror=array-bounds=]
> 
> Declare that variable as an array as that's what it actually is.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/powerpc/mach-mpc5xxx/loadtask.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/powerpc/mach-mpc5xxx/loadtask.c b/arch/powerpc/mach-mpc5xxx/loadtask.c
> index e2489983ee..9302cbdcdc 100644
> --- a/arch/powerpc/mach-mpc5xxx/loadtask.c
> +++ b/arch/powerpc/mach-mpc5xxx/loadtask.c
> @@ -13,12 +13,12 @@
>  #include <types.h>
>  
>  /* BestComm/SmartComm microcode */
> -extern int taskTable;
> +extern int taskTable[];
>  
>  void loadtask(int basetask, int tasks)
>  {
>  	int *sram = (int *)MPC5XXX_SRAM;
> -	int *task_org = &taskTable;
> +	int *task_org = taskTable;
>  	unsigned int start, offset, end;
>  	int i;
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



