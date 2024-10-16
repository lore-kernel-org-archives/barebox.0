Delivery-date: Wed, 16 Oct 2024 12:00:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10pL-00517J-2l
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 12:00:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10pL-0006Kl-9E
	for lore@pengutronix.de; Wed, 16 Oct 2024 12:00:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eVxtGyHICxRIPDrq913BhprULnGj5gAqyi2vjqTPVXA=; b=dPXJ8tKLmzpuKGnWPzoZ5GJT1l
	4dkeGqEu3x/iBiN3bV7TsQMlZbogLgvx2F1x79cCMe/12udogEXhWdNiQq88LkkdTBW81jACxygs0
	5DxOEdc2fD5qHLpLNrirBZw/zzh3AQAiEESVWIcY1D5a5c/nJa68+PbjrhEiAcCQqnhAxsXvNwQ6U
	xT6BLoXhjoeDid0wzWb+Rcfing9Fz3J7lw5OmhrdBRUpcNCTPXRW5vM5bEhYeRAEKj/L9i+CPFTDb
	MLLgVfaT4l8dmtMzH5ltTnjY3T20zheI8g95Jk4KF5YVcqE4UFXkqcxXU+B17miVt64lZ/JGbvUY4
	txQdhU7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10oo-0000000BKy9-07ac;
	Wed, 16 Oct 2024 09:59:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t10lo-0000000BK9s-0FDS
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:56:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t10lm-000568-MI; Wed, 16 Oct 2024 11:56:42 +0200
Message-ID: <678bb4c0-f52b-458d-99ab-7cc06342c8ab@pengutronix.de>
Date: Wed, 16 Oct 2024 11:56:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yann Sionneau <ysionneau@kalrayinc.com>, barebox@lists.infradead.org
References: <20241016085543.3961965-1-a.fatoum@pengutronix.de>
 <bc43d89b-dc50-487c-b270-b5328ef26ba3@kalrayinc.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <bc43d89b-dc50-487c-b270-b5328ef26ba3@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_025644_137299_F76DFA88 
X-CRM114-Status: GOOD (  11.98  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] sandbox: add --command line support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Yann,

On 16.10.24 11:54, Yann Sionneau wrote:
> Hi Ahmad,
> 
> On 16/10/2024 10:55, Ahmad Fatoum wrote:
>> For easier non-interactive use of sandbox, let's add support to execute
>> arbitrary commands from the command line directly.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> Cc: Yann Sionneau <ysionneau@kalrayinc.com>
>> ---
> Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>
> 
> Thanks, good idea, this could allow arch or drivers to implement a cmdline mechanism.

It would be cool to have this for qemu-system-* -append, but I haven't figured out yet
how to access that in barebox yet.

Glad you like it,
Ahmad

> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


