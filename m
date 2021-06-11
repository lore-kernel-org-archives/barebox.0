Delivery-date: Fri, 11 Jun 2021 14:15:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrg4H-0005xL-O8
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 14:15:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrg4G-0005yP-Rs
	for lore@pengutronix.de; Fri, 11 Jun 2021 14:15:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4ubnYczwtwyJAZjA14OrHbLKEKTquji5Vm4dRhHwQt4=; b=TQ5H+FFZD/fLQFKKx1M9tIHse7
	5DK/Cfq5xLNQcJYTxNIDzfOnbooivKeOCT8+DufYSS3PFqC7DBcm9Jf3rKH/x/+S1npSMLj9xiO23
	U1+YVt7meEUvkB1451RtmhjX1sEodGXllN1bq30nlXM1UgXz3iCmcTSgmXFGcItFfeO4+8U/XvDc3
	XfcvJul0bHuRyINFrDivYazPRaVXCnCBEG1UFUsikQAk0WYqax/EN3zDUwCWvVYZCwLYgxVqYQK0l
	j/8U8bFcUreiYhcjTQOS3oKxFp3oZt8/kvQEwOGcfQBfQcPNC5/nQ2LjuaXhGHWK2Zep/+na5qSHW
	wPNgnqNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrg3A-005DHK-Ld; Fri, 11 Jun 2021 12:14:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrg35-005DG1-Cp
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 12:14:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lrg33-0005jx-T6; Fri, 11 Jun 2021 14:14:05 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
 <20210602095507.24609-5-s.hauer@pengutronix.de>
 <6dde4130-1f96-d925-9e53-9f8c74d89a1f@pengutronix.de>
 <20210611084107.GC22904@pengutronix.de>
 <791dae7e-82b4-ae55-799d-8dd164b24f0c@pengutronix.de>
 <20210611114604.GD20470@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a16278e6-a694-46ff-d66a-c801823a40ae@pengutronix.de>
Date: Fri, 11 Jun 2021 14:14:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210611114604.GD20470@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_051407_469649_DDEA424C 
X-CRM114-Status: GOOD (  11.68  )
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
Subject: Re: [PATCH 04/24] clk: introduce struct clk_hw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 11.06.21 13:46, Sascha Hauer wrote:
>>> Where do I get this from?
>>
>> pip3 install tuxmake
> 
> Now it complains about missing podman... /me waits for Debian 11.

Alternatively dorp the --runtime=podman and install locally a RISC-V toolchain:
apt install gcc-riscv64-linux-gnu

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

