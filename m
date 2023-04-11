Delivery-date: Tue, 11 Apr 2023 14:44:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmDLy-00HXJe-Hy
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 14:44:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmDLy-0001dv-50
	for lore@pengutronix.de; Tue, 11 Apr 2023 14:44:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WYTH7ngKFZ4cZmrGtcBhKqR1KYWgQCdqk4apQj3Bsr8=; b=XTtwbX6K8FSpcTpybGt/gmAewU
	UcOh2G+zN+rgPXWPdSIdO4GtR0votrpk794ca+k3qYI5OmNwLd2U9prqbvi7+dbzKqbY9NZ86xqEh
	tv6O1szplOAH0Q7psdgbj6ZJsYjD+WSGBGw0C4T4fLr3E4b7T8swFOwnlzVAO5jSI6p6u3Vzq1pK2
	YHTpa/US/iL4+ZR0i+YqrgDHkVlz721xmHh3hjm2I3Fz8J1XTZ/hEkH3U+79DI6xM09Qar9ne4rsp
	6sWz/fa3pBCrXJKqg1WP4ltjYDvGxLccgWU0K/AR3nVhLixV9mCzxq51yk4fYU6BGt8/trCgzXOM5
	RDJcHBjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDKs-00HaAw-0v;
	Tue, 11 Apr 2023 12:42:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDKn-00Ha9y-0O
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 12:42:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pmDKk-0001Yd-Cz; Tue, 11 Apr 2023 14:42:50 +0200
Message-ID: <3e9a6489-127b-e30c-9dc7-cd3666dc63b5@pengutronix.de>
Date: Tue, 11 Apr 2023 14:42:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20230327131218.247157-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230327131218.247157-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_054253_173748_FFD56923 
X-CRM114-Status: GOOD (  21.00  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: barebox environment: recommend a partition
 type GUID for GPT partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 27.03.23 15:12, Marco Felsch wrote:
> The partition type GUID was generated randomly. Having a defined GUID
> should reduce the risk of collisions in the future.
> 
> The GUID and a phandle reference to the storage medium could be used as
> replacement for device-path if the medium supports GPT.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  .../devicetree/bindings/barebox/barebox,environment.rst        | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> index 8a57bf1add..40239f424a 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> @@ -23,6 +23,9 @@ the path to the environment. Supported values for <type>:
>    be the label for MTD partitions, the number for DOS
>    partitions (beginning with 0) or the name for GPT partitions.
>  
> +If the *environmnet* is located in a GPT partition, use
> +``6C3737F2-07F8-45D1-AD45-15D260AAB24D`` as partition type GUID.
> +
>  The file-path is the name of a file located in a FAT filesystem on the
>  device named in device-path.  This filesystem will be mounted and the
>  environment loaded from the file's location in the directory tree.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



