Delivery-date: Tue, 07 Oct 2025 11:10:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63ie-005BzS-2Z
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:10:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63ic-00017q-Oc
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:10:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FroVP+hM/ycG+9X52Fj88+FUh8tXTJhHeV9yKuyZu/Y=; b=xL05PenHMNlW8mfhD7K6D9lYmi
	bt+vcGj5AZ76xDoghR1kCoVjSHaHVTLvJ7KII5uJOK2+lfwugOS4EkgDDS7o3SmmWQaJTny6G6hiR
	6Y+voeBqXH0sJENHItWr7FKrIc39Rl+DmqJkfGwBG9sEftqZ0PZaUkmXAu+EuiVN6IFLXnT2ioMXB
	xcBl0blc04FRsCcxEL8ANyL4dAKf6JBv/dPvlBx8UBC/jlf+nfgS9hyCBXaPdDHLvWrJWZ7JjAL04
	Ab75kQ0tWCqYUq+dzKeu5hfpqFzb2cI4VVKiZLLX87jKPbsgTv2Ug5/rHQyD6dDJPWAwFnWGyy8rb
	RPsdeQpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63iE-00000001g6r-0k2i;
	Tue, 07 Oct 2025 09:10:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63iA-00000001g4o-3K0d
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:10:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v63i9-0000tl-At; Tue, 07 Oct 2025 11:10:21 +0200
Message-ID: <79d5b0d2-1390-4a93-b89b-56cf540bbb10@pengutronix.de>
Date: Tue, 7 Oct 2025 11:10:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
 <20250929-tlv-integration-v2-5-55f75da7e670@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250929-tlv-integration-v2-5-55f75da7e670@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_021022_832677_50D7F709 
X-CRM114-Status: GOOD (  13.53  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/9] test: py: test_bootchooser: remove dead code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 9/29/25 10:03 AM, Jonas Rebmann wrote:
> This seems to have landed here by accident.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  test/py/test_bootchooser.py | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/test/py/test_bootchooser.py b/test/py/test_bootchooser.py
> index a5f2b25d65..bd8aee7399 100644
> --- a/test/py/test_bootchooser.py
> +++ b/test/py/test_bootchooser.py
> @@ -5,10 +5,6 @@ from .helper import globalvars_set, devinfo, getparam_int, \
>                      getstate_int, getenv_int
>  
>  
> -def fit_name(suffix):
> -    return f"/mnt/9p/testfs/barebox-{suffix}.fit"
> -
> -
>  def generate_bootscript(barebox, command, name="test"):
>      barebox.run_check(f"echo -o /env/boot/{name} '#!/bin/sh'")
>      barebox.run_check(f"echo -a /env/boot/{name} '{command}'")
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



