Delivery-date: Sun, 04 Apr 2021 20:47:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lT7mR-0003GV-7r
	for lore@lore.pengutronix.de; Sun, 04 Apr 2021 20:47:27 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lT7mQ-00045l-Ge
	for lore@pengutronix.de; Sun, 04 Apr 2021 20:47:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CvHHHGbVslTLAjQC3GiQQUVxcp/hVjllaYVHLsViav0=; b=RJbluqAAIiGYGJodLDcsyaD2A
	K8VENQQWfx9XPl/OnHZWU6IUM25d/azVSrGVX2I1GqGxAKwB+VMXGmJSYMU2cxKdMygTjOeoNxFoR
	+gNeaoW8xNRfvHmi1C3u20waq3rk/9E9aZetDig8dhhFcLUL1EafmqPQH82n3cbjoGkLgPAN6kGk0
	wm7GDzqYL+UhQ6fzsDyu2iqKeWTb7T1zzoce2C16lR22jMKSdIiqlecfVmWmWyuR/Jw0XwAoM9S17
	sf7PyVMwZlyhdtqVhSj8ul0g4X0W0wdR30hHyUOuRTrkL9zmEb2cPqD2HaPT1FDX80OkarzsaqqQL
	r8aTFy45Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lT7lF-00G8k7-Cr; Sun, 04 Apr 2021 18:46:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lT7l9-00G8jj-Od
 for barebox@lists.infradead.org; Sun, 04 Apr 2021 18:46:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lT7l9-0003vt-1S; Sun, 04 Apr 2021 20:46:07 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Openrisc <openrisc@lists.librecores.org>,
 Stafford Horne <shorne@gmail.com>, Barebox <barebox@lists.infradead.org>
References: <20210304210747.3679483-1-shorne@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <bd106f14-c773-a4a8-2f43-2e269f4f04e4@pengutronix.de>
Date: Sun, 4 Apr 2021 20:46:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210304210747.3679483-1-shorne@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210404_194607_922295_79DA673F 
X-CRM114-Status: GOOD (  17.27  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: Add qemu instructions for OpenRISC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 04.03.21 22:07, Stafford Horne wrote:
> Most developers have qemu and rather not download and install the
> or1ksim.  Also, this adds details on how to get a openrisc toolchain.
> 
> Signed-off-by: Stafford Horne <shorne@gmail.com>

I don't see this in next.

> ---
>  Documentation/boards/openrisc.rst | 68 +++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards/openrisc.rst
> index f9d67f965..34586b4a7 100644
> --- a/Documentation/boards/openrisc.rst
> +++ b/Documentation/boards/openrisc.rst
> @@ -1,6 +1,74 @@
>  OpenRISC
>  ========
>  
> +Optaining an OpenRISC toolchain

Could you fix up s/Optaining/Obtaining/ while at it?

Cheers,

Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

